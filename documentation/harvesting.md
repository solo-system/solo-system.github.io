---
layout: documentation
permalink: "/documentation/harvesting.html"
layout: page
title:  "harvesting audio data from a memory card"
---

# Harvesting

## Harvesting audio data from a full SD card

This document covers copying audio files from a Solo's memory card safely
onto your PC/laptop.

You should physically insert the card into a "card reader" which may
be integrated into your PC/Laptop or might be a seperate component that
connects to your PC via USB.

Once the card is connected, the PC will recognise the card, and the
audio will become available to copy.  You should ensure that you have
sufficient storage on your PC to handle all the audio data files
(Solos can collect a LOT of data).

Once you have safely copied the data, you should consider the contents
of the memory card to be useless, reflash the card. Note: Deleting the audio
and re-using the card in a Solo without reflashing - might work, but is not
recommended.  Always use a freshly flashed memory card when you
prepare a Solo.

Depending on your computer's operating system (Windows, Mac, Linux),
slightly different procedure is needed:

### Windows

Install [Linux_reader](http://www.diskinternals.com/linux-reader/).
This software will be able to copy the audio files from the audio card.

### Mac

Just plug it in, and a drive called "solo-audio" will appear.  

### Linux

Just plug it in, and a parition called "solo-audio" will appear.


## Technical note

This is to do with partitions.  Windows won't read a second and third
partition from a memory card, instead turning a blind eye.  Mac and
Linux do it natively.


# Obtaining and installing Linux_reader

Having deployed a Solo and returned with an SD card full of audio
recordings, they need to be copied to your PC’s hard drive.  This tool
does that copying.  It is available for free download from
http://www.diskinternals.com/linux-reader


Once downloaded, it should be installed on your PC.  Consider making a
shortcut to it, as it will be used every time you wish to copy audio
from the SD card onto your PC.  Further details of this tool are
available from its website, if you are interested, or need more help.

