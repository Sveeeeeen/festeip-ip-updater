#!/bin/bash

# Check FIP_HOSTNAME
if [ ! -n "$FIP_HOSTNAME" ]; then
    echo "Your need to supply the FIP_HOSTNAME!"
    exit 1
fi

# Check FIP_PASSWORD
if [ ! -n "$FIP_PASSWORD" ]; then
    echo "Your need to supply the FIP_PASSWORD!"
    exit 1
fi

#Check FIP_INTERVAL
if [ ! -n "$FIP_INTERVAL" ]; then
    FIP_INTERVAL=5m
fi

# Loop loop loop...
while true
do
	echo "Press [CTRL+C] to stop.."
	sleep $FIP_INTERVAL
done