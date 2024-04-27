#!/usr/bin/bash

#Words_In_Line file name.txt

if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

file="$1"

num_lines=$(wc -l < "$file")
num_words=$(wc -w < "$file")

echo "Lines: $num_lines"
echo "Words: $num_words"

