#!/bin/bash

# Prompt user for a number
read -p "Enter a number: " num

# Check if input is a valid number (optional but good practice)
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Please enter a valid integer"
    exit 1
fi

# Check the number
if [ "$num" -gt 0 ]; then
    echo "Positive"
elif [ "$num" -lt 0 ]; then
    echo "Negative"
else
    echo "Zero"
fi

