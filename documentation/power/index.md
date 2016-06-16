---
permalink: "/documentation/power/index.html"
layout: page
title:  "power matters"
---

## Power supply and consumption

* TOC
{:toc}

### What flavour of electric does it need?

Powering the Solo requires a standard USB powering cable supplying 5
Volts at around 2 Watts.  It connects via the well-known micro-USB
connector - the same that is used to charge mobile phones and tablets.


### Type of supply

The power can come from the mains, USB battery bank, solar, excercise
bike, nuclear power station.  The Solo doesn't care.  The supply
should be _capable_ of providing a peak of 2A (@5V) but the Solo
consumes much less than that when in normal operation.

USB battery banks are the simplest way to get going.  Using a
lead-acid battery via a "cigarette lighter - USB" converter is also
quite easy - the only tricky bit is getting cables to attach to the
large battery terminals reliably.


### Solo power consumption

The Solo:basic consumes 0.35W (71mA @ 5V) in normal operation.
This is the number to assume when you try to calculate how long your
battery will last.  However, at some points in its operation
(notably, at startup), it needs much more, so when choosing a power
supply, you should ensure it can supply about 700mA (about 3.5W).


### Batteries

The USB battery bank recommended for the Solo:basic costs £20 and
lasts 5.5 days. However we've also this year (2016) used bog-standard
car batteries which last about 40 days.  As long as you ensure the
voltage is correct (5V) and take care with connectors, then there is a
wide choice of how to power the Solo.


#### USB battery banks

If you don't know what you are doing - use a USB battery bank.  They
are easy to connect, easy to charge, light to carry, safe and cheap.
We have used the EC technology 22400mAh powerbank very widely (in
2015) with great success.  It's on the components list of the [getting
started](/documentation/getting-started.html) guide.  The Solo:basic
runs for 5.5 days on this battery bank.

#### Car batteries (lead-acid)

In 2016 we have used 12kg vehicle batteries.  These have run the Solo
for 40 days on average. They require DC-DC converters, clamps to
attach to the battery terminals, and they live outside the Solo's
waterproof enclosure, so require independent waterproofing (such as a bin
bag).  The difference between 5.5 days (with USB battery bank) and 40
days has dramatically changed how we undertake the field studies.

If you aren't happy with 40 days, you could buy a bigger lead-acid
battery.

Note that it's probably bad to drain car batteries in the way that we
did with these DC-DC converters, and we will have to see how well they
recharge.  We probably ought to be buying deep-cycle batteries.

Here are some relevant photos

- [car battery and cigarette-lighter converter](https://solo-system.github.io/img/car-solo-cigar-8x6.jpg)
- [DC-DC converter](https://solo-system.github.io/img/car-battery-dcdc-8x6.jpg)
- [the converter we used in 2016](https://solo-system.github.io/img/dcdc-8x6.jpg)
- [converter connected with Wago connectors](https://solo-system.github.io/img/solo-car-dcdc-8x6.jpg)

#### DC-DC converters

The simplest way to convert the 12V of a lead-acid battery down to the
5V needed for the Solo is to use an in-car cigarette lighter
converter, and a cheap connecter with 2 crocodile clips (see first
image above).  However during tests we found that the ones we tested
were wasteful and inefficient.  Instead, we ended up using the
converters shown in the other images, which are intended for
behind-the-dashboard use in vehicles, and are therefore robust and
strong.  They gave much better efficiency in performing the conversion
from 12V->5V (but were far from perfect).  The hunt for the perfect
DC-DC converter is on - suggestions welcome.

I'll try to get some numbers published here about efficiencies of
converters in practice.  

NOTE: the converters didn't have reverse-polarity protection, so if
you connected the croc clips to the battery the wrong way around (or
if you got the cables muddled) you'd blow the DC-DC converter
permanently.


### How long will it run on a certain battery?

Please note that doing power calculations in order to work out how
long a certain battery will last is frought with difficulties, as
there are losses at every stage.  Please be careful.  Empirical
evidence is the best thing (try it out).

The _theory_ says: qork out the number of "watt-hours" in your battery
by multiplying the battery's voltage (in Volts) by the capacity of the
battery (in amp-hours).  Now, the Solo consumes those watt-hours at a
rate of 0.355 Watts.  So divide the Watt-hours (energy in battery) by
the 0.355 watts (speed solo uses that energy) to get the number of
hours it will run for.

Example: The car battery we used
[link](http://www.halfords.com/motoring/bulbs-blades-batteries/car-batteries/halfords-lead-acid-battery-hb063-3-yr-guarantee)
output 12V and was rated at 41 amp-hours.  So the total energy in the
battery is 12x41 = 492 Watt-hours.  So, it will last (492.0 / 0.355) =
1385 hours, which is about 57 days.  But we got only 40, so the
remainder was lost in things like voltge-conversion, resistance in
cables, battery leaking charge over time etc...

### Options for Solar charging

Although I've never done it, you could increase the run-time of your
system by trickle charging your lead-acid battery in-situ using a
solar panel.  Many auto/car shops sell "battery maintainers", which
seem to produce a few watts, which might make a small difference.  Here are some thoughts:

- Ensure the solar charging unit has a diode so it doesn't drain power
  away from the battery at night.

- Bigger solar panels will obviously refill the battery more quickly.
  At some point you'll be filling faster than the Solo is consuming.
  Be sure to not over charge the battery (use a charge controller) for
  larger solar panels.

- ensure the 12-5v DC-DC converter can handle the over-voltage that
  the solar charger applies to the battery (all in-car/auto converters
  should handle this).

- I don't know what I'm talking about.  So be careful, and consult an
  expert (not me).

- [Here's](https://www.youtube.com/watch?v=47CcB3EKpjw) a video about
  how (not) to do it.  

A good place to look for such things might be boat/yacht/RV/caravan
shops.


### What affects the consumption of the Solo

Sample rate, mono/stereo, card-size do NOT affect the power
consumption of the Solo.  So ... nothing.  It's 0.35 Watts, regardless.


### What about a calendar mode if I don't want 24/7 recording to save power

Good question.  There is currently no calendar mode, because the
underlying Raspberry Pi miniPC doesn't use any less power if it stops
recording audio.  Disappointingly, it lacks good low-power state to
hibernate into.

A calendar mode would save space on the memory card, however, allowing
you to get away with smaller microSD cards.  In deployments thus far,
people have been more interested in collecting 24/7 data
opportunistically and deleting what they didn't want.  Memory cards
are quite cheap.  Nobody has deleted their "unwanted" data yet, which
is telling.

That said, a calendar mode would not be hard to add to the software,
and it's probably near the top of the list for new functionality.  Ask
if you want it.  And tell me what your schedule would be, so I can get
an idea of what people want.

###  What about things like the Witty-Pi

I tried that - it causes interference with the ADC resulting in a buzz
on the recordings.  This is probably due to it's proximity to the
Cirrus Logic Audio Card, but I haven't investigated further.


### Power calculations

We will work in Watts and Watt-hours throughout.  The EC technology battery
contains: 22,300mAh @ 3.7v = (through `power = voltage * current`) =
82.5 Wh (Watt-hours) of energy.

{{ TODO - get photo of ectechnology battery and zoom in on it's info-panel }}

The Solo consumes this a a rate of 0.35 Watts.  So this battery should
theoretically last (82.5 Wh / 0.35W ) = 235 hours (9.8 days).  However
in practice we get 5.5 days from these battery banks.  I expect this
is due to conversion losses as we move between voltages.

The conclusion is that the EC tech battery lasts between 5 and 6 days.
