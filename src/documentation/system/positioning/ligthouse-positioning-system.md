---
layout: page-product
title: Lighthouse Positioning System
page_id: lighthouse-system-overview
redirects:
  - /lighthouse-system/
  - /products/lighthouse-positioning-system/
---

The lighthouse positioning system is an optical-based positioning system that allows an object to locate itself with high precision indoor. The system allows to get a precision of tracking approaching what can be achieved with a Motion Capture system, but for a much lower cost and with the advantage that the position is acquired onboard the tracked device rather than in the infrastructure.
For a flying robot like the Crazyflie, this means that the position information is directly available to autonomous flight without requiring low latency reliable transport of the position over radio.

It uses the StemVR basestation as optical beacon and allows the Crazyflie to calculate its position with an accuracy better than a decimeter and millimeter precision.

Basestations are composed of spinning drums that shines laser in the room.
The Crazyflie, or any object that needs positioning, has a light receiver (a photo-diode) that receives the rotating laser and is then able to measure the angle at which the basestation sees the object.
It is then possible, by using multiple receiver with a known position, to calculate the position and orientation of the object versus the basestation.

## Lighthouse basestation V1 and V2

The lighthouse positioning system is using SteamVR basestation as beacon.
There is two generation of basestation and both are supported: V1 and V2.
You cannot mix generation in the same system, one room needs to be setup with either V1 or V2 basestations.

Lighthouse V1 has two rotating drum, one horizontal and one vertical for azimuth and elevation measurement, and is designed to work with up to two synchronized basestation. The synchronization is done either optically or using a cable.

Lighthouse V2 only has one vertical drum with two angled emitting plan, this allows to measure azimuth and elevation using a single drum. Different basestation in a same system are asynchronous with each-other and so do not need active synchronization. Lighthouse V2 is designed to work with up to 16 basestation in a same system, we currently support up to two.

| Characteristics | Lighthouse V1 | Lighthouse V2 | Note |
------------------|---------------|---------------|-------
| Range           |   ~6m         |   6m          | Lighthouse V1 range depends of the environment. V2 6m by design. |
| Positioning rate | 30Hz (2 basestations) | ~50Hz  | V2 rate is independent of the number of basestation |
| Num. basestation | 1-2 | 1-2 |  V2 can support up to 16 in hardware, further development is needed to support more than 2 |
| Horizontal angle of view | 120° | 150° | |
| Vertical angle of view | 120° | 110° | |

## System setup

In order to be able to measure the position and orientation, the Crazyflie needs to know the position and orientation of the Lighthouses basestations in the room.
This is called Geometry. The Geometry can be acquired automatically by the Crazyflie client and can be saved in the Crazyflie.
It can also be saved to a file which allows to write the same geometry information to multiple Crazyflie and so to fly a swarm of Crazyflie in the same tracked space.

This is an indoor-only positioning system.
It is not intended to be used outdoor and since it is using infrared light, performance can be negatively affected by direct sunlight.

## Performance

Being an optical system, the lighthouse positioning system requires direct optical line of sight from the Crazyflie to at least one of the basestation.

In a 5x5 meter space, we have measured a relative precision better than a millimeter and an absolute accuracy better than a decimeter.

This means that coming back to a take-off/landing pad can be done with a millimeter precision, but going away at the extreme corner of the space can be off by a couple of centimeter.

## System components

To use the Lighthouse positioning system with Crazyflie, the [Lighthouse positioning deck](https://store.bitcraze.io/collections/decks/products/lighthouse-positioning-deck) should be installed on all [Crazyflie](https://store.bitcraze.io/collections/kits/products/crazyflie-2-1) that needs to be tracked.

One to two Basestation needs to be installed in the room.
The Range and the field of view will dictate the space tracked.
Due to the geometry of the lighthouse deck, the tracking will work best up to ~50cm bellow the basestations height.

The system is compatible with:
 - [SteamVR Base Station 2.0](https://www.vive.com/eu/accessory/base-station2/)
 - [Vive Base Station](https://www.vive.com/eu/accessory/base-station/)

## Getting started with Lighthouse positioning

To get started, you can follow the [Getting started with Lighthouse guide](/documentation/tutorials/getting-started-with-lighthouse/).
It will guide you from zero to having your Crazyflie autonomously flying in your space.

## Technical information

* [Lighthouse positioning documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/).