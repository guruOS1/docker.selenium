#!/bin/bash
set -e

DisplayNum=99

if [ "$1" = 'WithoutParameters' ]; then
    Xvfb :${DisplayNum} &
    export DISPLAY=:${DisplayNum}
    exec /usr/bin/python /work/test/test_google.py
else
    exec "$@"
fi