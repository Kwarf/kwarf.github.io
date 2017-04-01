---
layout: page
title: Portfolio
permalink: /portfolio/
---
This is a place where I try to list all the things I've done that are publically
available, as a sort of reference on what I do in my spare time (obviously I
can't show any work related stuff that isn't open source) and what tools and
languages I prefer to use when I get to pick them myself. I've listed everything
chronologically from the most recent and back.

# Ludum Dare 34 (December 2015)
This is what we call a "simultaneous" turn based game, you and all enemies move
all at once, every time you push a key. It was made by me and [Znurre](https://github.com/Znurre).

You start out as a cube, your objective is to reach the flag on each level with
one cube without being killed by worms. Your cubes can pick up different powers
by rolling on different colored ground, and you have the ability to clone cubes,
and controlling them all at once.

As usual this game was written from scratch (no engine) using [SFML 2](https://www.sfml-dev.org/).

__Binaries can be found [here](http://ludumdare.com/compo/ludum-dare-34/?action=preview&uid=7989)
and the source is available on [GitHub](https://github.com/MemoryLeek/ld34).__

{% include image.html url="/uploads/2017/04/kubble.png" %}

# Ludum Dare 30 (August 2014)
This is my best [Ludum Dare](http://ludumdare.com/compo/) entry so far, it was
made by me and [Znurre](https://github.com/Znurre). It's called World² and it's
a puzzle game where you navigate maze-like maps by switching back and forth
between two connected worlds to be able to pass obstacles. If you stand in such
a way that you end up in a wall or something like that when switching you'll die
and have to start over from the beginning.

I feel like we managed to make good maps with increasing difficulty, starting
from really easy up to fairly frustrating. Znurre also made a music track for
each world that uses slightly different instruments but the same overall melody,
we keep them in sync and switch between the as the user switches worlds.

The entire game is written in C++11 with SDL2, we also made a tool for
converting Tiled (.tmx) maps to our own binary format (using Qt and libtiled).

__Binaries can be found [here](http://ludumdare.com/compo/ludum-dare-30/?action=preview&uid=7989)
and the source is available on [GitHub](https://github.com/MemoryLeek/ld30).__

{% include image.html url="/uploads/2015/08/world2.png" %}

# libmodbus pull requests (January 2014)
I'm listing this here since it's my first two pull requests on an open source
project that actually got merged. The patches are very small but it still felt
nice to contribute to something that is used by many other developers.

__[Implemented runtime configurable RTS delay @ GitHub](https://github.com/stephane/libmodbus/pull/188)__

__[Add support for user defined RTS toggle function @ GitHub](https://github.com/stephane/libmodbus/pull/189)__

# Ludum Dare 28 (December 2013)
This was a massively over-ambitious game made by me,
[Znurre](https://github.com/Znurre) and [b2](https://github.com/B2qa).
It was supposed to be a futuristic dungeon crawler with pseudo-random generated
levels from a fixed set of rooms. You would hit certain checkpoints or bosses
after which you'd have to choose one of your items to upgrade, but this was
obviously way out of scope for us to achieve in a weekend.

We ended up giving the player only one life (to sort of follow the _you only get
one_ theme) and when the player died we would kill the game. We only made one
weapon (without upgrades) and one enemy type.

The game obviously ended up boring as hell but we learned a lot, at least I did.
It was the first time I've used A\* pathfinding (though it ended up a bit buggy)
and the first time I've used Box2D for a top-down game (we planned to have
physics objects and explosions).

For this entry we used SFML 2.1 and Box2D 2.3.0. We also made some tools to
handle sprite and map conversion, these used Qt5 and libtiled.

__Binaries can be found [here](http://ludumdare.com/compo/ludum-dare-28/?action=preview&uid=7989)
and the source is available on [GitHub](https://github.com/MemoryLeek/ld28).__

{% include image.html url="/uploads/2015/08/dunkra.png" %}

# ArduPilot pull request (August 2013)
I'm listing this as it's the only publically available embedded code I've
written even though I work as an embedded developer. It's also my first ever
contribution to an open source project. Unfortunately this was never merged due
to stability issues when the autopilot was connected over USB, however this
wasn't an issue for me personally since you don't fly with a cable connected to
your plane anyway, and I've done multiple flights myself using this patch. Later
I switched to the [Pixhawk](https://store.3drobotics.com/products/3dr-pixhawk)
which already came with Spektrum support.

__[ArduPPM: Added Spektrum satellite support @ GitHub](https://github.com/diydrones/ardupilot/pull/520)__

# Ludum Dare 27 (August 2013)
This entry was made by the same team as LD22, me,
[Znurre](https://github.com/Znurre) and [xinux](https://github.com/mongomunken).
This time we made a platformer where you played a ninja with the ability to
reverse time, and the goal was to sneak past the guards to the end of the level.
The game ended up a bit too hard, and there were bugs in the bot path handling
that would sometimes make them stuck. We never tested it on Windows during
development and it turned out that it suffered from frequent crashes so we
didn't receive any ratings. We used a mix of Qt5 and SDL 2.0.

__Binaries can be found [here](http://ludumdare.com/compo/ludum-dare-27/?action=preview&uid=7989)
and the source is available on [GitHub](https://github.com/MemoryLeek/ld27).__

{% include image.html url="/uploads/2015/08/tl.png" %}

# Ludum Dare 22 (December 2011)
Me, [Znurre](https://github.com/Znurre) and [xinux](https://github.com/mongomunken)
decided to participate in Ludum Dare. This was the first time for all of us but
we still managed to make an okay game. It's called [A Lone Story](http://ludumdare.com/compo/ludum-dare-22/?action=preview&uid=7989)
and is basically a running game where you're supposed to get to the end of the
map before the darkness catches you.

{% include image.html url="/uploads/2015/08/als.png" %}

After the compo Znurre made a post-LD version, with improved graphics, gameplay
and new levels. It's called ALoneStory++ and is available [here](http://alonestory.memoryleek.com/).

{% include image.html url="/uploads/2015/08/als++.png" %}
