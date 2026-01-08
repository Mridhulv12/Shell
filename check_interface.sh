#!/bin/bash

# Prompt user for interface name
read -p "Enter the network interface name (e.g., enp0s3): " iface

# Check if interface exists
if ! ip link show "$iface" &>/dev/null; then
    echo "Interface does not exist"
    exit 1
fi

# Check interface state
state=$(cat /sys/class/net/"$iface"/operstate)

if [ "$state" = "up" ]; then
    echo "Interface is up"
else
    echo "Interface is down"
fi

