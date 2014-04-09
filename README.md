ab
==
http://archlinuxarm.org/platforms/armv6/raspberry-pi

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
