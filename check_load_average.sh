#!/bin/bash

# Predefined threshold
THRESHOLD=2.0

# Get the 1-minute load average
load=$(uptime | awk -F'load average: ' '{print $2}' | awk -F',' '{print $1}')

# Compare load with threshold using bc (for floating-point comparison)
if (( $(echo "$load > $THRESHOLD" | bc -l) )); then
    echo "Warning: System load high ($load)"
else
    echo "System load normal ($load)"
fi

