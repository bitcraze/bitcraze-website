---
layout: page-multi-row
title: Lighthouse Positioning System
page_id: lighthouse-system-overview
redirects:
  - /lighthouse-system/
  - /products/lighthouse-positioning-system/
---

{% row_full %}
{% img The Lighthouse Positioning System; medium; /images/documentation/overview/lighthouse.png %}

The lighthouse positioning system is an optically-based positioning system that allows an object to locate itself with high precision indoors. The system allows to get a precision of tracking approaching what can be achieved with a Motion Capture system, but for a much lower cost and with the advantage that the position is acquired onboard the tracked device rather than in the infrastructure.
For a flying robot like the Crazyflie, this means that the position information is directly available for autonomous flight without requiring low latency reliable transport of the position over radio.
{% endrow_full %}

---

{% row_video_text_links The Base Stations; /videos/lh2_sweeps.mp4 %}
{% row_text %}
The system uses the SteamVR Base Station as an optical beacon and allows the Crazyflie to calculate its position with an accuracy better than a decimeter and millimeter precision.

Base stations are composed of spinning drums that shines laser in the room.
The Crazyflie, or any object that needs positioning, has a light receiver (a photo-diode) that receives the rotating laser and is then able to measure the angle between the base station and the receiver.
By using multiple receivers, it is possible to calculate the position and orientation of the object in relation to the base station. If we know the position and
orientation of the base station it is finally possible to determine the position and orientation of the Crazyflie.

#### V1 and V2

The lighthouse positioning system is using [Lighthouse base stations](https://store.bitcraze.io/products/lighthouse-v2-base-station) as beacons.
There are two generations of the base stations and both are supported: [V1](https://www.vive.com/eu/accessory/base-station/) and [V2](https://store.bitcraze.io/products/lighthouse-v2-base-station).

Lighthouse V1 uses two rotating drums while Lighthouse V2 only uses one, but with two slanted light planes on the same drum. Lighthouse V1 systems
can use up to 2 base stations while Lighthouse V2 systems is designed for up to 16. The Crazyflie-firmware currently supports up to 4 base stations by standard, and more can be enabled by manually configuring the firmware.



| Characteristics          | Lighthouse V1          | Lighthouse V2 | Note                                                                                      |
|--------------------------|------------------------|---------------|-------------------------------------------------------------------------------------------|
| Range                    | ~6m                    | 6m            | Lighthouse V1 range depends on the environment. V2 6m by design.                          |
| Positioning rate         | 30Hz (2 base stations) | ~50Hz         | V2 rate is independent of the number of base stations                                     |
| Num. base stations       | 1 - 2                  | 1 - 4         | V2 can support up to 16 in hardware, configurable in the Crazyflie-firmware build|
| Horizontal angle of view | 120°                   | 150°          |                                                                                           |
| Vertical angle of view   | 120°                   | 110°          |                                                                                           |

{% endrow_text %}
{% row_links %}
* [Lighthouse base station V2](https://store.bitcraze.io/products/lighthouse-v2-base-station)
* [Vive Base Station](https://www.vive.com/eu/accessory/base-station/)
{% endrow_links %}
{% endrow_video_text_links %}


{% row_image_text_links System geometry; /images/documentation/overview/bs-geometry.png %}
{% row_text %}
In order to be able to measure the position and orientation, the Crazyflie needs to know the position and orientation of the Lighthouse base stations in the room,
this is called the system Geometry. The Geometry can be acquired automatically by the Crazyflie client and is stored in the Crazyflie.
It can also be saved to a file which allows to write the same geometry information to multiple Crazyflies and so to fly a swarm of Crazyflie in the same tracked space.
{% endrow_text %}
{% endrow_image_text_links %}


{% row_image_text_links Performance %}
{% row_text %}
Being an optical system, the lighthouse positioning system requires direct optical line of sight from the Crazyflie to at least one of the base stations.
The Range and the field of view will dictate the space tracked.

Due to the geometry of the {% poplink lighthouse-deck %}, the tracking will work best up to ~50cm bellow the base station height.

In a 5x5 meter space, we have measured a relative precision better than a millimeter and an absolute accuracy better than a decimeter.
This means that coming back to a take-off/landing pad can be done with a millimeter precision, but going away at the extreme corner of the space can be off by a couple of centimeters.

This is an indoor-only positioning system.
It is not intended to be used outdoor and since it is using infrared light, performance can be negatively affected by direct sunlight.
{% endrow_text %}
{% endrow_image_text_links %}

{% row_image_text_links System components %}
{% row_text %}
To use the Lighthouse positioning system, the {% poplink lighthouse-deck %}
should be installed on all {% id_link product-crazyflie-2-1 %}, {% id_link product-crazyflie-2-1-plus %} that needs to be tracked.

Two or more Lighthouse Base Stations must be installed in the room.


{% endrow_text%}
{% row_links %}
* {% id_link product-crazyflie-2-1-plus %}
* {% poplink lighthouse-deck %}

----

* [Lighthouse base station V2](https://store.bitcraze.io/products/lighthouse-v2-base-station)
* [Vive Base Station](https://www.vive.com/eu/accessory/base-station/)
{% endrow_links %}
{% endrow_image_text_links %}

{% row_image_text_links Getting started with Lighthouse positioning %}
{% row_text %}
To get started, you can follow the {% id_link getting-started-with-the-lighthouse-system %} tutorial.
It will guide you from zero to having your Crazyflie autonomously flying in your space.
{% endrow_text%}
{% row_links %}
* {% id_link getting-started-with-the-lighthouse-system %}
{% endrow_links %}
{% endrow_image_text_links %}

{% row_image_text_links Technical information %}
{% row_text %}
For more in depth information, please see the documentation in the [crazyflie-firmware repository](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/).
{% endrow_text%}
{% row_links %}
* [Lighthouse Positioning System: Dataset, Accuracy, and Precision for UAV Research](https://whoenig.github.io/publications/2021_ICRA-Swarm-workshop_Taffanel.pdf)
* [Lighthouse positioning documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/)
* [Dataset](/documentation/system/positioning/positioning-datasets/)
{% endrow_links %}
{% endrow_image_text_links %}
