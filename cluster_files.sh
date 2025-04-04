#!/bin/bash

# Check if a folder path is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <folder_path>"
    exit 1
fi

folder_path="$1"

# Check if the provided path is a directory
if [ ! -d "$folder_path" ]; then
    echo "$folder_path is not a valid directory."
    exit 1
fi

# Navigate to the specified directory
cd "$folder_path" || exit

# Create an array to hold unique file extensions
declare -A file_types

# Iterate through files in the directory
for file in *; do
    # Check if the item is a file
    if [ -f "$file" ]; then
        # Extract the extension
        extension="${file##*.}"
        
        # Check if a directory for the file type already exists
        if [ ! -d "$extension" ]; then
            mkdir "$extension"
        fi
        
        # Move the file to the corresponding directory
        mv "$file" "$extension/"
    fi
done

echo "Files clustered by file type in $folder_path."

