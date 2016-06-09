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
volts at around 2 watts.  It connects via the well-known micro-USB
connector - the same that is used to charge mobile phones and tablets.


### Type of supply.

The power can come from the mains, USB battery bank, solar, excercise
bike, nuclear power station.  The solo doesn't care.  The supply
should be _capable_ of providing a peak of 2A (@5V) but the Solo
consumes much less than that when in normal operation.

USB battery banks are the simplest way to get going.  Using a
lead-acid battery via a "cigarette lighter - USB" converter is also
quite easy - the only tricky bit is getting cables to attach to the
large battery terminals reliably.


### Solo power consumption.

The Solo:Basic consumes 0.35 Watts (71mA @ 5v) in normal operation.
This is the number to assume when you try to calculate how long your
battery will last.  However, at some points in it's operation
(notably, at startup), it needs much more, so when choosing a power
supply, you should ensure it can supply about 700mA (about 3.5 Watts).


### Batteries

The only battery that is well tested is the EC technology USB power
bank, which has a capacity of 22300mAh.  It's on the components list
of the [getting started](/documentation/getting-started.html) guide.
The solo-basic runs for 5.5 days on this battery bank.

More recently 12Kg vehicle batteries have been deployed.  Results are
arriving now (May 2016), and so far they have lasted 43 days, and 34
days.  We don't understand this discrepancy yet - most systems are
stil running (as of 24 May 2016).

Please note that doing power calculations to work out how long a
certain battery will last is frought with difficulties, as there are
losses at every stage.  Please be careful.  Empirical evidence is the
best thing (try it!).


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


### Power calculations:

We will work in Watts and Watt-hours throughout.  The EC technology battery
contains: 22,300mAh @ 3.7v = (through `power = voltage * current`) =
82.5 Wh (Watt-hours) of energy.

{{ TODO - get photo of ectechnology battery and zoom in on it's info-panel }}

The Solo consumes this a a rate of 0.35 Watts.  So this battery should
theoretically last (82.5 Wh / 0.35W ) = 235 hours (9.8 days).  However
in practice we get 5.5 days from these battery banks.  I expect this
is due to conversion losses as we move between voltages.

The conclusion is that the EC tech battery lasts between 5 and 6 days.
