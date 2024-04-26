#!/bin/bash

#if [ ${#} -ne 1 ]; then
#    echo "Usage: run.sh [<>.bif]" >&2
#    exit 1
#fi

make build
for file in $(ls bayesian-networks/*.bif) 
do
    ~/bngen/Main.native mappl ${file} > ${file}.mappl
done
