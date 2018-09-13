---
layout: documentation
permalink: "/documentation/calendar.html"
layout: page
title:  "Calendar facility with in Solo"
---

* TOC
{:toc}

### This is a DRAFT (12 September 2018).

### Calendar and Witty Pi

The [Witty Pi 2](http://www.uugear.com/product/wittypi2) adds both a
clock module and power management to any Raspberry Pi.  It is now
supported in the Solo, so recording happens according to the predefined
times prescribed in the user's selected calendar, and the device is
turned off when not recording, thereby saving valuable battery power.

### Instructions

#### Initial setup:

[![Solo with Witty-Pi-2](/img/solo-with-wittypi2-L.jpg "Solo with Witty-Pi-2 (click to enlarge)"){:.some-css-class style="width:40%; margin: 10px; padding-bottom: 3px; float: right;"}](/img/solo-with-wittypi2-rot180.jpg)

- Set the colourful jumpers on the Witty-Pi-2 to the correct positions
  (blue jumper set to the right, all others to the left).  See image
  above.

- Attach the Witty-Pi-2 to the Raspberry Pi and insert the coin cell
  battery.

- Follow the normal procedure to [set the
  clock](/documentation/clock.html) on the Witty Pi 2.  Use an
  **unmodified** SOSI for this procedure (don't enable WITTYPI=yes in
  amon.conf).

#### Normal use:

- Flash a memory card with recent version of SOSI (Witty Pi Support starts September 2018), available in the [usual place](http://www.solo-system.org/sosi/)
- Perform your normal customisations in amon.conf and solo.conf. Be sure to set the timezone SOLO_TZ correctly in solo.conf
- Edit boot/amon.conf : to include WITTYPI=yes and enable your chosen calendar through CALENDAR=xxx (test with "5m-on-5m-off.sh").
- Move the memory card to the Solo and turn it on.
- Connect the battery to the Witty Pi 2, NOT the raspberry pi.  Incoming power to the raspberry pi now flows through the Witty Pi 2.
- Press the button on the side of the Witty Pi 2 to turn the system on, if it doesn't start automatically.
- Observe the raspberry-pi's lights to confirm that it is periodically turned off and then reboots at the times corresponding to those in your chosen calendar.


### Calendars

Calendars define the on/off schedule for the Solo.  They live in
boot/calendar/ directory and are activated by setting "CALENDAR=xxxx"
in amon.conf.  There are 3 pre-defined calendars (on 12 Sept 2018),
but you can write your own (see below).

- **5m-on-5m-off.sh** - on for 5 minutes of for 5 minutes.  It's the
    first five minutes if any 10 minute wall-clock slot.  You end up
    with 60/5*24 filed per day, each 5 minutes long.  This calendar is
    primarily intended for testing the Witty Pi 2 is working properly.

- **1h-on-1h-off.sh** - on for 1 hour, off for 1 hour.  

- **dusk2dawn.py** - records between dusk and dawn, which are
    calculated properly, accounting for your latitude and longitude,
    which must be entered into the calendar beofore deploying.  Read
    the calendar file itself for more instructions. 
    
### Miscellaneous Notes.

- Remember to connect the power lead connected to the witty pi board (NOT the raspberry pi board).

- Don't try to install any of the witty pi's software, from the manufacturere's website - it's not needed.

- reboot-time policy: The solo starts rebooting at the time you put in calendar.  It takes about 90 seconds to start recording.

- reboot-time policy: The solo starts rebooting at the time you put in calendar.  It takes about 90 seconds to start recording.

- some calendars require their own configuration dusk2dawn.py needs lat/long for example.

- Choose timezone correctly - and don't use a daylight savings timezone (which are they?)

- does it support witty pi version 1.  witty pi mini?

- Must put tape over the raspberry pi 's power socket, otherwise you'll unthinkingly use the wrong power-in socket.

- keep-alive Jumper on witty pi 2 - turn it on for battery banks.  Or off if you don't need it (that will save even more power).

- calendars define reboot time, not restart-recording time.  The boot time of the system will delay recording by a minute or two. Beware actual record start time will be later than rbt offered by any calendar by about 1 minute.

### Make your own Calendar.

IGNORE THIS SECTION IT IS OUT OF DATE.
A calendar is a script (computer code) that consults the system's
time, and then decides whether recording should be "on" or "off" at
that moment.  The Solo system consults this calendar every 1 minute,
and takes the appropriate action: starting / stop / leave-alone the
current recording status.

To make your own, you have to know how to write a script in python or
bash.  Here are some example calendars
[night.py](https://github.com/solo-system/amon/blob/master/boot/calendar/night.py)
or
[5m-on-5m-off.sh](https://github.com/solo-system/amon/blob/master/boot/calendar/5m-on-5m-off.sh).

Have a look at some of the pre-packaged calendar scripts, and you'll
quickly see how to do it.  They are in the /boot sector of the solo in
/boot/solo/calendar/.  Or browse some on the github site: [github
site](https://github.com/solo-system/amon/tree/master/boot/calendar)

Add your own calendar scripts to this directory during configuration,
and set amon.conf's CALENDAR accordingly.


 
# Jumpers

All hardware jumpers should be in the left position, except the blue one,
which should be moved to the right position, for most battery banks.
This blue jumper ensures that "intelligent" USB battery banks remain
ON while the Solo is off, when otherwise such USB banks would notice a
very low demand, and switch off permanently.  You don't want your USB
power bank to permanently turn off.

Red "Default Off left-position <br>
Yellow GPIO-17  "left position" <br>
Green "halt by gpio4" left position. <br>
Blue "dummy load" - right position  <br>


# Battery Life

Need data here - TODO.

# Technical notes

- **Scripting** The downside of using scripts for calendar definitions
    is that not everyone can write scripts. But most people can
    probably find someone who can help, or can give it a go
    themselves. The benefits are huge, however.  A script can be as
    complicated as desired, draw on other information sources (include
    a dawn-dusk.txt file, if you like, and have your script consult
    it).  It could even consult the output of sensors you've
    separately attached to your solo.

- **Debuging** Struggling to get a calendar to do what you want? The
    amon.log file in the amondata/logs/ directory contains the
    once-a-minute log of the calendar's decision.  Alternatively,
    you can add debug to your calendar script itself - but it MUST
    write to stderr, not stdout.  Stdout must stay clean for the
    "yes"/"no" answer.  STERR output is appended to
    amondata/logs/calendar.log

