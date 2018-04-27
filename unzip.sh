#!/bin/bash

if [ -z "$1" ];
then
    echo "No arguments supplied. Please provide some files to unzip."
    exit 1
fi

for f in "$@"
do
    unzip "$f" -d "$("echo $f" | sed 's/.zip//')"
done

exit 0
