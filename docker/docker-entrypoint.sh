#!/bin/bash

# pip
pip install pip-tools
pip-compile requirements.in
pip-sync

# start service
exec "$@"
