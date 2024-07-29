#!/bin/bash

# Display script name and current date/time

echo "Running script $0"
echo "Current date and time: $(date)"

# Ask for user input"
echo "Enter your name: "
read username

echo "Hello, $username! Welcome to the file operations script"

# Create a new directory with timestamp
timestamp=$(date +%Y%m%d_%H%M%S)
new_dir="my_file_$timestamp"
mkdir "$new_dir"

# Changing to the new dir
cd "$new_dir"

# Creating several files 
touch file1.txt file2.txt file3.txt

# Set permissions
chmod 644 file1.txt
chmod 755 file2.txt

# Display file permissions
echo "File permissions: "
ls -l

# Copy a file
cp file2.txt old_file2.txt

# Modify .bashrc file (always add the alias)
echo "alias list='ls -la'" >> ~/.bashrc
echo "Alias list added to .bashrc. Please, run 'source ~/.bashrc' to apply changes"

# Display final directory structure
echo "Final directory structure: "
ls -R ..

# Return to the original directory
cd ..

# Display the script stats
echo "Script execution summary: "
echo "Number of arguments passed: $# "
echo "All argument passed: $@ "
echo "Exit status of last command: $? "

echo "Script comleted!"















