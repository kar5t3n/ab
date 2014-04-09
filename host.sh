#!/bin/bash
#
# Run this script to view your Tor hidden service details

echo "Tor Hidden Service"
echo "Hostname: $(cat /var/lib/tor/hidden_service/hostname)"
echo "Admin Account: root@$(cat /var/lib/tor/hidden_service/hostname)"
