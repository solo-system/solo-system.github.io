---
layout: documentation
permalink: "/documentation/calendar.html"
layout: page
title:  "Calendar and Witty Pi 2"
---

* TOC
{:toc}

### Recently Updated (Last changed: 13 August 2019)

The Witty Pi 2 has proven to be an unreliable accessory to the Solo.  

Witty-Pi-2 support is frozen as it is now (August 2019) and will not be improved.

It is now considered unreliable.  If you have been unsuccessful in
using Witty Pi 2 hardware, it can still be used as a very good clock
module (changeable battery) - simply leave the "WITTYPI=no" option in
amon.conf.  The Solo will use the Witty-Pi-2 as a clock module. Just
ensure the power cable runs to the Raspberry Pi, NOT the Witty Pi 2.

And those for whom it's working well can continue using it as you
currently are - support is not being removed.

Note: even with "WITTYPI=no" in amon.conf, calendars can still be used
to define periods of recording, but there will be no "power-off"
between recording sessions, so no benefit to battery life, but more
strategic use of memory-card space is possible.



### Calendars and Witty Pi 2 (old announcement)

The [Witty Pi 2](http://www.uugear.com/product/wittypi2) adds both a
clock module and power management to any Raspberry Pi.  It is now
(unreliably) supported in the Solo, so recording happens according to
the predefined times prescribed in the user's selected calendar, and
the device is turned off when not recording, thereby saving valuable
battery life.

### Instructions

#### Initial setup

[![Solo with Witty-Pi-2](/img/solo-with-wittypi2-L.jpg "Solo with Witty-Pi-2 (click to enlarge)"){:.some-css-class style="width:40%; margin: 10px; padding-bottom: 3px; float: right;"}](/img/solo-with-wittypi2-rot180.jpg)

- Set the colourful jumpers on the Witty-Pi-2 to the correct positions
  (blue jumper set to the right, all others to the left).  See the accompanying image.

- Attach the Witty-Pi-2 to the Raspberry Pi and insert the coin cell
  battery. Connect the power cable to the Witty Pi 2 (not the
  Raspberry Pi).
  
- Follow the procedure to [set the clock](/documentation/clock.html)
  on the Witty Pi 2.  (Do _not_ to enable WITTYPI=yes in amon.conf -
  not yet).  You might need to press the button on the Witty Pi 2
  if the Raspberry Pi doesn't automatically start up.


#### Normal use

- Flash a memory card with the latest SOSI available in the [usual
  place](http://www.solo-system.org/sosi/)

- Perform your normal customisations in `amon.conf` and
  `solo.conf`. Be sure to [choose your
  timezone](configuration.html#setting-the-timezone-solo_tz)
  `SOLO_TZ` correctly in `solo.conf`

- Enable the Witty Pi 2 and choose a calendar: Edit `boot/amon.conf`
  to include `WITTYPI=yes` and enable your chosen calendar via
  CALENDAR=xxx (test with `CALENDAR="/boot/solo/calendar/5m-on-5m-off.sh"`).

- Eject the sd-card from your PC and move it to the Solo.

- Connect the battery to the Witty Pi 2, NOT the raspberry pi.
  Incoming power to the raspberry pi now flows through the Witty Pi 2.

- Press the button on the side of the Witty Pi 2 to turn the system
  on, if it doesn't start automatically.

Observe the raspberry-pi's lights to confirm that it is periodically
turned off and then reboots at the times corresponding to those in
your chosen calendar.  It is advisable for new users to use the
`5m-on-5m-off.sh` calendar to see the reboot sequence in action and
confirm it is working.


### Choosing a calendar

Calendars define the on/off schedule for the Solo.  They live in
`boot/calendar/` directory and are activated by setting `CALENDAR=xxxx`
in `amon.conf`.  There are 3 pre-defined calendars (as of 12 Sept 2018),
but you can write your own (see below).

- **dusk2dawn.py** - records between dusk and dawn, which are
    calculated astronomically, accounting for your latitude and longitude,
    which must be entered into the calendar beofore deploying.  Read
    the calendar file itself for more instructions.

- **5m-on-5m-off.sh** - on for 5 minutes of for 5 minutes.  It's the
    first five minutes if any 10 minute wall-clock slot.  You end up
    with 60/5*24 files per day, each 5 minutes long.  This calendar is
    primarily intended for testing the Witty Pi 2 is working properly.

- **1h-on-1h-off.sh** - on for 1 hour, off for 1 hour.  

### Other versions of the Witty Pi

There is also a "Witty Pi Mini" product which has the same form-factor
as the Raspberry Pi Zero. This board should also work with Solo,
however beware: it has no battery to run its time-chip.
Instead it uses a "super-capacitor" which lasts only "about 17 hours",
rather than the normal coin-cell battery on the Witty Pi 2 that will
run the time-chip for several years.

This means that the Witty Pi Mini will forget the time and date if it
is disconnected from power for a period more than 17 hours.  In my own
setups, this would be unworkable, but perhaps your setup is different.

Caution: I haven't explicitly tested the Witty Pi Mini's support (I
don't own such a board), and am inferring this information from the
manufacturer's documentation.  Let me know how you get on if you try
the Witty Pi Mini.


### Miscellaneous Notes.

- As of August 2019, Witty Pi 2 is no longer recommended, as it has
  proven unreliable.

- Remember to connect the power lead to the Witty Pi 2 board
  (NOT the raspberry pi board).

- Don't try to install any of the witty pi's software from the
  manufacturere's website - it's not needed.

- The solo starts rebooting at the time dictated by your calendar.
  Actual recording of audio will commence about 90 seconds after this
  time. 

- Some calendars require their own configuration `dusk2dawn.py` needs
  lat/long for example.

- Must put tape over the raspberry pi 's power socket, otherwise
  you'll unthinkingly use the wrong power-in socket.

- The Keep-alive Jumper on Witty Pi 2 should normally be "on" (in the
  right position, as in the image on this page).  This prevents
  intelligent powerbanks from turning off.  If you are using a power
  source that won't turn off, this jumper can be moved to the left
  position, which save even more power.  

- Calendars can be used without Witty Pi 2 boards.  In this case there
  is no power saving, but the schedule of recording is honoured.
  Simply enable the calendar through the `CALENDAR=xxx` variable in
  `amon.conf`, but leave `WITTYPI=no` unchanged.

- The software will automatically change between daylight-savings if
  your selected timezone has such a thing. Springing forward and
  falling back appropriately.

- If the Solo is deployed at a time when it should be "off", the Solo
  will boot, read the calendar, find out it should be off, and then
  promptly turn itself off.

- The button on the Witty Pi 2 is used to turn on the Solo while it is
  "off", either at the point of deployment, or to interrupt it while
  it is sleeping (it will wake up and go to sleep again if the
  calendar deems it should be off).  The button does NOT turn off the
  Solo when it is on.   To turn off the Solo, pull out the power.
