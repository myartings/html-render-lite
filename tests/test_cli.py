#!/usr/bin/env python3

import json
import subprocess
import tempfile
import unittest
from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[1]
CLI = REPO_ROOT / "html-render-lite"


class HtmlRenderLiteCliTests(unittest.TestCase):
    def run_cli(self, *args, cwd=None, input_text=None):
        return subprocess.run(
            [str(CLI), *args],
            cwd=cwd or REPO_ROOT,
            input=input_text,
            text=True,
            capture_output=True,
            check=False,
        )

    def test_help_describes_public_interface(self):
        result = self.run_cli("--help")

        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("html-render-lite", result.stdout)
        self.assertIn("--template", result.stdout)
        self.assertIn("--fast", result.stdout)
        self.assertIn("--package", result.stdout)

    def test_template_lists_and_invalid_fast_template(self):
        normal = self.run_cli("--list")
        fast = self.run_cli("--list-fast")
        invalid = self.run_cli(
            "--fast",
            "--template",
            "missing-template",
            input_text="# Missing",
        )

        self.assertEqual(normal.returncode, 0, normal.stderr)
        self.assertIn("docs-page", normal.stdout)
        self.assertEqual(fast.returncode, 0, fast.stderr)
        self.assertIn("docs-page-warm-fast", fast.stdout)
        self.assertNotEqual(invalid.returncode, 0)
        self.assertIn("不存在", invalid.stderr)

    def test_missing_template_and_empty_input_fail(self):
        missing_template = self.run_cli(input_text="# Content")
        empty_input = self.run_cli("--template", "docs-page", input_text="")

        self.assertNotEqual(missing_template.returncode, 0)
        self.assertIn("--list", missing_template.stderr)
        self.assertNotEqual(empty_input.returncode, 0)
        self.assertIn("内容为空", empty_input.stderr)

    def test_fast_render_supports_stdin_and_file_input(self):
        with tempfile.TemporaryDirectory() as tmp:
            tmp_path = Path(tmp)
            stdin_out = tmp_path / "stdin.html"
            input_path = tmp_path / "source.md"
            file_out = tmp_path / "file.html"
            input_path.write_text("# File title\n\nFile body", encoding="utf-8")

            stdin_result = self.run_cli(
                "--fast",
                "--template",
                "docs-page-warm-fast",
                "--out",
                str(stdin_out),
                input_text="# Stdin title\n\nStdin body",
            )
            file_result = self.run_cli(
                "--fast",
                "--template",
                "docs-page-warm-fast",
                "--input",
                str(input_path),
                "--out",
                str(file_out),
            )

            self.assertEqual(stdin_result.returncode, 0, stdin_result.stderr)
            self.assertEqual(stdin_result.stdout, f"{stdin_out}\n")
            self.assertEqual(file_result.returncode, 0, file_result.stderr)
            self.assertEqual(file_result.stdout, f"{file_out}\n")
            for output in (stdin_out, file_out):
                html = output.read_text(encoding="utf-8")
                self.assertTrue(html.lstrip().startswith("<"))
                self.assertIn("</html>", html.lower())

    def test_fast_package_writes_content_and_provenance(self):
        with tempfile.TemporaryDirectory() as tmp:
            package = Path(tmp) / "package"
            result = self.run_cli(
                "--fast",
                "--template",
                "docs-page-warm-fast",
                "--package",
                str(package),
                "--caller",
                "stage-1-test",
                "--title",
                "Package title",
                input_text="# Package\n\nBody",
            )

            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertEqual(result.stdout, f"{package / 'output.html'}\n")
            self.assertEqual(
                {path.name for path in package.iterdir()},
                {"source.md", "output.html", "meta.json"},
            )
            meta = json.loads((package / "meta.json").read_text(encoding="utf-8"))
            self.assertEqual(meta["caller"], "stage-1-test")
            self.assertEqual(meta["title"], "Package title")
            self.assertEqual(meta["generator"], "html-render-lite")
            self.assertIn("</html>", (package / "output.html").read_text(encoding="utf-8").lower())

    def test_validate_and_fix_report_observable_results(self):
        with tempfile.TemporaryDirectory() as tmp:
            html_path = Path(tmp) / "deck-simple.html"
            html_path.write_text(
                "<!doctype html><html><body><div class=\"deck\"></div></body></html>",
                encoding="utf-8",
            )

            fix = self.run_cli(
                "--fix",
                str(html_path),
                "--template",
                "deck-simple",
            )
            validate = self.run_cli(
                "--validate",
                str(html_path),
                "--template",
                "deck-simple",
            )

            self.assertEqual(fix.returncode, 0, fix.stderr)
            self.assertIn("已修复", fix.stdout)
            fixed_html = html_path.read_text(encoding="utf-8")
            self.assertIn("keydown", fixed_html)
            self.assertEqual(validate.returncode, 0, validate.stderr)
            self.assertTrue(validate.stdout.strip())

    def test_normal_template_discovery_is_independent_of_cwd(self):
        with tempfile.TemporaryDirectory() as tmp:
            output = Path(tmp) / "agent-output.html"
            result = self.run_cli(
                "--template",
                "docs-page",
                "--out",
                str(output),
                cwd=tmp,
                input_text="# Outside repository\n\nBody",
            )

            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertIn("ID: docs-page", result.stdout)
            self.assertIn(str(output), result.stdout)


if __name__ == "__main__":
    unittest.main()
