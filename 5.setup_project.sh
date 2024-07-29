#!/bin/bash

# Create a project directory
mkdir my_project
cd my_project

# Create subdirectories
mkdir scr docs tests

# Create some empty files
touch scr/main.py docs/README.md tests/tests_main.py

# Set permissions
chmod 755 src/main.py
chmod 644 docs/README.md

# List the directory structure
ls -R

# Show the file permissions
ls -l scr/main.py docs/README.md 
