---
layout: post
title:  Power usage for different versions of the Raspberry Pi
date:   2016-05-30
---

## intro

I measured the power consumption of three different Solos.  They
differed in only one way: the underlying model of Raspberry Pi - I
used A+, the B+ and the Pi-Zero.

## setup

Each system was connected to an EC technology USB power bank through a
standard USB cable which had been interrupted on the positive line to
allow an ammeter to be inserted (Fluke 117).  Readings on the display
are milli-Amperes.  The voltage is 5V (cos it is USB bus power), but
this was not measured directly.  The battery back was full, and showed
no loss of charge over the period of the measurements (on it's little
LEDs)

The Solos were in normal operating mode - recording at 16kHz, mono,
16bit - writing to the memory-card.  The memory card was the same
thhroughout, and although the microphones are different individuals,
they are the same make and model.

## results

| Hardware | current draw| power usage|
|  | milli-amps | watts | 
| A+   | 71mA  |  0.355 Watts  |
| B+   | 200mA |  1.000 Watts  |
| Zero | 82mA  |   0.410 Watts |
{:.mytable }

Each of the systems is shown below next to a photo of the setup.

## conclusion.

The A+ model uses least power (0.35W), the Zero 15% more (0.41W), but
the B+ is an embarrassingly thirsty 1.0W - about 3 times the power
consumption of the A+.

Given that the A+, in field tests, achieves about 5.5 days of
recordings from this EC power bank, we should expect the B+ to see
under 2 days worth.

The B+ has a lot of unnecessary hardware running, that we don't use;
the USB hub and ports, and the ethernet port, for example.  It could
be that there are ways of shutting down all this extra hardware on the
B+ but I didn't try because I don't know how.  ("echo off > /sys/class/bus/usb/power" or something?)

Note: you need to solder pin headers onto the pi-zero to get it to
connect to the Cirrus Logic Audio Card.  The other Pi versions come
with pin headers already attached when you buy it.

<hr>

## photos

## Result: A+ uses 71mA @ 5V = 0.355 Watts

[![measuring A+ power](/img/20160530_120029.jpg "A+ power usage" ){:.some-css-class style="width: 100%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/20160530_120029.jpg)

This result was lower than I'd imagined.  0.35 Watts is pretty low for
a fully running system, although not by battery/embedded
standards. This includes all the tricks I know to get power down to a
minimum on the A+


## Result: B+ uses 200mA @ 5V = 1.0 Watt

[![measuring B+ power](/img/20160530_115034.jpg "A+ power usage" ){:.some-css-class style="width: 100%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/20160530_115034.jpg)

By comparison with the A+, this is a big leap.  The Raspberry Pi B+
includes lots of hardware not on the A+; an ethernet port and a USB
hub.  These extra components need more power to run, obviously.  But
that's a lot more.


## Result: Pi-Zero uses 82mA @ 5V = 0.410 Watts

[![measuring A+ power](/img/20160530_185928.jpg "A+ power usage" ){:.some-css-class style="width: 100%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/20160530_185928.jpg)


