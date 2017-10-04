---
layout: page
title: Getting Started
permalink: documentation/getting-started.html
---

## Getting Started

[updated in October 2017 with Soundblaster soundcards - older CLAC version is [here](/documentation/getting-started-2016.html)]

### Purchase components

* [Raspberry Pi model A+](https://www.raspberrypi.org/products/raspberry-pi-1-model/) (&#8776;£15.00)
* Soundcard: [SoundBlaster Play 3](https://us.creative.com/p/sound-cards/sound-blaster-play-3) or [SoundBlaster Play 2](https://us.creative.com/p/sound-blaster/sound-blaster-play-2) or [Blue Snowflake](http://www.bluemic.com/products/snowflake/) 
* Clock - generic part: [DS3231](https://www.amazon.co.uk/s/ref=nb_sb_noss?field-keywords=DS3231+for+pi) or similar.
* [Memory card](https://www.google.co.uk/search?q=SD+micro) - any microSD format card.  [More guidance](/documentation/memory_cards/) (&#8776;£20.00 for 64GB)
* [Primo microphone](http://www.primomic.com/products/pdf/EM172.pdf) buy: [Micbooster](http://micbooster.com/primo-microphone-capsules/65-clippy-em172-microphone.html#/matched_capsules-mono) (&#8776;£24.00)
* [USB battery bank](https://www.amazon.co.uk/s/?keywords=ec+technology+powerbank) (&#8776;£19.00) (runs for 5 days)
* [Waterproof enclosure](http://dri-box.com) I suggest version [200](http://dri-box.com/size-option/size-200) (&#8776;£8.99) and a [Little box](https://www.westonboxes.com/collections/business-card-boxes-1/products/deep-business-card-box) (&#8776;£0.89)

You'll also need a USB-ethernet adapter to set the clock (only needed rarely, so borrow one if you can). Access to a PC/laptop with a card reader is also needed.

### Assemble

[This video](https://youtu.be/2Fq05JlEKjw?t=122) is an old 10 minute guide to building a Solo from 2016. Although the soundcard is now different, most of the advice is useful

1. gather all the components
1. mount the clock module on the raspberry-pi
1. attach the soundcard to the USB port of the raspberry-pi
1. attach the microphone to the soundcard
1. attach the power cord to the Raspberry Pi (do NOT attach a power supply yet)
1. protect in the little box, and main enclosure.

### Prepare (flash) a memory card

Insert the memory card into the card reader of your PC, and follow the
[instructions](/documentation/flashing.html) to flash the SOSI (Solo
Operating System Image) onto the card.  Once flashed, insert the
memory card into the Solo's Raspberry Pi micro SD card socket.


### Do a test recording

To turn it on: attach the power cable to the (charged) USB battery
bank, and watch the Solo boot.  Notice the green light stabilise
(after about 50 seconds) to a "heartbeat" double-flash pattern.

Then allow it to record audio.  Sing, shout, hammer.  Leave it for at
least ten minutes to fill up one complete audio recording file.

Then turn it off: pull the power cord from the battery (at the battery
end - don't disturb the more delicate connector on the Raspberry Pi).

### Recover data from memory card

With the power disconnected, remove the memory card, and insert into
the memory card reader of your PC/laptop.  Follow the
[instructions](/documentation/harvesting.html) for copying data
onto your PC/laptop.

### Listen and analyse

Play the audio files by double clicking on them.  Analyse them with a sound editor - try [Audacity](http://www.audacityteam.org).

### Troubleshoot, or go on to set the clock.

If it didn't work - look at
[troubleshooting](/documentation/troubleshooting.html).  If it did
work, you should now set the clock: [instructions to set the
clock](/documentation/clock.html).
