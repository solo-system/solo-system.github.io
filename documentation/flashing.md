---
layout: documentation
permalink: "/documentation/flashing.html"
layout: page
title:  "Flashing"
---

* TOC
{:toc}

# Flashing

Flashing is the process of preparing the memory card with the software
needed to run the Solo.  Cards can then optionally be "configured"
before being plugged into the Solo and turned on.

To prepare a card for use we must:

* download the Solo operating system image (SOSI) onto a PC/Laptop
* unzip it (right click on the downloaded file)
* attach the memory card into your PC/laptop's memory card reader
* *flash* the SOS onto the card.
* [optionally] configure Solo settings

The card is now ready to be inserted into the slot on the Solo.

### Download

The latest version of the SOS (Solo operating system) is available
free from [downloads](/downloads.html).  The download is
around 500MB.

Using your PC/laptop, save the file (named something like
sosi-2016-01-01.zip) onto your desktop.

### Unzip

The downloaded file now needs to be unzipped (uncompressed).  Locate
the downloaded .zip file on your desktop and right-click.  Select
"extract" or "unzip".  A file of around 1.2GB called
"sosi-2016-01-01.img" should now appear.


### Attach Memory Card to PC

Attach the memory card to your PC by inserting it into a card reader.
These can either be integrated into your computer, or are available as
USB dongles.

### Flash the memory card with the SOSI

We now run a program transfers the SOSI onto the memory card. Warning:
Simply copying (or drag-and-drop) does **NOT** work.

NOTE: BE VERY CAREFUL.  BE VERY VERY CAREFUL.  IF YOU GET THIS WRONG YOU MAY
LOSE ALL DATA ON YOUR PC/LAPTOP. 

#### Windows:


You will need [the latest SOSI](/downloads.html) and [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/).  

1. Start the Win32DiskImager application:

[![what is this](/img/flashing1.png "flashing" ){:.some-css-class style="height: 250px; width:20% float: left;"}](/img/flashing1.png)

1. Select the **Solo Operating System Image** file: - `sosi-2016-01-01.img` in the box labeled ‘Image File’ in the Win32DiskImager application.

[![what is this](/img/flashing2a.png "flashing" ){:.some-css-class style="height: 250px; width:20% float: left;"}](/img/flashing2a.png)
[![what is this](/img/flashing2b.png "flashing" ){:.some-css-class style="height: 250px; width:20% float: left;"}](/img/flashing2b.png)
[![what is this](/img/flashing2c.png "flashing" ){:.some-css-class style="height: 250px; width:20% float: left;"}](/img/flashing2c.png)

1. Ensure the correct drive letter is selected for the memory card. (GET THIS CORRECT, OR STOP).
1. Click on ‘Write’ to start flashing the memory card - the process will take a few minutes.
1. Once the flashing is complete, click on ‘OK’ to complete the process
1. Eject the card from the system in the usual way
1. The card is now ready for use in the Solo.

Instructions are almost identical to [those provided by the Raspberry
Pi
Foundation](https://www.raspberrypi.org/documentation/installation/installing-images/windows.md),
except they aren't flashing the Solo operating system, obviously.

#### Mac

Don't know, but people _have_ succeeded (it's easier than Windows).

### Finished

The memory card can now be used in the solo.


### Configure (optionally)

If you want to change the default configuration options you can do so
at this stage - see [configuration](configuration.html).  The most
likely configuration option to set is the timezone.  Quick hint: plug
the memory card back into your PC and edit the boot/solo/solo.conf
file.  But you should really read the instructions referenced above.
