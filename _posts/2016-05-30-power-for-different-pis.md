---
layout: post
title:  Power usage for different versions of the Raspberry Pi
date:   2016-05-30
---


Today I tried measuring power usage for different Solos, based on
different underlying Raspberry Pi hardware.

Three systems were tested, the A+, the B+ and the Pi-Zero.  The measured power usage was:


| A+   | 71mA  |  0.355 Watts  |
| B+   | 200mA |  1.000 Watts  |
| Zero | 82mA  |   0.410 Watts |



Each of the systems is shown below.

It could be that there are ways of shutting down all the extra hardware on the B+ that we don't use (USB and Ethernet), but I didn't try. (don't know how).

## A+ Result: 71mA at 5V = 0.355 Watts

[![measuring A+ power](/img/20160530_120029.jpg "A+ power usage" ){:.some-css-class style="width: 100%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/20160530_120029.jpg)



This result was lower than I'd imagined.  0.35 Watts is pretty low for
a fully running system, although not by battery/embedded
standards. This includes all the tricks I know to get power down to a
minimum on the A+


## B+ Result: 200mA @ 5V = 1.0 Watt

[![measuring B+ power](/img/20160530_115034.jpg "A+ power usage" ){:.some-css-class style="width: 100%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/20160530_115034.jpg)

By comparison with the A+, this is a big leap.  The Raspberry Pi B+
includes lots of hardware not on the A+; an ethernet port and a USB
hub.  These extra components need more power to run, obviously.  But
that's a lot more.


## Pi-Zero Result: 82mA @ 5V = 0.410 Watts

[![measuring A+ power](/img/20160530_185928.jpg "A+ power usage" ){:.some-css-class style="width: 100%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/20160530_185928.jpg)


