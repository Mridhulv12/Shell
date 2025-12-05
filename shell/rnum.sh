#!/bin/bash
while true
do
    read -p "Enter a number: " num

    if [ "$num" -eq 3 ] 2>/dev/null; then
        echo "Matched with 3! Exiting..."
        break
    else
        echo "Not matched. Try again!"
    fi
done

