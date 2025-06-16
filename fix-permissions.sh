#!/bin/bash
#
echo "Fixing file permissions in current directory..."

# Make .sh files executable by owner only
chmod 700 *.sh 2>/dev/null
echo "Set 700 on all .sh files"

# Make .txt files readable by all, writable only by owner
chmod 644 *.txt 2>/dev/null
echo "Set 644 on all .txt files"

echo "All file permissions updated successfully." 
