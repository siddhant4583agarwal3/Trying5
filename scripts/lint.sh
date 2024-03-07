#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run safety check -i 39462 -i 40291
poetry run bandit -c pyproject.toml -r Trying5/
poetry run isort --check --diff Trying5/ tests/
poetry run black --check Trying5/ tests/
poetry run flake8 Trying5/ tests/
poetry run mypy \
           --install-types \
           --non-interactive \
           Trying5/
#  https://mypy.readthedocs.io/en/stable/running_mypy.html#library-stubs-not-installed
