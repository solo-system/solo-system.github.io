---
layout: post
title:  "Power experiments - failed."
date:   2016-07-03
categories: documentation

---

Running the entire Solo from 3.3 volts works, but isn't any more
power-efficient.

The usual way of powering the Solo, via the well-known USB cable,
supplies the Raspberry Pi with 5 Volts.  This is immediately reduced
to 3.3V on-board; enough for everything we use. (It wouldn't be able
to pass 5V out through the USB socket, but we don't use that).  I had
been sure that this voltage conversion was lossy - probably using a
linear regulator, which simply burns off the unwanted 1.7 volts
(appearing as heat).  I anticipated (wrongly) there was a
(5.0-3.3)/5.0 = 34% reduction in power usage at my finger tips.  Great
news for run-times on battery deployments.  I thought.

[![Solo on 3.3v power](/img/power-experiments-led.jpg "Solo on 3.3v power" ){:.some-css-class style="width: 60%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/power-experiments-led.jpg)

But it didn't work.  I got no benefit at all.  Based on the normal
supply voltage of 5V, the Solo consumes 70mA = 350mW (see here).
Disappointingly, the results of today's experiment showed that,
powered from 3.3v it consumed 100mA = 330mW.  I suppose it is a small
gain, but not what I'd expected, not worth the hassle of unfamiliar
cabling for most people.

<hr>

Annoyed and cross, I took a pair of pliers to the green LED on the
CLAC.  This one can't be controlled in software, as it's connected
directly across the 3.3V power rail, and it's always annoyed me that
it wastes power.

Again, I got nothing at all in power reduction:

[![Without LED - no difference](/img/power-experiments-without-led.jpg "without LED - no difference" ){:.some-css-class style="width: 60%; border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/power-experiments-without-led.jpg)

Looking at the schematic, I see it's in series with a 1k resistor, so
the best I could _ever_ hope for would be 1 mA.  But I didn't even get
that.

[![schematic](/img/schematic-snippet.png "schematic of CLAC" ){:.some-css-class style="border: 1px solid #e0e0e0; margin-left: 10px; float: right"}](/img/schematic-snippet.png)

Conclusion: The Raspberry Pi A+ must have a much better 5v-3.3V
regulator than I'd assumed.  Whatever stories I'd read of people
clipping out their Linear Regulators must now be old news.

We can't do any better than good-old USB power - which is, in some
ways, a good result.


