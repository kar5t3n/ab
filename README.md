ab
==

http://archlinuxarm.org/platforms/armv6/raspberry-pi

Download the zip file containing the dd image

<pre><code>wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-latest.zip</code></pre>

<pre><code>wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-latest.zip.md5</code></pre>

Write this image to the target SD card. The SD card will need to be 4GB or larger.

Replacing sdX with the location of the SD card, run:

<pre><code>dd bs=1M if=<i>/path/to/</i>ArchLinuxARM*.img of=/dev/sd<i>X</i></code></pre>

Eject the card from your computer, insert into the Raspberry Pi, and power it on.

The default username is 'root' with a password 'root'

==
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
Download the "master.zip"

<pre><code>wget https://github.com/kar5t3n/ab/archive/master.zip</code></pre>
