Raspberry Pi Installation
==
<b>Installing Arch Linux Arm on the Raspberry Pi SD card</b>

Download the zip file containing the dd image

<pre><code>wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-latest.zip</code></pre>

Unzip the file

<pre><code>unzip ArchLinuxARM-rpi-latest.zip</code></pre>

Write this image to the target SD card. The SD card will need to be 4GB or larger.

Replacing sdX with the location of the SD card, run:

<pre><code>dd bs=1M if=<i>/path/to/</i>ArchLinuxARM*.img of=/dev/sd<i>X</i></code></pre>

Eject the card from your computer, insert into the Raspberry Pi, and power it on.

The default username is 'root' with a password 'root'

For more detailed information, visit http://archlinuxarm.org/platforms/armv6/raspberry-pi and http://www.raspberrypi.org/documentation/installation

==
<b>Configure the system</b>

Configure the keyboard

<pre><code>loadkeys <i>uk</i></code></pre>

Update the system

<pre><code>pacman -Syu</code></pre>

Install "unzip"

<pre><code>pacman -S unzip</code></pre>

Change the password

<pre><code>passwd</code></pre>

Reboot

<pre><code>reboot</code></pre>

==
<b>Install the Tor Hidden Service</b>

Login as 'root' with the new password

Download the "master.zip"

<pre><code>wget https://github.com/kar5t3n/ab/archive/master.zip</code></pre>

Unzip the archive

<pre><code>unzip master.zip</code></pre>

Change to the ab-master directory

<pre><code>cd ab-master/</code></pre>

Change permissions

<pre><code>chmod 744 *.*</code></pre>

Install and configure Tor Hidden Service

<pre><code>./TorHiddenService.sh</code></pre>

Record the Hidden Service Address

<pre><code>
Retreivinig Hidden Service Address.
!!! THIS IS IMPORTANT !!!
**********************
<i>.onion</i>
**********************
!!! THIS IS IMPORTANT !!!
Please record Hidden Service Address.
</code></pre>

==
<b>Retreivinig Hidden Service Address</b>

Login as 'root' with the new password and run

<pre><code>cat /var/lib/tor/hidden_service/hostname</code></pre>

<pre><code></code></pre>


