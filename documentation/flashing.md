---
layout: documentation
permalink: "/documentation/flashing.html"
layout: page
title:  "Flashing"
---
  
# Flashing

Before being used in the Solo, a memory card **must** be *flashed* with the
software that controls the hardware - the SOS (Solo operating system).

To prepare a card for use we must:

* Download the Solo operating system (SOS) onto a PC/Laptop
* unzip it
* physically attach the memory card to the PC/laptop through a memory card reader.
* *flash* the SOS onto the card.
* [optionally] configure settings

The card is now ready to be inserted into the slot on the Solo.


### Download

The latest version of the SOS (Solo operating system) is available
free HERE (HOLE).  The download is around 500MB.

Using your PC/laptop, save the file (named something like
solo-2016-01-01.zip) onto your desktop.

### Unzip

The downloaded file now needs to be unzipped (uncompressed).  Locate
the downloaded .zip file on your desktop and right-click.  Select
"extract" or "unzip".  A file of around 1.2GB called
"solo-2016-01-01.img" should now appear.


### Attach Memory Card to PC

Attach the memory card to your PC by inserting it into a Card Reader.
These can either be integrated into your computer, or are available as
USB dongles.

### Flash the memory card with the SOS

We now run a program that "flashes" the solo-xxx.img onto the memory
card.  Simply copying does **NOT** work.

BE VERY CAREFUL.  BE VERY VERY CAREFUL.  IF YOU GET THIS WRONG YOU MAY
LOSE ALL DATA ON YOUR PC/LAPTOP. 

#### Windows:

You will require [Win32DiskImager](http://sourceforge.net/projects/win32diskimager/)

1. Start the Win32DiskImager application.
1. Select the *Solo Operating System* file: - `solo-2016-01-01.img` in the box labeled ‘Image File’ in the Win32DiskImager window
1. Ensure the correct drive letter is selected for the memory card. (GET THIS CORRECT, OR STOP).
1. Click on ‘Write’ to start flashing the memory card - the process will take a few minutes.
1. Once the flashing is complete, click on ‘OK’ to complete the process
1. Eject the card from the system in the usual way
1. The card is now ready for use in the SOLO

Instructions are almost identical to [those provided by the Raspberry Pi Foundation](https://www.raspberrypi.org/documentation/installation/installing-images/windows.md),
except they aren't flashing the Solo operating system, obviously.

#### Mac

Don't know, but people _have_ succeeded.


### Finished

The memory card can now be used in the solo.


### Configure (optionally)

If you want to change the default configuration options you can do so
at this stage - see [configuration](configuration.html).



