#!/usr/bin/bash

echo "Enter source file:"
read source_file

echo "Enter destination file:"
read destination_file

# Check if source file exists
[ ! -f "$source_file" ] && echo "Error: Source file '$source_file' does not exist." && exit 1

# Check if destination directory exists
[ ! -d "$(dirname "$destination_file")" ] && echo "Error: Destination directory '$destination_file' does not exist." && exit 1

# Perform the copy operation
cp "$source_file" "$destination_file" && echo "File '$source_file' copied successfully to '$destination_file'." || echo "Error: Copying failed."
