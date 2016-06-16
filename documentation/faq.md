---
layout: page
title: FAQ
---

Introduction
------------

This is the FAQ for the Solo.  Questions, answers and some ranting.

-------

Sample-rate, bit-depth and number-of-channels are stored in the header
of the .wav file, as usual.


What size memory card should I use?
-----------------------------------

Depends on your sample rate, and how long you want to record for.

Here's a table of OPTIMISTIC values, ignoring the 2 notes below.
Number of days recording you'll get at the given sample rate for
various memory card sizes.

|  SDcard  | 16kHz  |   44.1kHz |
|-------| -----  |   ------- |
|32Gb	|  14d   |   4.4d    |
|64Gb	|  28d   |   8.4d    | 
|128Gb	|  55d   |   17d     |
|256Gb	|  110d	 |   34d     |

NOTE-1: memory cards need to be flashed with the SSI (solo software
image).  This uses between 1-2 GB of space on a memory card, reducing
the amount left for audio recordings.  

NOTE-2: manufacturers often quote in powers of 1000 rather than powers
of 1024 (Giga-bytes versus Gibi-bytes).  This leads to a discrepancy
too, and is why cards often seem to have less capacity than
advertised.  Caveat emptor.

Another way of looking at it is "how much data is collected per hour?"

|sample-rate | calculation | daily disk requirement |
|------------|-------------|------------------------|
|  16kHz     |(x2x60x60x24)|     2.8Gb per day.     |
| 44.1kHz    |(x2x60x60x24)|     7.6GB per day.     |


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
