#!/bin/bash
set -e

DisplayNum=0

if [ "$1" = 'WithoutParameters' ]; then
    export DISPLAY=:${DisplayNum}
    Xvfb ${DISPLAY} -screen 0 1024x768x16 &
    fluxbox &
    x11vnc -display ${DISPLAY} -forever -bg -nopw -xkb
    exec /usr/bin/python /work/test/test_google.py
else
    exec "$@"
fi
