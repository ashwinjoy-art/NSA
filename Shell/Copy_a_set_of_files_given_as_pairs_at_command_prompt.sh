#!/usr/bin/bash

if [ "$#" -eq 0 ] || [ "$(( $# % 2 ))" -ne 0 ]; then
    echo "Usage: $0 <source_file1> <destination_file1> [<source_file2> <destination_file2> ...]"
    exit 1
fi

while (( "$#" )); do
    cp "$1" "$2"
    echo "Copied '$1' to '$2'."
    shift 2
done
