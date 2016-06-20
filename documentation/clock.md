---
layout: documentation
permalink: "/documentation/clock.html"
layout: page
title:  "Clock"
---

# Setting the clock

The date and time need to be set whenever the clock module's tiny
battery is replaced.  This is done by attaching the Solo to a computer
network, and leaving it to syncronise the clock module to "internet
time", which it will do automatically after 15 minutes.  The time is
then remembered by the clock module for several years until it's
battery runs out again.


## Set the clock (NEW WAY as of June 14th 2016)

The steps are:

* Locate a [USB to ethernet
  adapter](https://www.amazon.co.uk/s/ref=nb_sb_noss?field-keywords=USB+ethernet)
  and an ethernet [network
  cable](https://www.amazon.co.uk/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=ethernet+patch+cable&rh=i%3Aaps%2Ck%3Aethernet+patch+cable)

* connect the ethernet cable to the ethernet-USB adapter, and then
  into a network socket (if you are in an office), or directly into
  your broadband/DSL router (if you are at home).  The network will
  need to have a DHCP server running - home networks always have this,
  office ones may not.  With the Solo powered OFF, attach the
  USB-ethernet to the USB socket on your Solo.

* place a freshly flashed memory card into the Solo, and turn it on.
  The Solo will boot and join the network.

* after 15 minutes the Solo will automatically consult the internet
  for the time and date, and set the clock module.

* after 15 minutes the clock wil be set, and the Solo can be powered
  off.  The Solo now has the correct date and time and is ready for
  it's first proper run as a recorder.

* note: this process is independent of the timezone - so don't worry
  about setting that in boo/solo/solo.conf

* Note that there is currently _no_ indication that the time has been
  correctly set.  Just wait, and then do a test run without
  networking, to see if the correct timestamps are seen on audio
  files.

## Clock drift and exact time

The clock module will drift from real time, the longer it goes without
being sync'd.  I find it's usually less than 10 seconds per month, but
I don't have any hard data.  If you care, sync.  You can sync at any
time using the process outlined above, not just when the clock
module's battery has been replaced.

## Notes

Note however, that the Solo makes no guarantees about the exact
timing of the splits it makes in the audio, and the corresponding
timestamps used in naming the audio files.  they could be off by a
second or two either way - even if the clock is set perfectly.

Note also: setting the clock module has *nothing* to do with the
timezone setting (SOLO_TZ) /boot/solo/solo.conf.  The clock module
keeps time according to UTC (universal time) and cares not one bit
about humans fussing with timezones.

Note also also: if your Solo is based on one of the Raspberry Pi
models that has an ethernet adapter (B+, Pi2 Pi3 for example, meaning
you don't care about power consumption), then you don't need an
ethernet-USB adapter.  The Wifi capabilities of the Pi3 are _not_
supported for this, sorry.

