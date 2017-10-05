---
layout: page
title: devices
permalink: /devices.html
weight: 2
isfront: true
---

## Components compatible with Solo

* Need a fake list item for TOC:
{:toc}


Solo is versatile, and many components are swappable for alternatives.

Every Solo is built from roughly the same components: a mini computer
and microphone, with data being stored on a memory card. It is
protected by a weatherproof enclosure, and powered by a
battery. However, there is a lot of flexibility with the individual
components of the Solo, so it can be tailored to your particular
needs.


## Soundcards

The soundcard digitises the analog microphone signal into digital
data, which can then be (optionally modified in software and) stored
on the memory card.

<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color:#aabcfe;
	margin: 0px auto;
}
.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #aabcfe;
	color: #669;
	background-color: #e8edff;
}

.tg th {
	font-family:Arial, sans-serif;
	font-size:14px;
	font-weight:normal;
	padding:10px 5px;
	border-style:solid;
	border-width:1px;
	overflow:hidden;
	word-break:normal;
	border-color:#aabcfe;
	color:#039;
	background-color:#b9c9fe;
}

.tg .jc-title {
	text-align:center;
	vertical-align:middle;
}

.tg .jc-headers {
	background-color:#D2E4FC;
	vertical-align:middle;
	text-align:center;
}

.tg .jc-normalcell{vertical-align:top;text-align:center; vertical-align: middle}
</style>

<table class="tg">
  <tr>
    <th class="jc-title" colspan="6"> Sound Cards </th>
  </tr>
  
  <tr> <td class="jc-headers">name</td> <td
    class="jc-headers">connector</td> <td
    class="jc-headers">sample-rate</td> <td
    class="jc-headers">channels</td> <td class="jc-headers">cost</td>
    <td class="jc-headers">notes</td> </tr>
  
  <tr>
    <td class="jc-normalcell"><a href="https://us.creative.com/p/sound-cards/sound-blaster-play-3">SoundBlaster Play 3</a></td>
    <td class="jc-normalcell">USB</td>
    <td class="jc-normalcell">48,000Hz</td>
    <td class="jc-normalcell">mono</td>
    <td class="jc-normalcell">£19.99<br>$24.99</td>
    <td class="jc-normalcell">This is the recommended soundcard for the Solo. Requires a standard analog microphone with 3.5mm jack</td>
  </tr>

  <tr>
    <td class="jc-normalcell"><a href="https://us.creative.com/p/sound-cards/sound-blaster-play-2">SoundBlaster Play 2</a></td>
    <td class="jc-normalcell">USB</td>
    <td class="jc-normalcell">48,000Hz</td>
    <td class="jc-normalcell">mono</td>
    <td class="jc-normalcell">£19.99<br>$44.99</td> <td class="jc-normalcell">Older version of the SouldBlaster Play 3, Very similar to the newer version above.  Comes with a splitter cable which then offers a standard analog mic input socket (3.5mm).</td>
  </tr>

  <tr>
    <td class="jc-normalcell"><a href="http://www.bluemic.com/products/snowflake/">Blue Snowflake</a></td>
    <td class="jc-normalcell"> USB </td>
    <td class="jc-normalcell"> 44,100Hz </td>
    <td class="jc-normalcell"> mono </td>
    <td class="jc-normalcell">£??<br>$59.00</td>
    <td class="jc-normalcell">This is a soundcard with integrated microphone. It is possible to dismantle the stand to leave a spherical microphone, that sits well popping out of a UPVC plumbing waste pipe, which keeps the USB connector protected from the elements.  I also double protected them by disassembling and covering all the electronics in non-corrosive sillica, and they performed very well. Availability sporadic in UK.</td>
  </tr>
  
  <tr>
    <td class="jc-normalcell"><a href="http://www.dodotronic.com/ultramics/?v=79cba1185463">Dodotronic Ultramic 200/192</a></td>
    <td class="jc-normalcell">USB</td>
    <td class="jc-normalcell">192kHz (ultrasonic) </td>
    <td class="jc-normalcell">mono</td>
    <td class="jc-normalcell">200 Euros (!)</td>
    <td class="jc-normalcell">This is an ultrasonic microphone with
      integrated soundcard that records at 192kHz, for recording (e.g.)
      bats.</td>
  </tr>

  <tr>
    <td class="jc-normalcell">Cirrus Logic Audio Card (CLAC)</td>
    <td class="jc-normalcell">40-way header</td>
    <td class="jc-normalcell">192kHz</td>
    <td class="jc-normalcell">stereo</td>
    <td class="jc-normalcell">discontinued</td>
    <td class="jc-normalcell">The CLAC was the reccomended soundcard in 2016, but is no longer manufacturered.  But is still supported by Solo for existing users.</td>
  </tr>

</table>


## Microphones

Some soundcards have integrated microphones (Blue Snowflake and
Dodotronic) so don't require a separate microphone. The SoundBlaster 2
and 3 soundcards, however, _do_ require a separate microphone.

The recommended microphone in the Solo:Basic is the Primo EM172
[(datasheet)](/lib/EM172.pdf) [Primo
website](http://www.primomic.com/).  Primo make a "capsule" which has
no connectors and needs soldered, but people like
[this](http://micbooster.com/) sell them (in the UK) with cables, and
nicely packaged ('Clippy') with windshelds, and will sell you a
matched pair if you want to do stereo recordings (be sure to choose a
soundcard that can handle stereo input, in this case).

Any microphone that offers a 3.5mm jack should work - including ones
like the [Sennheiser ME-66 microphone](http://en-uk.sennheiser.com/directional-microphone-shotgun-film-broadcast-me-66), which is directional, expensive and requires
an internal battery (that might run out), or really cheap "lavalier"
microphones if you don't care about sensitivity so much.

## Raspberry Pi

There are [several versions](https://www.raspberrypi.org/products/) of
the Raspberry Pi available, and they all work with Solo.  But there
are some things to note:

* The Raspberry Pi zero and zero-W require an USB adapter to be able
  to connect to normal USB soundcards/microphones.  When I bought my
  pi-zeros they came with such an adapter included, but you should
  check.  These 2 versions of the raspberry pi also lack "header pins"
  which are what the clock modules attach to. Again, my pi-zeros 
  arrived with separate header pins that I soldered on to the board 
  so I could then attach the clock module. But that's not for everyone.

* The recommended version is the
[Raspberry Pi 1 model A+](https://www.raspberrypi.org/products/raspberry-pi-1-model/) is the lowest power model, with the pi-zero a close second.  But these two are the only viable options for long term field use, as all other models use much much more power (because of the USB/Ethernet hub, mainly).


## Clock Modules (RTC)

The ["DS3231 for pi"](https://www.amazon.co.uk/s/ref=nb_sb_noss?field-keywords=DS3231+for+pi) is great - cheap and easy to install. The down-side is that you can't change the battery, so once it's dead (after a year or two), you have to bin the whole module. Confusingly, sellers often list these modules as "comes without battery", when in fact they arrive with a battery included. (Perhaps there is some restriction about selling/shipping batteries they are avoiding?)

A second choice is the [PiFace shim](http://www.piface.org.uk/products/piface_clock/) buy: [Farnell](http://uk.farnell.com/piface/shim-rtc/real-time-clock-shim-for-raspberry/dp/2434226) (&#8776;£8.95) - but remember this requires you to buy a battery for it.  This module is slightly harder to install, but has a changeable battery - and the battery is bigger, so lasts longer than the DS3231 above.


## Miscellaneous Accessories

Card extender - a flexible cable to keep the SD card further away from the raspberry pi. (See News section)
