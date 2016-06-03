---
layout: post
title: "RS2205 4S propeller tests"
date: 2016-06-03 19:30:00
categories: RC
---
I'm building a new race quadcopter since I want more performance than my current
one (3S with 1804 motors). I decided on [EMAX RS2205](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=99497)
motors with [DYS XM20A](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=101113)
ESCs. I went with the [EMAX NightHawk 200](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=96498)
frame because I like the lower top plate to keep the CG close to the center. The
4mm bottom plate should be strong enough to hold for most crashes as well.

As usual when ordering from HobbyKing I purchased a few extra things, like a
[thrust stand](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=77117)
(they have a [newer V2](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=84691)
but since it was out of stock and I already own a power meter I got the v1).

So I decided to get a few different 5" props and do a comparison, unfortunately
HK has annoyingly low limits until you get _"parcel too big, please split into
two orders"_ errors, so I could only fit 3 different types this time. I'll update
this post if I order more later on.

I'm running the motor from a 4S 4400mAh 65-120C to be sure that the battery
doesn't limit the current draw. I'm measuring current and effect with a
_Turnigy 130A Watt Meter and Power Analyzer_ that I can't find on HK any longer.
I'm also measuring the RPMs with a [Turnigy Tachometer](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=33947)
but I don't know how good my measurements were, it seemed a bit flaky, maybe due
to low lighting. I didn't include all the data in these graphs, but everything
is available in a [Google Docs spreadsheet](https://docs.google.com/spreadsheets/d/1AJzXWzlRQFTS82IgvHtQYzruaN4Fn8vfWq5LlZIzqk8/edit?usp=sharing).

The props I tested was a spare [EPP5030](http://www.rcmart.hk/5x3-epp5030-counter-rotating-propellers-gm-series-ccw-black-4pcs-p-7029.html)
from my old machine, a [Gemfan 5045BN](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=101166),
a [Gemfan 5046BN](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=89341)
and a brutal [Gemfan 5550BN](http://www.hobbyking.com/hobbyking/store/uh_viewitem.asp?idproduct=96602).
Note that the 5550 will not fit the EMAX 200 frame since it's too large at 5,5".

{% include image.html url="/uploads/2016/06/thrust.png" %}

{% include image.html url="/uploads/2016/06/current.png" %}

I obviously wouldn't recommend the 5550BN when using a 20A ESC since it pulls over
40A at full throttle, even the 5046BN is a bit high at 33,8A, but the 5045BN
_should_ be safe, since most 20A ESCs should be able to handle burst currents of
around 25~30A.
