#!/usr/bin/env bash
set -euo pipefail

# End-to-end release validation: code quality + build + package metadata checks.
bash scripts/ci-check.sh
python -m build
twine check dist/*
