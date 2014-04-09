#!/bin/bash
#
# Run this script to view your Tor hidden service hostname

echo "The following information is required to access the Tor hidden service"
echo "The Tor hidden service hostname is $(cat /var/lib/tor/hidden_service/hostname)"
echo "The admin account on the XMPP server is root@$(cat /var/lib/tor/hidden_service/hostname)"
echo "User account on the XMPP server will be username@$(cat /var/lib/tor/hidden_service/hostname)"
echo "To access the server from Tails, run: ssh root@$(cat /var/lib/tor/hidden_service/hostname)"
