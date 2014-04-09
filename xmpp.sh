#!/bin/bash
#
# Run this script to install and
# configure a Tor hidden service
# and Prosody XMPP server.
# SSH (Port 22)
# XMPP (Ports 5222 & 5269)

echo "Checking the network connection"

ping -c 3 torproject.org

echo "Installing Tor"

pacman -S tor

echo "Backing up original torrc"

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

pacman -S prosody lua51-sec

echo "Generating encryption keys"

prosodyctl cert generate $(cat /var/lib/tor/hidden_service/hostname)

cp /var/lib/prosody/*.key /etc/prosody/certs/

cp /var/lib/prosody/*.crt /etc/prosody/certs/

echo "Backing up original configuration"

mv /etc/prosody/prosody.cfg.lua /etc/prosody/prosody.cfg.lua.ORIG

cat > /etc/prosody/prosody.cfg.lua << __PROSODY__
#config here
__PROSODY__

echo "Enabling Prosody to be started on bootup"

systemctl enable prosody

echo "Starting Prosody"

systemctl start prosody

echo "Checking Prosody status"

systemctl status prosody

echo "Congratulations! To view your hostname, run:"
echo "./host.sh "
