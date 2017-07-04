#!/bin/bash
set -e

if [ "$1" = 'RunIt' ]; then
    exec "/usr/bin/xvfb-run python test/test_google.py"
else
    exec "$@"
fi