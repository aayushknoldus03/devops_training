#!/bin/bash


# Set threshhold percentage for disk usage

THRESHOLD=80

# Get disk usage percentage for root "/"
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [[ "$USAGE" -ge "$THRESHOLD" ]]; then
	echo "diskage user is at $USAGE on $(hostname)"
else
	echo "disk usage is normal : $USAGE"
fi
