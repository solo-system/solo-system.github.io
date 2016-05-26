---
layout: documentation
permalink: "/documentation/clock.html"
layout: page
title:  "Clock"
---
  

# Setting the Clock

This page covers setting the Clock on the Solo.

The clock needs to be set when it's battery is replaced.

For this, the Solo must be networked.  Plug in a USB ethernet dongle,
and allow the pi to connect to the DHCP server.

Find it using nmap (or consult your router's list of clients).

ssh into it (use putty on Windows). (login=amon password=amon)

type

/opt/solo/clock-tool.sh set

It should also be set occasionally if you are sensitive abou clock
drift (note however, the solo does NOT guarantee much accuracy
regarding the labels on the files - they could be off by a second or
two.  

Nothing to do with timezone, which is set in the solo config
file. (/boot/solo.conf).
