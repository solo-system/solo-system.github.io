---
layout: documentation
permalink: "/documentation/calendar.html"
layout: page
title:  "Calendar facility with in Solo"
---

* TOC
{:toc}

# Calendar 

Solo now supports a calendar (as of September 2016) - the ability to
record at only certain times of day/date.  Previously the Solo was
only able to record 24/7 hours per day, but now you can choose (or
define) your own set of on/off times.

Please note that you should **not** expect a corresponding increase in
battery life.  Unfortunately it doesn't work that way.
You can get away with smaller memory cards, but not increase overall
deployment times (much - see below).


# Quick start

The Solo come pre-packaged with several calendars.  Let's choose
"night.py", which records only at night time.  Flash the SOSI to the
SD card in the normal way, and then during the configuration stage -
enable one of the CALENDAR lines within amon.conf (by removing the '#'
at the beginning of the line) withthe appropriate calendar.  Save
config file, eject SD-card safely, insert into a Solo, and the
calendar will be used.


# Currently supplied calendars

The up-to-date list of current calendars are always [in
git](https://github.com/solo-system/amon/tree/master/boot/calendar).
Today (18 September 2016) there are three:

- **1m-on-1m-off.sh** - on for 1 minute, off for 1 minute.  You end up
    with (60*24/2) files per day, each one minute long.

- **5m-on-5m-off.sh** - on for 5 minutes of for 5 minutes.  It's the
    first five minutes if any 10 minute wall-clock slot.  You end up
    with 60/5*24 filed per day, each 5 minutes long.

- **night.py** - records between 9pm and 6am.  This is pretty useless
    unless you are on the equator as it takes no account of season
    (since dawn and dusk change dramatically with season as you move
    further from the equator).
    

# Make your own Calendar.

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



# Battery Life

This mode is not intended to increase battery life, so please don't
expect the Solo to run for any longer.  This is a big weak spot of the
Solo - it doesn't have a good "low power mode" in which it can be on
standby.  Instead - it's always on and consuming battery power, whether
recording or not.  You will probably see a small gain in battery
run-time, but it's not the main reason for this functionality.

This should be of particular use to people who were previously short
on SD-card space perhaps because they have high data rates - (either
high-sample rates - like bats), or stereo (not mono).

Note however that this does NOT give you a commensurate increase in
battery life.  The Solo consumes power at the same rate 0.35 Watts,
whether it is recording or not.  During off-times in the calendar, the
system still runs, and very little battery saving can be done.  This
is an intrinsic problem with the current Solo, and is one of it's big
weak-points - the lack of "low power mode".


# Design decisions and technical notes

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

- **Power savings conjecture** There will be a small reduction in the
    power consumption of the solo if it isn't recording, but this
    hasn't been measured.  The CLAC is probably de-powered, the mic
    doesn't draw any PIP, and SD-card access should drop to almost
    zero (apart from the minutely watchdog cronjob, and whatever
    system things are busy).  The cpu might be clocked-down, but
    normal cpu usage is very low anyway (top reports < 10% while
    recording).  

    
