---
layout: documentation
permalink: "/documentation/microphones.html"
layout: page
title:  "Microphones"
---

* TOC
{:toc}

# Microphones and Soundcards

All choices of soundcard will require a microphone (except the Blue/Snowflake which has an integrated mic), and present a standard 3.5mm female microphone socket.

### Basics

The recommended microphone is the Primo EM172
[(datasheet)](/lib/EM172.pdf) [Primo
website](http://www.primomic.com/).  Primo make a "capsule" which has
no connectors and needs soldered, but people like
[this](http://micbooster.com/) sell them (in the UK) with cables, and
nicely packaged ('Clippy') with windshelds.

### Connecting the microphone

On the CLAC, the microphone is connected to the pink "line-in"
socket. On other soundcards the socket is labelled (don't confuse it
with the headphone socket). Make sure the plug is firmly attached.
Ensure the metal contacts on the microphone plug are clean.

### Stereo or mono

If your sound card supports it (for example using the CLAC), you might
prefer to use a pair of stereo microphones.  You will need to tell the
Solo whether it should record in stereo or mono.  Stereo recordings
occupy twice as much space on the memory card, so halve the available
duration.

The relevant Solo Confirugation option is "SOLO_CHANNELS" - see more
[configuration page](configuration.html).

### Configuring volume levels, and mono/stereo

Each type of microphone/soundcard will require different volume (gain)
levels to be set inside the Solo Configuration file.  You should try
out a few values until you get it right - bearing in mind that the
audio you are interested in analysing may be distant - and therefore
quiet, so err on the side of higher gains.  Shouting into the
microphone at close-range is not a good way to establish gain settings
- try it out in the conditions you will actually be recording in. See
[configuration page](configuration.md/#volume) for more.

# Hydrophones

People are successfully using the Solo with [this hydrophone](http://www.hightechincusa.com/products/hydrophones/marinemammal.html) and the SB3
sound card.
