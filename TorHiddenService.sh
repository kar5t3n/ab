#!/bin/bash
#
# Run this script to install Tor
# and configure a Hidden Service
# for SSH (Port 22) and
# XMPP (Ports 5222 & 5269)

echo "Checking the network connection"

ping -c 3 torproject.org

echo "Installing Tor"

pacman -S tor

echo "Backing up torrc"

mv /etc/tor/torrc /etc/tor/torrc.ORIG

echo "Configuring Hidden Service"

cat > /etc/tor/torrc << __TORRC__
Log notice syslog
DataDirectory /var/lib/tor
HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 22 127.0.0.1:22
HiddenServicePort 5222 127.0.0.1:5222
HiddenServicePort 5269 127.0.0.1:5269
__TORRC__

echo "Enabling Tor to be started on bootup"

systemctl enable tor

echo "Starting Tor"

systemctl start tor

echo "Checking Tor status"

systemctl status tor

echo "Congratulations! To view your hostname, run:"
echo "./hostname.sh "
