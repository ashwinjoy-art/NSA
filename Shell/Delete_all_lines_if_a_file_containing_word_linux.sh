#!/usr/bin/bash

echo "Enter the path of the file:"
read file

if [ ! -f "$file" ]; then
    echo "Error: File '$file' does not exist."
    exit 1
fi

# Create a temporary file
tmp_file=$(mktemp)

# Filter lines that do not contain the word "linux" and write them to the temporary file
grep -v "linux" "$file" > "$tmp_file"

# Overwrite the original file with the content of the temporary file
mv "$tmp_file" "$file"

echo "Lines containing 'linux' have been removed from $file."
