---
layout: post
title:  "New software (SOSI) release - Calendar and USB mics"
date:   2016-09-19
categories: documentation

---

A new version of the SOSI software that runs the Solo recorder is
out. [Download](http://www.solo-system.org/sosi) it for free.

There are several important additions.

* Calendar function.  Calendar mode allows the user to define at what
  times of day/week recording can take place.  This will be of use to
  those who only want to collect at certain times of day, or want to
  get away with smaller memory cards.  Particularly for Bat
  monitoring, where the data-rates are high, this will be useful.
  See more at (documentation/calendar.html)

* USB microphones supported.  The Solo can now operate without the
  CLAC (Cirrus Logic Audio Card) if, instead, you provide a USB
  microphone.  Only 2 have been explicitly supported - the Dodotronic
  UltraMic 200kHz, and the Blue Snowflake.  It should be possible to
  add others.  See [here](/documentation/devices.html) for more information
  on the Solo:usbmic device, and how it differs from the Solo:basic.

* Configuration file cleanups: If you previously used CLAC_SAMPLERATE
  and CLAC_CHANNELS in your amon.conf file, please change these to
  simply SAMPLERATE and CHANNELS.  

* Many small fixes, and upgrades, including a new kernel (4.4.14+),
  which nobody except the author typing this cares about.

