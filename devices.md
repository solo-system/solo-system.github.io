---
layout: page
title: devices
permalink: /devices.html
weight: 2
isfront: true
---

## Devices

Every Solo is built from roughly the same components: a mini computer and
microphone, with data being stored on a memory card. It is protected
by a weatherproof enclosure, and powered by a battery.

[![what is this](/img/solo-boxed.jpg "boxed Solo" ){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff; float: right"}](/img/solo-boxed.jpg)<br>

However, there is a lot of flexibility with the individual components
of the Solo, so it can be tailored to your particular needs.

### Solo:basic

**Warning: Low stock worldwide on the Cirrus Logic Audio Card **

[![what is this](/img/solo-naked-powerbank-8x6.jpg "inside a Solo" ){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff; float: right"}](/img/solo-naked-powerbank-8x6.jpg)

The Solo:basic is a standardised system that fulfills most needs.

It will record continuously for 5.5 days using the USB powerbank which
fits inside the enclosure, and produce mono, 16kHz, 16 bit audio files,
each 10 minutes long, each labelled with the date and time it was recorded.


The Solo:basic is easy to assemble - head to the
[Getting&nbsp;Started](/documentation/getting-started.html) guide, or
have a look at the [assembly video](https://youtu.be/2Fq05JlEKjw?t=122).

<hr>

# Solo:usb-mic

Solo supports (some) USB microphones.  Both the __Dodotronic
UltraMic 200kHz__ ultrasonic microphone and the __Blue Snowflake__ are
recognised without any configuration required.

[![what is this](/img/dodo1.jpg "Solo:usb-mic with dodotronic 200kHz microphone" ){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff"}](/img/dodo1.jpg)<br>

[![what is this](/img/dodo2.jpg "Solo:usb-mic with dodotronic 200kHz microphone" ){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff"}](/img/dodo2.jpg)<br>

[![what is this](/img/snowflake1.jpg "Solo:usb-mic with Blue Snowflake microphone" ) {:.some-css-class style="width: 50%; border-left: 10px solid #ffffff"}](/img/snowflake1.jpg)<br>


This hardware configuration does **not** need the Cirrus Logic Audio
Card, so is easier to assemble.  The software (SOSI) is the same as
for the Solo:basic.  The RTC clock module is obviously supported too.


* History

The oldest Solos - before the Cirrus Logic Audio Card (CLAC) existed,
used USB microphones (back in 2014), so USB microphones are well tested.


* Technical note on Dodotronic ultrasound microphones.

The raspberry pi version A+ board does NOT accept the Dodotronic
Ultramic.  So if you want to use the Ultramic, you must use one of the
other raspberry pi boards. (The problem stems from the system
incorrectly assessing the USB bus to not be fast enough for the data
rates of the USB mic. On all other raspberry pi boards, there is an
onboard USB hub, which eliminates the error).  The A+ board works fine
with the Snowflake microphone since it has lower data rates.

Note also that the Solo:basic (with the CLAC) supports the same high
sample rates that the Dodotronic does (up to 192kHz) - you just need
to supply your own ultrasonic analog microphone.
