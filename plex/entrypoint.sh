#!/bin/bash
cd /home/container

# Replace startup variables
MODIFIED_STARTUP=$(eval echo "$STARTUP")
echo ":/home/container$ $MODIFIED_STARTUP"

# Execute the startup command
exec $MODIFIED_STARTUP
