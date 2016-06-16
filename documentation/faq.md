---
layout: page
title: FAQ
---

## FAQ

This is the FAQ for the Solo.  Please ask a question (at
info@solo-system.org) and I'll answer it.

-------

Sample-rate, bit-depth and number-of-channels are stored in the header
of the .wav file, as usual.


What software does it run?
--------------------------

Memory cards need to be "flashed" before use with the SSI (Solo
software image), and your personalised configuration options (if you
have any).  This process configures everything about the Solo's
operation, so there is no configuration in the field whilst deploying.

The Solo Software Image is based on a stock Raspbian Gnu/Linux
operating system, modified in several ways to make it do what is
needed of a Solo (detect the hardware clock and other boring things).

The audio recording is handled by custom software "amon", which runs
every minute (as a cron job) to ensure recording is proceeding as
planned.


Can I log in to the Solo and look around?
-----------------------------------------

If you are familiar with Linux you are welcome to log in and fiddle
(login=amon, password=amon). You'll need a USB-ethernet dongle (unplug
the microphone).  It'll pick up an IP address from your DHCP server
and appear on the network as hostname: solo.  I type "ssh solo -l
amon".  Once you are in, head for the "amon" directory and look
around.  All the code is on github, so if you have ideas, you can
send improvements or submit patches.  

Can I buy one?
--------------

Not from me, sorry.  All the software and design are open, so you can
build your own.  The assembly video shows you how, as does the getting
started guide.  


<hr>
