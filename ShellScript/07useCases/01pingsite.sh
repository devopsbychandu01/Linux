#!/bin/bash

# Usage: ./pingsite.sh [hostname or IP]
# Example: ./pingsite.sh google.com

# Check if a hostname was provided
if [ -z "$1" ]; then
    echo "Usage: $0 google.com"
    exit 1
fi

TARGET=$1
PING_COUNT=4

echo "Pinging $TARGET with $PING_COUNT packets..."

# Ping the target
ping -c $PING_COUNT $TARGET > /dev/null 2>&1

# Check the exit status of ping command
if [ $? -eq 0 ]; then
    echo "$TARGET is online."
else
    echo "$TARGET is offline or unreachable."
fi
