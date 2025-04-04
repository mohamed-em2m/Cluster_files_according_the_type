# Cluster Files by File Type

This Bash script organizes files in a specified directory by clustering them into folders based on their file extensions.

## Features

- **Validation:** Checks if a folder path is provided and whether it is a valid directory.
- **Automation:** Automatically creates folders for each unique file extension found.
- **Organization:** Moves files into corresponding folders based on their file types.

## Usage

1. **Make the script executable** (if not already):

   ```bash
   chmod +x your_script.sh

    Run the script with the path to the directory you want to organize:

    ./your_script.sh <folder_path>

    Replace <folder_path> with the path to the target directory.

How It Works

    Input Validation: The script first checks that exactly one argument (the folder path) is provided and that the path is a valid directory.

    Iteration: It then iterates through each file in the directory.

    File Clustering: For every file, the script extracts the file extension, creates a folder with that name if it doesn’t exist, and moves the file into the respective folder.

    Completion Message: Finally, it prints a message indicating that the files have been clustered.

Example

Assume you have the following files in your directory:

document.txt
image.jpg
script.sh

After running the script:

./your_script.sh /path/to/your/directory

The directory structure will be organized as follows:

txt/document.txt
jpg/image.jpg
sh/script.sh

Requirements

    A Unix-based system with Bash installed.

    Basic permissions to create directories and move files in the specified directory.

