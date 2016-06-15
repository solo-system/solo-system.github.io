---
layout: page
title: Getting Started with Solo Basic
permalink: documentation/getting-started.html
---

## Getting Started -  Solo:basic

### Purchase components

These are the components needed to build the Solo-basic:

* [Raspberry Pi model A+](https://www.raspberrypi.org/products/model-a-plus/) (&#8776;£15.00)
* [Cirrus Logic Audio Card](https://uk.farnell.com/wolfson-microelectronics/cirrus-logic-audio-card/cirrus-logic-audio-card-for-raspberry/dp/2448312) (&#8776;£25.44)
* [PiFace Clock Module](http://www.piface.org.uk/products/piface_clock/) buy: [Farnell](http://uk.farnell.com/piface/shim-rtc/real-time-clock-shim-for-raspberry/dp/2434226) (&#8776;£8.95)
* [Watch battery (CR1220)](https://www.google.co.uk/search?q=CR1220) Generic part, widely available. buy: [Farnell](http://uk.farnell.com/multicomp/cr1220/coin-cell-lithium-3v-38mah-cr1220/dp/2065165) (&#8776;£0.70)
* Memory card - any microSD format card.  More [here](/documentation/memory_cards/) (&#8776;£20.00 for 64GB)
* [Primo microphone](http://www.primomic.com/products/pdf/EM172.pdf) buy: [Micbooster](http://micbooster.com/primo-microphone-capsules/65-clippy-em172-microphone.html#/matched_capsules-mono) (&#8776;£24.00)
* [USB battery bank](https://www.amazon.co.uk/s/?keywords=ec+technology+powerbank) (&#8776;£19.00)
* [Waterproof enclosure](http://dri-box.com) I suggest version [200](http://dri-box.com/size-option/size-200) (&#8776;£8.99)
* [Little Box](https://www.westonboxes.com/collections/business-card-boxes-1/products/deep-business-card-box) (&#8776;£0.89p)

You'll also need a USB-ethernet adapter to set the clock (this is
rare, so borrow one if you can). Also access to a PC/laptop with a card-reader.

### Assemble

See the accompanying [video](https://youtu.be/2Fq05JlEKjw?t=122)

1. gather all the components needed
1. place the tiny battery into the clock module (positive side up)
1. mount the clock module on the Raspberry Pi [(product video)](https://www.youtube.com/watch?v=mBUGtiDrHKc)
1. mount the Cirrus Logic Audio Card on the Raspberry Pi and attach fixing screws
1. attach the microphone to the pink socket on the Cirrus Logic Audio Card
1. attach the power cord to the Raspberry Pi (do NOT attach a power supply yet)
1. protect in the small enclosure
1. lay the small enclosure into the DriBox waterproof enclosure


### Prepare (flash) a memory card

Insert the memory card into the card reader of your PC, and follow the
[instructions](/documentation/flashing.html) to flash the SOSI (Solo operating system image) onto
the card.  Once flashed, insert the memory card into the Solo's
raspberry pi SD card socket.

### Set the clock

Follow the [instructions to set the clock](/documentation/clock.html)
. It should be connected to a network and left to run for 15
minutes. This step can be skipped for the moment if you like, but your
audio files will be wrongly time-stamped until the clock is properly
set.

### Turn it on

Attach the power cable to the (charged) USB battery bank, and watch
the Solo boot.  Notice the green light stabilise (after about 50
seconds) to a "heart-beat" double-flash pattern.

### Allow it to record audio.

Sing, shout, hammer.  Leave it for at least ten minutes to fill up one
complete audio recording file.

### Turn it off 

Pull the power cord from the battery (at the battery end - don't
disturb the more delicate connector on the Raspberry Pi).

### Recover data from memory card.

With the power disconnected, remove the memory card, and attach to
your PC/laptop.  Follow the [instructions]( for harvesting data onto
your PC/laptop.

### Listen and analyse.

Play the audio files by double clicking on them.  Analyse them with a sound editor - try [Audacity](http://www.audacityteam.org)

### Done

If it didn't work - look at
[troubleshooting](/documentation/troubleshooting.html).  If it did
work, buy me a yacht. Ta.
