---
layout: documentation
permalink: "/documentation/harvesting.html"
layout: page
title:  "harvesting audio data from a memory card"
---
  

# Harvesting

This document covers harvesting audio from a memory card that has previously been in a deployed Solo.

After being in a deployed Solo, the audio card is full of audio data
(and a few log files) which should now be copied to a
PC/laptop/desktop computer.

You should physically insert the card into a "card reader" which may
be integrated into your PC or might be a seperate component that
connects to your PC via USB.

Once the card is connected, the PC will recognise the card, and the
audio will become available to copy.  You should ensure that you have
sufficient storage on your PC to handle all the audio data files
(Solos can collect a LOT of data).

Once you have copied the data, you should consider the contents of the
memory card to be redundant, and you should reflash the card. Deleting
the audio and re-using the card in a solo again might work, but is not
recommended.  Always Use a freshly flashed memory card when you
prepare a Solo.

Depending on your computer's operating system (Windows, Mac, Linux),
slightly different procedure is needed.

### Windows

win32diskimager is requied (HELP - copy this from BTO)

### Mac

Just plug it in, and a drive called "solo-audio" will appear.

### Linux

Just plug it in, and a parition called "solo-audio" will appear.


# from usermanual.txt



Harvesting audio data from a full SD card
-----------------------------------------

1. Ensure the desktop/laptop is correctly configured to read the data (see Appendix C)

2. Plug the card reader into the desktop/laptop

3. Plug the SD card into the card reader (take care with orientation)

4. Use DiskInternals to look at the files on the card (‘amondata’ directory)

5. Copy the files from the SD card onto the desktop/laptop

6. Remember to make notes about the data, such as where the data was recorded

7. Finished - safely eject the card and label it for re-flashing



Obtaining and installing the “harvesting” tool (Linux_reader)
-------------------------------------------------------------


Having deployed a Solo and returned with an SD card full of audio
recordings, they need to be copied to your PC’s hard drive.  This tool
does that copying.  It is available for free download from
http://www.diskinternals.com/linux-reader


Once downloaded, it should be installed on your PC.  Consider making a
shortcut to it, as it will be used every time you wish to copy audio
from the SD card onto your PC.  Further details of this tool are
available from its website, if you are interested, or need more help.

