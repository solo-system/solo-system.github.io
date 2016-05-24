---
permalink: "/documentation/power/index.html"
layout: page
title:  "power matters"
---

## What flavour of electric does it need?

Powering the Solo requires a standard USB powering cable supplying 5
volts at around 2 watts.  It connects via the well-known micro-USB
connector - the same that is used to charge mobile phones and tablets.


## Type of supply.

The power can come from the mains, USB battery bank, solar, excercise
bike, nuclear power station.  The solo doesn't care.  The supply
should be _capable_ of providing a peak of 2A (@5V) but the Solo
consumes much less than that when in normal operation.

USB battery banks are the simplest way to get going.  Using a
lead-acid battery via a "cigarette lighter - USB" converter is also
quite easy - the only tricky bit is getting cables to attach to the
large battery terminals reliably.


## Solo power consumption.

The Solo-basic is rated at 0.65 Watts.  (130mA @ 5v)


## Batteries

The only battery that is well tested is the EC technology USB power
bank, which has a capacity of 22300mAh.  It's on the bill of
materials.  The solo-basic runs for 5.5 days on this battery bank.

More recently 12Kg vehicle batteries have been deployed.  Results are
arriving now (May 2016), and so far they have lasted 43 days, and 34
days.  We don't understand this discrepancy yet - most systems are
stil running (as of 24 May 2016).


## What affects the consumption of the Solo

Sample rate, mono/stereo, card-size do NOT affect the power
consumption of the Solo.  So ... nothing.  It's 0.65 Watts period.


## What about a calendar mode if I don't want 24/7 recording to save power

Good question.  There is currently no calendar mode, because the
underlying Raspberry Pi miniPC doesn't use any less power if it stops
recording audio.  Disappointingly, it lacks good low-power state to
hibernate into.


##  What about things like the Witty-Pi

I tried that - it causes interference with the ADC resulting in a buzz
on the recordings.  This is probably due to it's proximity to the
Cirrus Logic Audio Card, but I haven't investigated further.


## Power calculations:

We'll work in watt-hours.  The EC technology battery contains:
22,300mAh @ 3.3v = (through power=volts*current) = 73.6 Wh
(Watt-hours) of energy.

{{ TODO - get photo of ectechnology battery and zoom in on it's info-panel }}

The Solo consumes this a a rate of 0.65 Watts.  So this battery should
theoretically last (73.6 Wh / 0.65W ) = 113 hours (4.7 days).  Infact
we get 5.5 days from these battery banks.  Therefore 0.65W might be an
*over*-estimate of the Solo's power consumption.  Or perhaps the
batter bank has a larger-than-stated capacity.

