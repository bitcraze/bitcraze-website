---
layout: page-product
title: Lighthouse Positioning System
page_id: lighthouse-system-overview
redirects:
  - /lighthouse-system/
  - /products/lighthouse-positioning-system/
---

The lighthouse positioning system is an optically-based positioning system that allows an object to locate itself with high precision indoors. The system allows to get a precision of tracking approaching what can be achieved with a Motion Capture system, but for a much lower cost and with the advantage that the position is acquired onboard the tracked device rather than in the infrastructure.
For a flying robot like the Crazyflie, this means that the position information is directly available for autonomous flight without requiring low latency reliable transport of the position over radio.

The system uses the StemVR Base Station as an optical beacon and allows the Crazyflie to calculate its position with an accuracy better than a decimeter and millimeter precision.

Base stations are composed of spinning drums that shines laser in the room.
The Crazyflie, or any object that needs positioning, has a light receiver (a photo-diode) that receives the rotating laser and is then able to measure the angle between the base station and the receiver.
By using multiple receivers, it is possible to calculate the position and orientation of the object in relation to the base station. If we know the position and
orientation of the base station it is finally possible to determine the position and orientation of the Crzyflie.

## Lighthouse base station V1 and V2

The lighthouse positioning system is using [SteamVR base stations](https://www.vive.com/eu/accessory/base-station2/) as beacons.
There are two generations of the base stations and both are supported: V1 and V2.

Lighthouse V1 uses two rotating drums while Lighthouse V2 only uses one, but with two slanted light planes. Lighthouse V1 systems
can use up to 2 base stations while Lighthouse V2 systems is designed for up to 16. The Crazyflie currently only supports 2 base stations,
regardless of version.

| Characteristics          | Lighthouse V1          | Lighthouse V2 | Note                                                                                      |
|--------------------------|------------------------|---------------|-------------------------------------------------------------------------------------------|
| Range                    | ~6m                    | 6m            | Lighthouse V1 range depends on the environment. V2 6m by design.                          |
| Positioning rate         | 30Hz (2 base stations) | ~50Hz         | V2 rate is independent of the number of base stations                                     |
| Num. base stations       | 1 - 2                  | 1 - 2         | V2 can support up to 16 in hardware, further development is needed to support more than 2 |
| Horizontal angle of view | 120°                   | 150°          |                                                                                           |
| Vertical angle of view   | 120°                   | 110°          |                                                                                           |

## System geometry

In order to be able to measure the position and orientation, the Crazyflie needs to know the position and orientation of the Lighthouses base stations in the room,
this is called the system Geometry. The Geometry can be acquired automatically by the Crazyflie client and can be saved in the Crazyflie.
It can also be saved to a file which allows to write the same geometry information to multiple Crazyflies and so to fly a swarm of Crazyflie in the same tracked space.

## Performance

Being an optical system, the lighthouse positioning system requires direct optical line of sight from the Crazyflie to at least one of the base stations.

In a 5x5 meter space, we have measured a relative precision better than a millimeter and an absolute accuracy better than a decimeter.

This means that coming back to a take-off/landing pad can be done with a millimeter precision, but going away at the extreme corner of the space can be off by a couple of centimeters.

This is an indoor-only positioning system.
It is not intended to be used outdoor and since it is using infrared light, performance can be negatively affected by direct sunlight.

## System components

To use the Lighthouse positioning system with the Crazyflie, the {% id_link product-lighthouse-deck %}
should be installed on all {% id_link product-crazyflie-2-1 %} that needs to be tracked.

One to two Lighthouse Base Stations need to be installed in the room.
The Range and the field of view will dictate the space tracked.
Due to the geometry of the lighthouse deck, the tracking will work best up to ~50cm bellow the base station height.

The system is compatible with:
 - [SteamVR Base Station 2.0](https://www.vive.com/eu/accessory/base-station2/)
 - [Vive Base Station](https://www.vive.com/eu/accessory/base-station/)

## Getting started with Lighthouse positioning

To get started, you can follow the {% id_link getting-started-with-the-lighthouse-system %} tutorial.
It will guide you from zero to having your Crazyflie autonomously flying in your space.

## Technical information

* [Lighthouse positioning documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/).
