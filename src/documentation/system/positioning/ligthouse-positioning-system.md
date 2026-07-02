---
layout: page-multi-row
title: Lighthouse Positioning System
page_id: lighthouse-system-overview
redirects:
  - /lighthouse-system/
  - /products/lighthouse-positioning-system/
---

{% row_full %}
<div class="row">
<div class="col-md-9">
The Lighthouse positioning system is an optically-based indoor positioning system that lets a device locate itself with high precision.
<br><br>
It achieves a tracking precision approaching that of a Motion Capture system at a fraction of the cost. A key advantage is that position is computed onboard the tracked device itself, rather than externally in the infrastructure. For a flying robot like the Crazyflie<sup>®</sup>, this means position information is directly available for autonomous flight, with no need for low-latency radio transport of position data.
</div>
<div class="col-md-3">
<div style="margin-bottom: 0.75rem;">{% inline_button Getting Started Tutorial; /documentation/tutorials/getting-started-with-lighthouse/ %}</div>
<div style="margin-bottom: 0.75rem;">{% inline_button Buy a Lighthouse System; https://store.bitcraze.io/collections/bundles-crazyflie-2-1/products/lighthouse-explorer-bundle %}</div>
<div>{% inline_button Positioning Systems Overview; /documentation/system/positioning/ %}</div>
</div>
</div>
{% endrow_full %}

{% row_full %}
{% img The Lighthouse Positioning System; medium; /images/documentation/overview/lighthouse.png %}
{% endrow_full %}

---

{% row_video_text_links The Base Stations; /videos/lh2_sweeps.mp4 %}
{% row_text %}
The system uses SteamVR Base Stations as optical beacons, enabling the Crazyflie to calculate its position onboard with sub-decimeter accuracy and millimeter-level precision.

The base stations contain spinning drums that sweep laser planes across the room. The Crazyflie, or any device equipped with a light receiver (a photodiode), can measure the angle between itself and the base station.

Using multiple receivers, the Crazyflie can determine its own position and orientation relative to the base station. Knowing the base station's position and orientation in the room then gives the Crazyflie an absolute position.

### V1 and V2

The lighthouse system uses [Lighthouse base stations](https://store.bitcraze.io/products/lighthouse-v2-base-station) as beacons.
Two generations are supported: [V1](https://www.vive.com/eu/accessory/base-station/) and [V2](https://store.bitcraze.io/products/lighthouse-v2-base-station).

Lighthouse V1 uses two rotating drums while V2 uses one drum with two slanted light planes. V1 supports up to 2 base stations; V2 is designed for up to 16. The Crazyflie firmware currently supports up to 4 base stations by default, with more available through custom firmware configuration. V2 is the recommended and actively developed option in the Crazyflie ecosystem.



| Characteristics          | Lighthouse V1          | Lighthouse V2 | Note                                                                                      |
|--------------------------|------------------------|---------------|-------------------------------------------------------------------------------------------|
| Range                    | ~6m                    | 6m            | Lighthouse V1 range depends on the environment. V2 range is 6m by specification.                          |
| Positioning rate         | 30Hz (2 base stations) | ~50Hz         | V2 rate is independent of the number of base stations                                     |
| Num. base stations       | 1 - 2                  | 1 - 4         | V2 can support up to 16 in hardware, configurable in the Crazyflie-firmware build|
| Horizontal angle of view | 120°                   | 150°          |                                                                                           |
| Vertical angle of view   | 120°                   | 110°          |                                                                                           |

{% endrow_text %}
{% row_links %}
* [Lighthouse base station V2](https://store.bitcraze.io/products/lighthouse-v2-base-station)
* [Vive Base Station Information](https://www.vive.com/eu/accessory/base-station2/)
{% endrow_links %}
{% endrow_video_text_links %}


{% row_image_text_links System geometry; /images/documentation/overview/bs-geometry.png %}
{% row_text %}
To measure position and orientation, the Crazyflie needs to know the position and orientation of each base station in the room. This is called the system geometry.

Geometry setup is done through the [Cfclient](/documentation/repository/crazyflie-clients-python/master/). The client can automatically estimate and store the geometry on the Crazyflie. The geometry can also be saved to a file and written to multiple Crazyflies, making it straightforward to fly a swarm in the same tracked space.
{% endrow_text %}
{% endrow_image_text_links %}

{% row_image_text_links Performance %}
{% row_text %}
As an optical system, the Lighthouse requires direct line of sight from the Crazyflie to at least one base station.
The range and field of view of the base stations define the tracked volume.

Due to the geometry of the {% poplink lighthouse-deck %}, the tracking will work best up to ~50 cm below the base station height.

In a 5x5 meter space, we have measured a relative precision better than 1 mm and an absolute accuracy better than 10 cm.
This means that coming back to a take-off/landing pad can be achieved with millimeter precision. At the corners of the space, the precision may vary by a few centimeters.

This is an indoor-only positioning system.
It is not designed for outdoor use, and since it is using infrared light, performance can be degraded by direct sunlight.
{% endrow_text %}
{% endrow_image_text_links %}

{% row_image_text_links System components %}
{% row_text %}
To use the Lighthouse positioning system, the {% poplink lighthouse-deck %} must be installed on every Crazyflie that needs to be tracked.

At least two Lighthouse V2 Base Stations must be installed in the room.


{% endrow_text%}
{% row_links %}
* {% id_link product-crazyflie-2-1-plus %}
* {% poplink lighthouse-deck %}

----

* [Lighthouse base station V2](https://store.bitcraze.io/products/lighthouse-v2-base-station)
{% endrow_links %}
{% endrow_image_text_links %}

{% row_image_text_links Getting started with Lighthouse positioning %}
{% row_text %}
To get started, follow the {% id_link getting-started-with-the-lighthouse-system %} tutorial.
It will guide you from zero to having your Crazyflie autonomously flying in your space.
{% endrow_text%}
{% row_links %}
* {% id_link getting-started-with-the-lighthouse-system %}
{% endrow_links %}
{% endrow_image_text_links %}

{% row_image_text_links Technical information %}
{% row_text %}
For more in depth information, please see the documentation for the Lighthouse system in the [crazyflie-firmware repository](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/).
{% endrow_text%}
{% row_links %}
* [Lighthouse Positioning System: Dataset, Accuracy, and Precision for UAV Research](https://whoenig.github.io/publications/2021_ICRA-Swarm-workshop_Taffanel.pdf)
* [Lighthouse positioning documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/)
* [Dataset](/documentation/system/positioning/positioning-datasets/)
{% endrow_links %}
{% endrow_image_text_links %}
