#!/usr/bin/env bash
set -euo pipefail

python3 -m venv .venv
. .venv/bin/activate

python3 -m pip install pip --upgrade
python3 -m pip install -r requirements.txt --upgrade
