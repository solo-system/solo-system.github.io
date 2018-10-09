---
layout: documentation
permalink: "/documentation/clock.html"
layout: page
title:  "Setting the Clock"
---

* TOC
{:toc}

# Setting the clock

The date and time need to be set whenever the clock module's tiny
battery is replaced.  There are 2 ways to do this:

- The best way is done by attaching the Solo to a computer network, and
leaving it to syncronise the clock module to "internet time", which it
will do automatically within 15 minutes.

- The other way is manual, and for this you need a keyboard and monitor.
This is for people who struggle to get the networking method to work.

Once set, the time is remembered by the clock module for several
years until it's battery runs out.


## Set the clock using a network connection

The steps are:

* Locate a [USB to ethernet
  adapter](https://www.amazon.co.uk/s/ref=nb_sb_noss?field-keywords=USB+ethernet)
  and an ethernet [network
  cable](https://www.amazon.co.uk/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=ethernet+patch+cable&rh=i%3Aaps%2Ck%3Aethernet+patch+cable)

* Use the ethernet cable to attach the USB-ethernet adapter to a
  network socket (if you are in an office), or directly into your
  broadband/DSL router (if you are at home).  The network will need to
  have a DHCP server running - home networks always have this, office
  ones may not.  With the Solo still powered OFF, plug the
  USB-ethernet into the USB socket on your Solo.  Temporarily remove any USB
  microphones occupying the Solo's USB slot.

* Place a freshly flashed memory card into the Solo, and turn it on.
  The Solo will boot and join the network.

* After 15 minutes the Solo will automatically consult the internet
  for the time and date, and set the clock module, and the Solo can be
  powered off.  The Solo now has the correct date and time and is
  ready for it's first proper deployment as a recorder.

* Note: this process is independent of the timezone - so don't worry
  about setting that in /boot/solo/solo.conf

* Note that there is currently _no_ indication that the time has been
  correctly set.  Test by doing a test run without
  networking, to see if the correct timestamps are seen on audio
  files.

## Setting the clock manually (keyboard and monitor).

* flash the most recent SOSI image onto an SD card.
* edit the `/boot/solo/solo.conf` file:
  * Set SOLO_TZ to your local timezone ([more info](/documentation/configuration.html#setting-the-timezone-solo_tz))
  * Set `SOLO_POWERMODE=normal` to enable HDMI ([more info](/documentation/configuration/index.html#setting-the-power-mode-solo_powermode)).
* connect a keyboard and monitor (via HDMI) to the raspberry pi, and
  boot.
* log in with username=amon, password=amon.
* set the system date with `sudo date -s "2015-12-31 23:59:59"`.  If you
  have correctly set the SOLO_TZ timezone, the date/time should be
  declared in your LOCAL time/date.
* save the system time to the clock module with `sudo hwclock -w`
* check everything is correct using `timedatectl`


## Clock drift and exact time

The clock module will drift from real time, the longer it goes without
being sync'd.  I find it's usually less than 10 seconds per month, but
I don't have any hard data.  If you care, sync.  You can sync at any
time using the process outlined above, not just when the clock
module's battery has been replaced.

## Notes

The Solo makes no guarantees about the exact timing of the splits it
makes in the audio, and the corresponding timestamps used in naming
the audio files.  Timings could be off by a second or two either way -
even if the clock is set perfectly.

If your Solo is based on one of the Raspberry Pi models that has an
onboard ethernet adapter (B+, Pi2, Pi3, etc...) because you don't care
about power consumption, then you don't need an ethernet-USB adapter.

The Wifi capabilities of the Pi3 are _not_ supported for this, sorry
(it's perfectly possible, I just haven't ever done it).
