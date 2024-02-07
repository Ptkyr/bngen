#!/bin/bash

if [ ${#} -ne 1 ]; then
    echo "Usage: run.sh [<>.bif]" >&2
    exit 1
fi

make build
~/bngen/Main.native mappl ${1}
