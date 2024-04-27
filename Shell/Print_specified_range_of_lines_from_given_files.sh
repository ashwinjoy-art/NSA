#!/usr/bin/bash

echo "Enter the path of the directory:"
read directory

if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' does not exist."
    exit 1
fi

# List the contents of the directory with details and format in Windows style
ls -l --color=never "$directory" | awk '{printf "%-30s %10s %10s %s\n", $9, $5, $6, $7}'
