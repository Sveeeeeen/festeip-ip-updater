#!/bin/bash

# Check FIP_HOSTID
if [ ! -n "$FIP_HOSTID" ]; then
    echo "Your need to supply the FIP_HOSTID!"
    exit 1
fi

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
    set -x
	
    # get fancy
    curl "https://$FIP_HOSTID:$FIP_PASSWORD@members.feste-ip.net/nic/update?hostname=$FIP_HOSTNAME"
	
    set +x
    sleep $FIP_INTERVAL
done