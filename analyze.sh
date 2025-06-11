#!/bin/bash
#
#  Ask user for the file to analyze
echo "Enter the name of the file to analyze:"
  read filename

# Show first 3 lines
echo -e "\n---First 3 lines---"
head -n 3 "$filename"

# Show last 3 lines
echo -e "\n---Last 3 lines---"
tail -n 3 "$filename"

# Count lines, words, characters
echo -e "\n---File Statistics---"
wc "$filename"

# Ask for keyword to search
echo -e "\nEnter a word to search:"
read word

# Search using grep
echo -e "\n---Lines containig '$word'---"
grep --color=auto "$word" "$filename"
