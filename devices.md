---
layout: page
title: devices
permalink: /devices.html
weight: 2
isfront: true
---

## Devices

Every Solo is built from roughly the same components: a mini computer
and microphone, with data being stored on a memory card. It is
protected by a weatherproof enclosure, and powered by a
battery. However, there is a lot of flexibility with the individual
components of the Solo, so it can be tailored to your particular
needs.

[![what is this](/img/solo-boxed.jpg "boxed Solo" ){:.some-css-class style="width: 40%; border: 5px solid #ffffff;  display:block;"}](/img/solo-boxed.jpg)<br>

<hr>

# Solo: USB-soundcard (add your own choice of analog microphone)

The [Creative Sound Blaster PLAY!
2](https://uk.creative.com/p/sound-cards/sound-blaster-play-2)
presents a 3.5mm mic-in socket and records audio up to 48kHz in mono.

[![Solo with SoundBlaster2 dongle](/img/solo-SB-8x6.jpg "Solo with SoundBlaster2 dongle" ){:.some-css-class style="width: 40%; border: 1px solid #e0e0e0; display:block;"}](/img/solo-SB.jpg)

[![Solo with SoundBlaster2 dongle zoom](/img/solo-SB-zoom-8x6.jpg "Solo with SoundBlaster2 dongle zoom" ){:.some-css-class style="width: 40%; border: 1px solid #e0e0e0; display:block;"}](/img/solo-SB-zoom.jpg)

This sound card is automatically detected and used by Solo, with no
configuration required.  We advise setting the gain using the
SB_VOLUME paramter in amon.conf may be advisable.  Try it out with
your chosen microphone to get the level right.  Currently (July 2017)
the USB soundcard costs costs £20 in the UK and $24 in the USA.

This USB soundcard should be used in place of the (previously recommended)
Cirrus Logic Audio Card which has been discontinued (but is still
supported in Solo, for existing users).

<hr>

# Solo: USB-microphone (integrated microphone)

Solo also supports (some) USB microphones (combined soundcard+microphone in one product). Currently the Dodotronic __UltraMic 200kHz__ ultrasonic microphone and the __Blue Snowflake__ are
recognised without any configuration required.

[![what is this](/img/snowflake1s.jpg "Solo with Blue Snowflake microphone" ){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff"}](/img/snowflake1s.jpg)<br>

[![what is this](/img/dodo1s.jpg "Solo with dodotronic 200kHz microphone" ){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff"}](/img/dodo1s.jpg)<br>

[![what is this](/img/dodo2s.jpg "Solo with dodotronic 200kHz microphone" ){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff"}](/img/dodo2s.jpg)<br>

The software (SOSI) is the same no matter which microphone/soundcard combination is used.

<hr>
### OLD: Solo:basic

<b> **Warning: This product has been discontinued.  This section is maintained for existing owners. ** </b>

[![what is this](/img/solo-naked-powerbank-8x6.jpg "inside a Solo"){:.some-css-class style="width: 50%; border-left: 10px solid #ffffff; display:block"}](/img/solo-naked-powerbank-8x6.jpg)

The Solo:basic is a standardised system that fulfills most needs.

It will record continuously for 5.5 days using the USB powerbank which
fits inside the enclosure, and produce mono, 16kHz, 16 bit audio files,
each 10 minutes long, each labelled with the date and time it was recorded.

The Solo:basic is easy to assemble - head to the
[Getting&nbsp;Started](/documentation/getting-started.html) guide, or
have a look at the [assembly video](https://youtu.be/2Fq05JlEKjw?t=122).

<div></div>
<hr>



# History

The oldest Solos - before the Cirrus Logic Audio Card (CLAC) existed,
used USB microphones (back in 2014), so USB microphones are well tested.

<hr>
# Technical note on Dodotronic ultrasound microphones.

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
