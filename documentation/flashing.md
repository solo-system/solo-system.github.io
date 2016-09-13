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
* *flash* the SOSI onto the memory-card
* eject the card safely
* [optionally] configure Solo settings

The card is now ready to be inserted into the slot on the Solo.

### Download latest SOSI and unzip.

The latest version of the SOS (Solo operating system) is available
free from [downloads](/downloads.html).  The download is around 500MB.
Using your PC/laptop, save the file (named something like
sosi-2016-01-01.zip) onto your desktop.

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
Simply copying (or drag-and-drop) does **NOT** work.  This process
differs depending whether your desktop/laptop is a Windows, Mac or
Linux computer - instructions for each are given below.

NOTE: BE VERY CAREFUL.  BE VERY VERY CAREFUL.  IF YOU GET THIS WRONG
YOU MAY LOSE ALL DATA ON YOUR PC/LAPTOP.  It is best to ensure you
have no _other_ USB memory attached to your pc/laptop, lest you
incorrectly overwrite it.

#### Windows:

You will need [the latest SOSI](/downloads.html). You'll also need to
download and install the Windows application:
[Win32DiskImager](http://sourceforge.net/projects/win32diskimager/).

1. Start the Win32DiskImager application:
[![what is this](../img/flashing-1.png "flashing" ){:.some-css-class style=""}](../img/flashing-1.png)

1. Select the **Solo Operating System Image** file: - `sosi-2016-01-01.img` in the box labeled ‘Image File’ in the Win32DiskImager application.
[![what is this](/img/flashing-2a.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-2a.png)
[![what is this](/img/flashing-2b.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-2b.png)
[![what is this](/img/flashing-2c.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-2c.png)

1. Ensure the correct drive letter is selected for the memory card. (GET THIS CORRECT, OR STOP).
[![what is this](/img/flashing-3.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-3.png)

1. Click on ‘Write’ to start flashing the memory card - the process will take a few minutes.
[![what is this](/img/flashing-4.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-4.png)
[![what is this](/img/flashing-4a.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-4a.png)
[![what is this](/img/flashing-4b.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-4b.png)

1. Once the flashing is complete, click on ‘OK’ to complete the process
[![what is this](/img/flashing-5.png "flashing" ){:.some-css-class style="margin: 5px;"}](/img/flashing-5.png)

1. Eject the card from the system in the usual way
1. The card is now ready for use in the Solo.


#### Mac

Don't know, but people _have_ succeeded (it's easier than Windows).
[Here](https://www.raspberrypi.org/documentation/installation/installing-images/mac.md)
are the Raspberry Pi foundation's official flashing instructions for
Mac.

#### Linux

I do this extremely regularly.  I ise "dd" in conjunction with "sudo".  But
it's very dangerous if you don't know what you are doing.  My command
line is:

`sudo dd bs=40M if=sosi-2016-06-14.img of=/dev/sdX ; sync ; sync`

Which reads "as super user, read from (if=sosi.img) output to (of=/dev/sdX) with block size (bs=40M)".

But if you don't know what's going on here, please take
care. [Here](https://www.raspberrypi.org/documentation/installation/installing-images/linux.md)
are the Raspberry Pi foundation's official flashing instructions for Linux.



### Finished

The memory card can now be used in the solo.  If you have any
problems, more help is available because the process is almost
identical to [those provided by the Raspberry Pi
Foundation](https://www.raspberrypi.org/documentation/installation/installing-images/windows.md),
except they aren't flashing the Solo operating system, obviously.


### Configure (optionally)

If you want to change the default configuration options you can do so
at this stage - see [configuration](configuration.html).  The most
likely configuration option to set is the timezone.  Quick hint: plug
the memory card back into your PC and edit the boot/solo/solo.conf
file.  But you should really read the instructions referenced above.
