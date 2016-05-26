---
layout: page
title: Memory Cards
permalink: documentation/memory_cards/index.html
---

# Memory cards.

All memory cards used in the solo must fit into the Raspberry Pi.  The
physical format must be micro-SD.

The Raspberry Pi can handle SDHC and SDXC cards (this includes pretty
mucy every card you'll ever see).

## Capacities

micro-SD cards come in sizes up to (currently 256Gb).

[table](table4.html)

## Recording duration 

You need to balance: how long you want to record for, and what your
audio settings (sample rate, stereo/mono).

The Solo Operating System occupies about 1.5Gb of any memory card -
this space can not be used for storage of audio.

The Solo-Basic defaults to mono, 16-bit, 16kHz recordings.  This
yeilds the following table:

Flip this table

Card Capacity


| Card Capacity  | Sample Rate | channels | duration |
| Gbytes         | Hz          |          |  days    |
|----------------|-------------|----------|----------|
| 8 Gb           | 16000       | 1        | 2.3      |
| 16 Gb          | two         | three    | 5.2      |
| 32 Gb          | two         | three    | 11       |
| 64 Gb          | two         | three    | 22       |
| 128 Gb         | two         | three    | 45       |
| 256 Gb         | Atwo        | Athree   | 92       |
|----------------|-------------|----------|----------|

For Stereo storage doubles, so capture-time drops correspondingly.
Similarly for Sample Rate.  

## The sums behind it:

The equation is (S-1.5) / (1*2*16000*36000) = hours of recording, where:

S is the size of the memory card in Gb.
(the 1.5 is the number of Gb we lose to the Solo Operating System).
The 2 is bits per sample   (16bit sample is 2 bytes)
the 16000 is samples per second
the 3600 is seconds per hour

This gives days per card.
