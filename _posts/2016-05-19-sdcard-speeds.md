---
layout: post
title:  Memory card speed comparison.
date:   2016-05-19
categories: documentation memcards
---

#### Memory card write speeds.

I just bought 6 new memory cards. All 64Gb. All SDXC. All microSD.

write speed | cost in pounds | class / spec | make / model
|---------- | ---------------|--------------|-------------|
8.8 MB/s    |    11.50p		|UHS-1 / class 10  |      Kingston.
17.0 MB/s   |    14.98p  |       UHS-1 / class 10  |      SanDisk Ultra
20.0 MB/s   |    22.44p  | UHS-3 / class 10        | SanDisk Extreme


So: the difference between kingston and SanDisk Ultra was worth paying
for, (twice speed for 4 pounds more).  But the Ultra -> Extreme wasn't
worth it.

These are write speeds (what solo does).  I didn't measure read speeds.

----
experiment setup:
lsusb -t (shows speed of connection on USB devices).

used: dd if=somehting.iso of=/dev/sd? bs=4M ; sync

bs=4M speeds things up. the bigger the better.  40M is no better, though.

bs=512 drops performance to 3.9MB/s
absent drops performance to 3.9MB/s (probably defaults to destn blk size)
