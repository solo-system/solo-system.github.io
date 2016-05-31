---
layout: documentation
permalink: "/documentation/clock.html"
layout: page
title:  "Clock"
---
  

# Setting the Clock

This page covers setting the Clock on the Solo.

The clock needs to be set when its battery is replaced.  The only
supported way to do this is to attach the Solo to a computer network,
log into it, and run a command that grabs the time from the internet
and saves it to the clock module.  The time is then remembered by the
clock module for several years until it's battery runs out again.

## How to set the time:

* Locate a [USB to ethernet](https://www.amazon.co.uk/s/ref=nb_sb_noss?field-keywords=USB+ethernet) adapter.  And an [ethernet network cable](https://www.amazon.co.uk/s/ref=nb_sb_noss_2?url=search-alias%3Daps&field-keywords=ethernet+patch+cable&rh=i%3Aaps%2Ck%3Aethernet+patch+cable).

* plug the ethernet cable into a network socket (if you are in an
  office), or directly into your broadband router (if you are at
  home).  The network will need to have a DHCP server running - home
  networks always have this, office ones may not.

* connect the ethernet cable to the adapter, and plug the adapter into
  the Solo's USB slot.  Place a freshly flashed memory card into the
  Solo, and turn it on.  The Solo will boot and join the network,
  having consulted the DHCP server for an IP-address.

* before we can log into the Solo, we need to find it's IP address.
  How you do this depends on your router, your computer, and your
  network setup.  I use Linux, so I use "nmap 192.168.1.*" and look
  for the host with "ssh only" running.  If you can log into your
  router, then do so, and look for "connected devices" and you should
  see it there.  Otherwise "ask your network administrator".  Sorry.

* log in to the Solo: On Windows you'll need
  [putty](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html).
  Click on putty.exe and run it.  putty is a program that allows you
  to establish logins on other computers.  If you are unsure about
  this sort of thing, that's good. Ask a geeky friend about "putty" if
  you need reassurance.

* on windows, type the IP address into the putty window and click
  connect (HELP - is this right???).  On Mac or Linux type "ssh
  aaa.bbb.ccc.ddd" where aaa.bbb.ccc.ddd is the IP address of the Solo
  (found above).  It should be something like 192.168.1.51.  On
  Mac/Linux type "ssh aaa.bbb.ccc.ddd" on the command line.

* you will need a login name and password.  They are both "amon"
  (audio monitor).  If these credentials are accepted by the Solo,
  then you will see the Solo's prompt ready for your command. This is
  a Linux/Bash shell, if you know what that is.

* to set the time, type `sudo /opt/solo/solo-clock-tool.sh net2sys
  sys2rtc`

* check the date and time are right by typing `date` at the command
  line again.  If it failed try again.  

* if the `date` command returns the correct time and date, then you
  have succeeded.

* Do not, under any circumstances, be cross with the author of this
  software for making it so difficult.  He knows, and is
  red-faced. (how do I make it easier?)

* the clock is now set for many years, until it's watch-battery runs
  out.

You can now log out, turn off the solo, and detatch the power to it,
and the time will be remembered when it is next used.

If you are sensitive about clock-drift you should re-synchronise
often. The clock drifts by a few seconds per month.

Note: the Solo does NOT guarantee much accuracy regarding the
labels on the files - they could be off by a second or two even if the
clock is set perfectly.

Note: all this has nothing to do with timezone, which is set in the
solo config file. (/boot/solo.conf).  The clock module gets set
correctly to UTC (universal time - GMT basically), and the timezone
setting (which you set in /boot/solo.conf) uses that to work out the
local time with which to label the audio files.

phew thank goodness that's over.
