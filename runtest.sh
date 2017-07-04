#!/bin/bash
set -e

if [ "$1" = 'RunIt' ]; then
    exec "/bin/echo $1"
else
    exec "$@"
fi


