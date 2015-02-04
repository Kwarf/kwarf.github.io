---
layout: post
title: "A look at the Spektrum satellite protocol"
date: 2013-08-28 21:27:57
categories: RC
---
I'm planning on adding Spektrum satellite support to the <a href="http://ardupilot.com/">APM</a> (specifically the PPM encoder on the APM2.5) so the first step in the process is to take a look at the actual communication.

From what I've already read online at different places I know that it's a regular serial data stream at `115200/8-N-1`, however some of the other info I found regarding the actual protocol didn't seem very consistent.

I will be testing both an official Spektrum DSM2 sat and an OrangeRX R100. I don't have an actual Spektrum transmitter, I'm using a DM8 module with a few modifications to make it fit my Hitec Aurora 9. This also means that I can't really configure anything in the module like frame rates or other fancy stuff.

My measurements were quite interesting, since the protocol looked different on the two satellites. Below is one frame from the R100, looking pretty much as I expected from reading online, with a `0x03 0x02` header followed by 2 bytes for each channel (7 channels total).

{% include image.html url="/uploads/2013/08/R100_1.png" %}

This frame was sent every 22ms as expected, since it follows the same frame rate as regular old-school PPM.

{% include image.html url="/uploads/2013/08/R100_2.png" %}

However when I connected the official Spektrum sat I noticed that it was sending the data differently. The first thing I noticed was that the header differed, on this one it was `0x00 0x00`, but it was followed by 7 channels just like the R100.

{% include image.html url="/uploads/2013/08/DSM2_1.png" %}

Then I zoomed in on the next frame and saw that 5 channels showed up as just `0xFFFF`.

{% include image.html url="/uploads/2013/08/DSM2_2.png" %}

The reason for this becomes apparent when you zoom out and see that there's only 11ms between the frames. This is because the satellite is reporting 9 channels, and you can only fit 7 channels in a single frame. So the satellite sends channel 1-7 in the first frame and 8-9 in the second one, at double the normal frame rate. I fear that this could possibly cause some problems when implementing support in the APM, but more on this in a later post.

{% include image.html url="/uploads/2013/08/DSM2_3.png" %}

It didn't take that long to figure out why the two satellites behaved differently though. The OrangeRX sat had been used with a 6 channel OrangeRX <span style="font-family: Verdana,Arial,Helvetica,sans-serif;">R610</span> receiver, and the Spektrum one with a 9 channel AR9000.

So the satellite uses different reporting modes depending on the type of receiver it was connected to when the binding occured. I verified this by re-binding the satellites with the respective receivers and measure that the reporting mode actually did change.

