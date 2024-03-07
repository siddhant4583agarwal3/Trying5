#!/bin/bash
set -euxo pipefail

poetry run isort Trying5/ tests/
poetry run black Trying5/ tests/
