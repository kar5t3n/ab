#!/bin/bash
#
# Run this script to view your Tor hidden service hostname

cat /var/lib/tor/hidden_service/hostname

echo "The admin account on the XPMM server is root@$(cat /var/lib/tor/hidden_service/hostname)"
