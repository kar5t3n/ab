#!/bin/bash
#
# Run this script to view your Tor hidden service details

echo "NOTE: You need make a secure record of the following details for future reference. DO IT NOW!"
echo "Hostname: $(cat /var/lib/tor/hidden_service/hostname)"
echo "Admin Account: root@$(cat /var/lib/tor/hidden_service/hostname)"
