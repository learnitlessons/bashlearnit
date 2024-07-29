#!/bin/bash

# Enable error reporting
set -e

# Function to log messages
log_message() {
	echo "$(date): $1"
}

# Create the base directory if it doesn't exist
TMP_DIR="$HOME/bashlearnitlessons/tmp"
mkdir -p "$TMP_DIR"
log_message "Created directory: $TMP_DIR"

# Change to the temporary directory
cd "$TMP_DIR" 
log_message "Changed to directory: $TMP_DIR"

# Create some files with the content
for i in {1..3}; do
	echo "This is file $i" > "file$i.txt"
	log_message "Created file$i.txt"
done

# Create a directory with subdirectories
mkdir -p dir1/subdir1 dir1/subdir2
log_message "Created subdirectories: dir1/subdir1 dir1/subdir2"


# Create files in subdirectories
echo "Subdir1 file" > dir1/subdir1/subfile1.txt
log_message "Created file: dir1/subdir1/subfile1.txt"
echo "Subdir2 file" > dir1/subdir2/subfile2.txt
log_message "Created file: dir1/subdir2/subfile2.txt"

# Create a large file
dd if=/dev/zero of=largefile.bin bs=1M count=10
log_message "Created large file: largefile.bin"


# Create some hidden files
touch .hidden .hidden2
log_message "Created hidden files: .hidden1 .hidden2"

# Create files with different extensions
echo "Python script" > script.py
echo "Bash script" > script.sh
echo "<!DOCTYPE html><html><body>Hello</body></html>" > webpage.html
log_message "Created files with different extensions: script.py, script.sh, webpage.html"

# Create a symbolic linc
ln -sf file1.txt symlink_to_file1
log_message "Created symbolic link: symlink_to_file1 -> file1.txt"

log_message "Script execution completed"
echo "Temporary directory populated with example files and directories in $TMP_DIR"

# List the contents of the directory for verification
echo "Directory contents:"
ls -R "$TMP_DIR"
