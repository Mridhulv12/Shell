#!/bin/bash
read -p "Enter the filename: " filename
if [ ! -f "$filename" ]; then
    echo "Error: File '$filename' not found!"
    exit 1
fi
read -p "Enter the word to count: " word
count=$(grep -oiw "$word" "$filename" | wc -l)

echo "The word '$word' appears $count times in the file '$filename'."

