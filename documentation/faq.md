---
layout: page
title: FAQ
---

Introduction
------------

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
around.  All the code is open source, so if you have ideas, you can
send improvements or submit patches.  

Can I buy one?
--------------

Not from me, sorry.  All the software and design are open, so you can
build your own.  I have build a few for colleagues and friends at no
charge - but they were _very_ kind and asked politely.  I'd do it for
a yacht, I suppose - but only a really nice yacht.

If you are really interested I'll be as helpful as I can to get you
going.


How much does it cost?
----------------------

You can't do it for less than about 150 UK pounds (230 US dollars)
including waterproof enclosure, 5.5 day battery and 64Gb memory card.
The parts list is elsewhere in this FAQ.


What components do I need?
--------------------------
raspberry pi model A or A+
real time clock.
Microphone (any USB - good quality is "Blue Snowflake")
reboot switch
enclosure for Raspberry Pi.
memory card
Battery


How does it know the time
-------------------------
It's got a small clock (RTC) attached which keeps time even when Solo is disconnected from power.


Which version of the Raspberry Pi should I use.
-----------------------------------------------

The low-power ones - so model A (now quite old), model A+ (newer
version with different form factor). Both of these devices has only
one USB socket and _no_ ethernet connector - this gives a big drop in
power consumption.

You can use the "B" or "B+" too if you like, but they consume much
more power so are not suited to battery operation.


Glossary
--------
Glossary - where things should be defined.

<hr>
