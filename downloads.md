---
layout: page
title: downloads
permalink: /downloads.html
weight: 4
isfront: true
---

# Software

The solo software image (which is flashed onto the empty memory cards
prior to deploying), are available from
[here](http://www.solo-system.org/ssi/).  Download and save to the PC
from which you will flash the Solo's memory cards.

The SSI's are about 500Mb in size.  They should then be unzipped and
produce a file of 1.2Gb, called "solo-2016-01-01.img" This file is the
SSI, This is what you flash onto the memory card. (not the zipped
file).

### attach memory card to PC/Laptop

This could be through a USB card reader, or perhaps an integrated one
in your Desktop or a little slot on your PC. Ensure your card is at
least 4Gb, although realistically you'll need much more than that.

### Flash - don't copy.

Simply copying (drag and drop, for example) the solo software SSI onto
your memory card will not work.  Instead you must __flash__ - and that
depends on your PC/Laptop: (note there are lots of ways to do this,
but here's what I think is simplest:

#### Instructions for flashing on Mac
Ask someone with a mac.

#### Instructions for flashing on Linux
see raspi website - dd or "make boot disk".

#### Instructions for flashing on Windows:

You will need win32DiskImager.exe from HERE installed on your
pc/Laptop.  Once it's installed:

### Getting Help

The process of _flashing_ for the underlying raspberry pi.  Have a
look at
[their instructions](https://www.raspberrypi.org/documentation/installation/installing-images)
- but don't download their .img (ignore NOOBS and raspbian)- use the
solo.img.

There is also lots of help online: 
[mac](http://www.google.com/search?q=mac flash raspbian),
[win](http://www.google.com/search?q=windows flash raspbian),
and
[linux](http://www.google.com/search?q=linux flash raspbian).


### Configure.

If there are any settings you want to change, edit /boot/amon.conf
now. See here for configuration guidel

### Done

The SDcard is now ready for use in the SOLO. (insert it before
applying the power to the solo).

