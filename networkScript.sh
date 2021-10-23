#!/bin/bash

# holds the ip address for the system
# the ip address is found through piping the ifconfig through the a grep
# command, and lastly piping through an awk command
ipAddr=$(ifconfig ens33 | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" | awk 'BEGIN{ RS = "" ; FS = "\n" }{print $1}')

echo "IP Address " $ipAddr

# holds the ip address of the default gateway
# the address is found through a grep command
defaultGatewayAddr=$(grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" /etc/resolv.conf)

echo "Default Gateway " $defaultGatewayAddr
