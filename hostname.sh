#!/bin/bash
#
# Run this script to view your Tor hidden service details

echo "Tor hidden service"
echo "Hostname: $(cat /var/lib/tor/hidden_service/hostname)"
echo "Admin account: root@$(cat /var/lib/tor/hidden_service/hostname)"
