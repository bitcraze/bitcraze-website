---
layout: page-product
title: Motion Capture positioning
page_id: mocap-system-overview
---

Bitcraze does not manufacture Motion Capture systems, but there are many variations available on the market, for instance
[Qualysis](https://www.qualisys.com/), [Vicon](https://www.vicon.com/) and [Optitrack](https://optitrack.com/). Most mocap
systems are supported by the Crazyflie ecosystem or can be integrated with it.

## Principles

Motion Capture Systems use cameras to detect markers attached to the object that is tracked, in our case a Crazyflie.
The position of the markers on the object is known by the system and that enables it to calculate the position and orientation of the
tracked object in a global reference frame.

Data from the cameras (from a few up to over a hundred cameras depending on the space to cover and other requirements)
is fed into a central system that does the calculations and estimate the positions of the markers
and tracked objects. In the typical Crazyflie use case, the position of the Crazyflie is then transmitted via a Crazyradio
to the Crazyflie to be used in the control loop.

## Scalability

If many Crazyflies are used at the same time (swarming) scalability may be an issue since the position of all
Crazyflies continuously must be transmitted. The Crazyswarm project solves this in an efficient way though and
can handle 50 Crazyflies using only 3 Crazyradios.

## Marker positions

The positions of the markers on the tracked object (Crazyflie) is important as it determines how well the mocap
system can estimate the pose of the object. If the layout of the markers is unique in relation to all other tracked objects,
it can also be used to identify the object. For a swarm of Crazyflies it is hard to create unique configurations
for all Crazyflies, and another strategy is to continuously keep track of all objects and their movements to
enable traceability back to their starting positions, and indirectly their identity.

## Passive VS active markers

The most common type of markers are reflective spheres, also called passive markers. The cameras uses IR-flashes to
light up the scene and detect the reflections from the markers. Another option is to use active markers, which is
LEDs on the tracked object that emits light. Active markers can be used on a longer distance, but the drawback is that
they require a battery, obviously this is not a problem on a Crazyflie that has a battery anyway.

Qualisys, one of the Mocacp manufacturers, has a technology where they also add identification to the active markers
by turning them on and off over time. This enables the system to uniquely identify a marker as well as objects,
even though there are multiple object with the same pyhsical marker configuration, as long as the ids are different.

## Performance

Motion capture systems typically have very high accuracy/precission, often under 1 mm.

## System components

It is possible to glue markers to a Crazyflie but we have developed two types of marker decks to simplify the task
of using the Crazyflie with MoCap systems. The first is the
[Motion capture marker deck](https://store.bitcraze.io/collections/decks/products/motion-capture-marker-deck)
which is a deck where passive markers easily can be attached in various configurations. The other is the
[Active marker deck](https://store.bitcraze.io/collections/decks/products/active-marker-deck) which has 4 IR-LEDs that can
be configured in various ways. Together with a Qualisys Mocap system it also provides the possibility to transmit
different ids for each marker.

## Getting started with MoCap

Crazyswarm handles large swarms of Crazyflies together with MoCap system and is ideal for research applications, read more
about [USC's Crazyswarm](https://crazyswarm.readthedocs.io/en/latest/).

For more information on Motion Capture, see [the Wikipedia](https://en.wikipedia.org/wiki/Motion_capture)
