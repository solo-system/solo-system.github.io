---
layout: documentation
permalink: "/documentation/microphones.html"
layout: page
title:  "Microphones"
---

* TOC
{:toc}


# Microphones and Soundcards

This document covers microphones and soundcards for the Solo.

The Solo accepts most standard microphones:

* standard 3.5mm stereo/mono microphone connector.
* a few volts of **plug-in-power** is supplied for microphones that want
  it.
* both __mono__ and __stereo__ microphones are supported
* No mic?  There are integrated stereo microphones on the circuit
  board - these aren't much use for outoor use, however.


### The Solo:Basic microphone

The recommended microphone in the Solo:Basic is the Primo EM172
[(datasheet)](/lib/EM172.pdf) [Primo
website](http://www.primomic.com/).  Primo make a "capsule" which has
no connectors and needs soldered, but people like
(this)[http://micbooster.com/] sell them (in the UK) with cables, and
nicely packaged ('Clippy') with windshelds, and will sell you a
matched pair if you want to do stereo recordings.

### Connecting the microphone

The microphone is connected to the pink "line-in" socket on the audio
board of the Solo.  Make sure it is firmly home remembering to handle
the electronics carefully.  Ensure the metal contacts on the
microphone plug are clean, and, once inserted, I supersticiously turn
the jack back and forth a few times believing this will create a
stronger electrical contact by rubbing off any rust or debris.  I have
no firm evidence for this being useful, but it _does no harm_.

### Stereo or mono

Most microphones are mono, but occasionally you might prefer to use
stereo microphones.  (see some ramblings about research applications
 of stereo here).

In any case, you will need to tell the Solo whether it should record
in stereo or mono.  Stereo recordings occupy twice as much space on
the memory card, so halve the available duration.

The relevant Solo Confirugation option is "SOLO_CHANNELS" - see more
[configuration page](configuration.html).

### configuring volume levels, and mono/stereo

Each type of microphone will require different volume (gain) levels to
be set inside the Solo Configuration file.  See here. (TODO).  You
should try out a few values until you get it right - bearing in mind
that the audio you are interested in analysing may be distant - and
therefore quiet, so err on the side of higher gains.  Shouting into
the microphone at close-range is not a good way to establish gain
settings - try it out in the conditions you will actually be recording
in.

There are 2 gains which you should tweak in the configuration file -
SOLO_VOLUME and SOLO_DIGITAL_VOLUME - see more
[configuration page](configuration.md/#volume).

