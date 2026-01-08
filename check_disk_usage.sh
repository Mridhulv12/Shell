#!/bin/bash

# Get disk usage percentage of root filesystem
usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

# Check disk usage
if [ "$usage" -gt 90 ]; then
    echo "Disk usage high"
else
    echo "Disk usage normal"
fi

