---
layout: page-product
title: Loco Positioning system
page_id: loco-pos-system-overview
redirects:
  - /loco-pos-system/
  - /products/loco-positioning-system/
---

The Loco Positioning system is a local positioning system that is used to find
the absolute 3D position of objects in space. It is in many ways similar to a
miniature GPS system.

The base of the system is a set of __Anchors__ that are positioned in the room
(compare to the satellites in GPS), they are the reference. The other part of
the system is one or more __Tags__ (compare to the GPS receiver) that are fixed to the
object(s) that are to be tracked. By sending short high frequency radio
messages between the Anchors and Tags, the system measures the distance from
each Anchor to the Tags and calculates the position of the Tags from that
information.

All information needed to calculate the position is available in the Tag which
enables position estimation on board the Crazyflie, as opposed to many other
positioning systems where the position is calculated in an external computer
and sent to the Crazyflie.

By adding knowledge of its position to a Crazyflie 2.X, it is capable of flying
autonomously without manual control. This opens up an array of exciting use
cases and applications.

## Positioning modes

The Loco Positioning System implements three different positioning modes, **Two Way Ranging (TWR)**, **Time Difference of Arrival 2 (TDoA 2)** and **Time Difference of Arrival 3 (TDoA 3)**.

In **TWR mode**, the tag pings the anchors in sequence, this allows it to measure the distance between the tag and the anchors.
Using this information, a theoretical minimum of 4 Anchors is required to calculate the 3D position of a Tag, but a more realistic number
is 6 to add redundancy and accuracy.

This mode is the most accurate mode and also works when the tag or Crazyflie leaves the space delimited by the anchors.
The tag is actively communicating with the anchors in a time slotted fashion and in this mode only one tag or Crazyflie
can be positioned with a maximum of 8 anchors.

In **TDoA 2 mode**, the anchor system is continuously sending synchronization packets.
A tag listening to these packets can calculate the relative distance to two anchors by measuring the time difference of arrival of the packets.
From the TDoA information it is possible to calculate the 3D position in space.
In this mode the tag is only passively listening, so new tags do not add any load to the system which
makes it possible to position any number of tags or Crazyflies simultaneously. This makes it a perfect mode for swarming.

Compared to TWR, TDoA 2 is more restrictive when it comes to the space where positioning works,
ideally the tag should always be within, or very close to, the space delimited by the anchor system.
This means that TDoA 2 works best with 8 anchors placed in the corners of the flying space.
In this space the accuracy and precision is comparable to TWR.

In this mode the anchor system is time slotted and synchronized and the number of anchors is limited to 8.

The **TDoA 3 mode** has many similarities with TDoA 2 and supports any number of tags or
Crazyflies. The main difference is that the time slotted scheme of TDoA 2 has been
replaced by a randomized transmission schedule which makes it possible to add more anchors.
By adding more anchors the system can be scaled to larger spaces or span multiple
rooms without line of sight between all anchors. It also makes it more robust and can
handle loss or addition of anchors dynamically. The estimated position in this mode might be slightly more noisy compared to TDoA 2.

## Performance

The Loco Positioning system is based on the Decawave DWM1000 chip and has an accuracy in the 10 cm range.
The 3D positioning performance depends of the system setup and environment.

The Loco Positioning system has mainly been designed for indoor use.

## System components

The key components of the system are the __Loco Positioning Deck__ and the __Loco Positioning Node__.

The {% id_link product-loco-pos-deck %} is a Crazyflie 2.X expansion deck with the Loco
Positioning Tag functionality.

The {% id_link product-loco-pos-node %} is a multi functional node in a Loco Positioning system,
it can act either as an Anchor or Tag. Most commonly it is used as an __Anchor__, being part of the reference base for
the system. Alternatively is can also run in Tag mode when it can be attached to an object to track,
for instance a robot.

For more information on how to combine the components of the Crazyflie ecosystem, please see the {% id_link buy-guide %}.

## Getting started with Loco positioning

We have created an easy to follow step-by-step guide for setting up the Loco positioning system that you will find [here]({% id_url getting-started-with-the-loco-positioning-system %}). In the tutorial we use the [Indoor explorer bundle](https://store.bitcraze.io/collections/bundles/products/indoor-explorer-bundle) that you can buy directly from our [store](https://store.bitcraze.io/).

## Tech information

For more technical information about the Loco positioning system please visit the [LPS system and node Documentation](/documentation/repository/lps-node-firmware/master/).
