---
layout: post
title:  "New Hardware support: Creative Sound Blaster PLAY! 2"
date:  2017-07-26
categories: documentation

---

The Solo now supports the [Creative Sound Blaster PLAY!
2](https://uk.creative.com/p/sound-cards/sound-blaster-play-2).  This
sound card presents a 3.5mm mic-in socket and records audio up to
48kHz in mono.


[![Solo with SoundBlaster2 dongle](/img/solo-SB-8x6.jpg "Solo with SoundBlaster2 dongle" ){:.some-css-class style="width: 50%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/solo-SB.jpg)

[![Solo with SoundBlaster2 dongle zoom](/img/solo-SB-zoom-8x6.jpg "Solo with SoundBlaster2 dongle zoom" ){:.some-css-class style="width: 50%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/solo-SB-zoom.jpg)


A new SOSI download is available with this enabled:
<form action="http://www.solo-system.org/sosi">
    <input type="submit" value="Go to SOSI download site">
</form>

This sound card is automatically detected and used by Solo, with no
configuration required.  We advise setting the gain using the
SB_VOLUME paramter in amon.conf may be advisable.  Try it out with
your chosen microphone to get the level right.

Currently (July 2017) it costs £20 in the UK and $24 in the USA.

This dongle can be used in place of the (previously recommended)
Cirrus Logic Audio Card which has been discontinued (but is still
supported in Solo, for existing users).

Other USB microphones are also supported - including the Blue Snowflake and the ultrasonic "dodotronic" microphones, however they don't allow you to choose your own microphone.
