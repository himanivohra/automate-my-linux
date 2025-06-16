#!/bin/bash
#
#  Ask user for a file name
echo "Enter the file name to create:"
read fname

# Create file
touch "$fname"
echo "$fname created."

# Add content to file
echo "This file was created by a Bash script." > "$fname"

# Show file content
echo -e "\n--- File Content ---"
cat "$fname"

# Copy to backup
cp "$fname" "${fname}.bak"
echo "Backup created as ${fname}.bak"

# Rename file
mv "$fname" "${fname}_renamed.txt"
echo "$fname renamed to ${fname}_renamed.txt"

# Delete backup
rm "${fname}.bak"
echo "Backup ${fname}.bak deleted"

# Final file type
file "${fname}_renamed.txt"
