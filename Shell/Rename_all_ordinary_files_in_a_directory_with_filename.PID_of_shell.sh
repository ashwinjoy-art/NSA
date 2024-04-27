#!/usr/bin/bash

# Get the PID of the current shell
pid=$$

# Get a list of ordinary files in the current directory
files=$(ls -p | grep -v /)

# Loop through each file and rename it
for file in $files; do
    # Get the extension of the file, if any
    extension="${file##*.}"
    
    # Extract the filename without the extension
    filename="${file%.*}"
    
    # Construct the new filename with the PID appended
    new_filename="${filename}.${pid}"
    
    # If the file already exists with the new name, add a number suffix
    while [ -e "$new_filename.$extension" ]; do
        new_filename="${new_filename}_1"
    done
    
    # Rename the file
    mv "$file" "$new_filename.$extension"
    echo "Renamed $file to $new_filename.$extension"
done
