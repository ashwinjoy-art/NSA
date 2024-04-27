#!/usr/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file1> [<file2> ...]"
    exit 1
fi

for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "Error: File '$file' does not exist."
        continue
    fi
    
    echo "Word count in $file:"
    awk '{ for(i=1;i<=NF;i++) words[$i]++ } END { for(word in words) print word, words[word] }' "$file" | sort -k2 -rn
    echo "--------------------------------------"
done
