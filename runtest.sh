#!/bin/bash
set -e

if [ "$1" = 'RunIt' ]; then
    exec "echo $1"
else
    exec "$@"
fi


