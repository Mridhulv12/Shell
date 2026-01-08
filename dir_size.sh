#!/bin/bash

echo "Enter directory name:"
read dir

if [ ! -d "$dir" ]; then
    echo "Directory does not exist"
    exit 1
fi

size=$(du -sh "$dir" | awk '{print $1}')
echo "Total size of '$dir' is: $size"

