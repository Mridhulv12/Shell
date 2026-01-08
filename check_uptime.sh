#!/bin/bash

# Get system uptime in seconds
uptime_seconds=$(awk '{print int($1)}' /proc/uptime)

# 1 hour = 3600 seconds
if [ "$uptime_seconds" -lt 3600 ]; then
    echo "System recently started"
else
    echo "System has been running for a while"
fi

