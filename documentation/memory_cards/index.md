---
layout: page
title: Memory Cards
permalink: documentation/memory_cards/index.html
---

![](/img/micro-sd.jpg "micro SD card" ){:.some-css-class style="width: 25%; float: right"}

# Memory cards.

All memory cards used in the Solo must be micro-SD sized, so that they fit into the slot on the Raspberry Pi.

## Capacities

micro-SD cards come in sizes up to (currently 256Gb). This table shows
their capacity in terms of how many hours (or days) they can store,
for lots of different recording parameters.  The default setup is
16000 Hz sample rate, mono.

<style type="text/css">
	.tg  {border-collapse:collapse;border-spacing:0;border-color:#bbb;}
	.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#bbb;color:#594F4F;background-color:#E0FFEB;}
	.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:#bbb;color:#493F3F;background-color:#9DE0AD;}
	.tg .tg-s6z2{text-align:center}
	.tg .tg-2c7p{background-color:#C2FFD6;text-align:center}
	.tg .tg-baqh{text-align:center;vertical-align:top}
	.tg .tg-0l6a{background-color:#C2FFD6;text-align:center;vertical-align:top}
</style>
<table class="tg">
	<tr>
		<th class="tg-baqh" colspan="2">Recording Settings</th>
		<th class="tg-baqh" colspan="6">Memory card capacity</th>
	</tr>
	<tr>
		<td class="tg-s6z2">Sample Rate</td>
		<td class="tg-2c7p">Channels</td>
		<td class="tg-s6z2">8GB</td>
		<td class="tg-2c7p">16GB</td>
		<td class="tg-s6z2">32GB</td>
		<td class="tg-2c7p">64GB</td>
		<td class="tg-baqh">128GB</td>
		<td class="tg-0l6a">256GB</td>
	</tr>
	<tr>
		<td class="tg-s6z2" rowspan="2">8kHz</td>
		<td class="tg-2c7p">mono</td>
		<td class="tg-s6z2">112 hrs /<br>4.7 days</td>
		<td class="tg-2c7p">251 hrs /<br>10 days</td>
		<td class="tg-s6z2">529 hrs /<br>22 days</td>
		<td class="tg-2c7p">1085 hrs /<br>45 days</td>
		<td class="tg-baqh">2196 hrs /<br>91 days</td>
		<td class="tg-0l6a">4418 hrs /<br>184 days</td>
	</tr>
	<tr>
		<td class="tg-2c7p">stereo</td>
		<td class="tg-s6z2">56 hrs / <br>2.3 days</td>
		<td class="tg-2c7p">112 hrs /<br>4.7 days</td>
		<td class="tg-s6z2">264 hrs / <br>11 days</td>
		<td class="tg-2c7p">542 hrs /<br>22 days</td>
		<td class="tg-baqh">1098 hrs /<br>45 days</td>
		<td class="tg-0l6a">2209 hrs /<br>92 days</td>
	</tr>
	<tr>
		<td class="tg-s6z2" rowspan="2">16kHz</td>
		<td class="tg-2c7p">mono</td>
		<td class="tg-s6z2">56 hrs /<br>2.3 days</td>
		<td class="tg-2c7p">125 hrs/<br>5.2 days</td>
		<td class="tg-s6z2">263 hrs /<br>11 days</td>
		<td class="tg-2c7p">524 hrs /<br>22 days</td>
		<td class="tg-baqh">1098 hrs /<br>45 days</td>
		<td class="tg-0l6a">2209 hrs/<br>92 days</td>
	</tr>
	<tr>
		<td class="tg-2c7p">stereo</td>
		<td class="tg-s6z2">28 hrs /<br>1.1 days</td>
		<td class="tg-2c7p">62 hrs /<br>2.6 days</td>
		<td class="tg-s6z2">132 hrs /<br>5.5 days</td>
		<td class="tg-2c7p">271 hrs/<br>11 days</td>
		<td class="tg-baqh">549 hrs /<br>22 days</td>
		<td class="tg-0l6a">1104 hrs /<br>46 days</td>
	</tr>
	<tr>
		<td class="tg-s6z2" rowspan="2">44.1kHz</td>
		<td class="tg-0l6a">mono</td>
		<td class="tg-baqh">20 hrs /<br>0.8 days</td>
		<td class="tg-0l6a">45 hrs/<br>1.9 days</td>
		<td class="tg-baqh">96 hrs /<br>4.0 days</td>
		<td class="tg-0l6a">196 hrs/<br>8.2 days</td>
		<td class="tg-baqh">398 hrs/<br>16 days</td>
		<td class="tg-0l6a">801 hrs/<br>33 days</td>
	</tr>
	<tr>
		<td class="tg-0l6a">stereo</td>
		<td class="tg-baqh">10.2 hrs /<br>0.4 days</td>
		<td class="tg-0l6a">22.8 hrs /<br>0.95 days</td>
		<td class="tg-baqh">48 hrs/<br>2.0 days</td>
		<td class="tg-0l6a">98 hrs /<br>4.1 days</td>
		<td class="tg-baqh">199 hrs /<br>8.3 days</td>
		<td class="tg-0l6a">400 hrs/<br>16 days</td>
	</tr>
	<tr>
		<td class="tg-s6z2" rowspan="2">192kHz</td>
		<td class="tg-0l6a">mono</td>
		<td class="tg-baqh">4 hrs /<br>0.19 days</td>
		<td class="tg-0l6a">10 hrs /<br>0.43 days</td>
		<td class="tg-baqh">22 hrs /<br>0.91 days</td>
		<td class="tg-0l6a">45 hrs /<br>1.8 days</td>
		<td class="tg-baqh">91 hrs /<br>3.8 days</td>
		<td class="tg-0l6a">184 hrs/<br>7.6 days</td>
	</tr>
	<tr>
		<td class="tg-0l6a">stereo</td>
		<td class="tg-baqh">2.3 hrs /<br>0.09 days</td>
		<td class="tg-0l6a">5.2 hrs /<br>0.21 days</td>
		<td class="tg-baqh">11 hrs/<br>0.45 days</td>
		<td class="tg-0l6a">22 hrs/<br>0.94 days</td>
		<td class="tg-baqh">45 hrs/<br>1.9 days</td>
		<td class="tg-0l6a">92 hrs/<br>3.8 days</td>
	</tr>
</table>


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
