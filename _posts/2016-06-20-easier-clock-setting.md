---
layout: post
title:  Clock setting now easier
date:   2016-06-20
categories: documentation

---

The process of setting the clock module is now much easier.
Perviously, it involved logging in and typing commands - particularly
tricky for Windows users, but a faff for all, really.

Now, when you need to set the clock, simply attach the Solo to a
computer network using a USB-ethernet adapter, insert a freshly
flashed memory card, and turn it on for 15 minutes.  It automatically
syncronises time from the internet and updates the internal clock, so
that the time and date are remembered for years - until the little
battery on the clock module runs out.

See [here](/documentation/clock.html) for full instructions on setting
the clock this new way.

Remember: syncing the clock can be done any time.  But __must__ be
done after initial assembly and after clock-battery replacement.  If
you care about time-of-day being really accurate, you should sync more
frequently.  The clock module does drift, probably by around 10
seconds per month.

This change, is bundled into the new [SOSI release](/downloads.html).
This software image is also much smaller, after [improving](https://github.com/solo-system/solo/commit/5fd90347b1ee5b056a6a4cffeb09396b1b57af7a) the [thing](https://www.github.com/solo-system/solo/blob/masterimgTools/img-shrink.sh)
that shrinks SOSIs.  This is now the default stable release for
everyone.
