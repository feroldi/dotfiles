#!/bin/bash

source ../installation-util.sh

ensure_has_commands curl python

get_poetry_url=https://install.python-poetry.org

# Installs latest poetry, and automatically modifies profile files to add poetry to PATH.
curl -sSL $get_poetry_url | python3 -
