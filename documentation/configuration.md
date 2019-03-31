---
layout: documentation
permalink: "/documentation/configuration.html"
layout: page
title:  "Configuration"
---
  
* TOC
{:toc}

## Configuration

This document covers Configuring the Solo to your particular needs

NOTE: The default settings of the Solo work well in most situations.
If you have built the Solo:basic, they work perfectly.  The easiest
thing to do is to change __nothing__ in the configuration.  Just flash
the memory card, plug it into the Solo, and turn on the Solo.

## How to configure

Once a memory card is flashed with the SOSI (solo operating system
image), it can be re-inserted into your PC/laptop, and your computer
will mount a /boot partition onto your desktop.  Look in this folder
and you'll find a directory called "solo", and in there, two files -
`solo.conf` and `amon.conf`.  Their full path is `boot/solo/solo.conf`
and `boot/solo/amon.conf`.  These are the configuration files for
solo, and you will edit them by hand on your PC, save them, close your
editor, and then carefully eject the "boot" partition.

Note: On windows you will see ONLY the `boot` partition, on mac and
(certainly) on linux you will see an additinal parition - which should
be ignored.

## solo.conf and amon.conf

There are 2 configuration files, because one deals with "device"
settings (solo.conf) and the other with "audio" settings (amon.conf).
amon is the "audio monitor", it's the software that runs on the Solo
and manages the audio recordings.

## Config options in amon.conf

* <b>CHANNELS="-c1"</b> controls stereo or mono.  Set it to 1 or 2

* <b>SAMPLERATE="-r16000"</b> controls the sample rate of the audio in
  Hz.  Set it to 8000, 16000, 44100 or anything up to 192000,
  depending on your audio-card's capability.

* <b>CLAC_VOL</b> is a volume control. range is [0,31] representing
  [0dB->31db] in 1dB steps.  Max out this volume before raising the
  CLAC_DIGITAL_VOL. The default is the maximum of 31, representing a
  gain of 31dB.

* <b>CLAC_DIGITAL_VOL</b> is a digital volume. Range is[0,191]
  representing [-64dB->+32dB] in 0.5dB steps (so 128 is 0dB) The
  default is `CLAC_VOL=152` representing +12dB.

* <b>CLAC_AUDIO_SOURCE</b> Selects the jack to record from.  "linein"
  selects the pink "line-in" socket which I recommend. This socket
  provides PIP (plug in power) to drive your mic with a few volts if
  it needs it. "dmic" selects the onboard stereo Digital MEMS
  microphones.  `mic` selects the black "headphone" socket which is
  intended for headphone/microphone headsets. I haven't used this, but
  I think it requires a connector with 4 sections (Left headphone,
  Right headphone, Microphone and Ground).  I think.  The default is
  "linein"

* <B>DURATION=10</b> controls the duration of the recorded audio files
  (how often they are split) in minutes.  Anything up to 60 mins is
  supported at the moment.  `DURATION=10` is the default 10 minutes.
  Actually the behaviour is : every minute we consider splitting the
  audio.  If (minute-hand-of-current-time-of-day / DURATION) leaves a
  zero remainder, then we DO split. It's written this way so that the
  Solo immediately synchronises the splits with wall-clock time.  But
  it isn't perfect.

* <b>CALENDAR=filename </b> see the [dedicated page on using the
    calendar](calendar.html). This string must be the full path to a
    valid calendar file.
  
* <b>undocumented options</b> The following are undocumented, stale, unused,
  unreliable, so ignore them unless you know what you are doing:
  AMONDATA, MINMEMFREE, AUDIODEVICE, AUDIOFORMAT,
  ABUFFER. NIGHTLYREBOOT, CLAC_PIP

## Config options in solo.conf

### Setting the Timezone (SOLO_TZ)

The timezone of the Solo is set through the /boot/solo/solo.conf file.
The entry is `SOLO_TZ`. It defaults to `Europe/London`.

`SOLO_TZ=America/Panama` would be a valid example.  As would `UTC` for
Universal coordinated time (Zulu). Acceptable timezones are listed
[here](/documentation/timezone-list.txt).  

If you choose a timezone which uses daylight saving, then be aware
that there will be one hour of the year (in spring), when an hour's
worth of recordings are overwritten, and in Autumn, there will be an
hour's gap in recordings.  To avoid this, use a timezone that DOESNT
use daylight savings.  These include timezones like `GMT`, `GMT-5`
(for Boston, USA),  `GMT+3` for Athens.  

If you are using the Witty Pi 2, take particular care to select a
timezone that doesn't use Daylight Savings, as it will cause confusing
problems with reboot times.

### Setting the Power mode (SOLO_POWERMODE)

The powermode controls how much power saving is done by the software
on the Solo.  The only two settings currently are

* `lowest`: This is the default - it uses the least power (including
  turning off the HDMI connector, so a monitor connected to that
  socket will NOT work.)

* `normal`: This performs no special measures to minimize power
  (including leaving the HDMI/monitor socket operational).
