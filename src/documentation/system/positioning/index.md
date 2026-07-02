---
layout: page-multi-row
title: Positioning Systems Overview
page_id: overview_positioning
redirects:
  - /docs/overview_positioning/
---

{% row_full %}
The Crazyflie<sup>®</sup> 2.x (as most other quadcopters and robots) has no inherent notion of its position in space. The onboard sensors (accelerometers and gyros) can give a rough idea of movement but lack the accuracy for long-term position awareness. The solution is to use an external system that provides information about the current position.
{% endrow_full %}

---

{% row_image_text_links Lighthouse positioning System; /images/documentation/overview/lighthouse.png %}
{% row_text %}
The Lighthouse positioning system is our latest method of positioning on the Crazyflie 2.x. The [Lighthouse base stations](https://store.bitcraze.io/products/lighthouse-v2-base-station) emit infrared laser scans that are detected by our {% poplink lighthouse-deck %}, enabling the Crazyflie to calculate its own position onboard, just like with the Loco Positioning System.
{% endrow_text %}

{% row_links %}
* {% id_link lighthouse-system-overview %}
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Loco Positioning System; /images/documentation/overview/lpssystem.png %}
{% row_text %}
The Crazyflie can calculate its position using our Loco Positioning System. It uses UWB modules (Decawave's DWM1000) that measure the distance between each other. With at least 4, but preferably 8, {% id_link product-loco-pos-node %}, and a {% poplink loco-positioning-deck %}, the Crazyflie can calculate its own position onboard.
{% endrow_text %}

{% row_links %}
* {% id_link loco-pos-system-overview %}
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Motion Capture Positioning; /images/documentation/overview/motioncapture.png %}
{% row_text %}
The Crazyflie can be positioned using reflective markers and infrared motion capture cameras. We use [Qualisys](https://www.qualisys.com/) in our own office, but researchers and hobbyists have used the Crazyflie with MCS cameras from [Vicon](https://www.vicon.com/) and [Optitrack](https://optitrack.com/) as well. The main principle is that the cameras emit infrared light, which is reflected back by special reflective markers, enabling the IR-cameras to detect the location of the marker, which the MPC software on an external computer will calculate the actual position from. This information can then be sent to the Crazyflie through the {% poplink crazyradio-2-0 %}. Check out our {% poplink motion-capture-marker-deck %} for an easy way of placing the reflective markers on the Crazyflie.
{% endrow_text %}

{% row_links %}
* {% id_link mocap-system-overview %}
{% endrow_links %}
{% endrow_image_text_links %}

{% row_full %}
The table below compares these three positioning systems, highlighting their differences and similarities. This side-by-side comparison provides a clear overview to help you quickly assess which system best suits your needs.

|                          | Loco Positioning System                     | Lighthouse Positioning System              | Motion Capture |
|--------------------------|---------------------------------------------|--------------------------------------------|----------------|
| Area max covered         | 50x50 m (not tested)                        | 8x8x3 m                                    | Unlimited      |
| Accuracy                 | dm                                          | mm                                         | mm             |
| Environment requirements | Line of sight preferred for better accuracy | Line of sight <br><br> No glass or mirrors | Line of sight  |
| Scalability              | Good                                        | To 4 base stations                         | Good           |
| Ease of setup            | Medium                                      | Easy                                       | Difficult      |
| Positioning              | Onboard                                     | Onboard                                    | Offboard       |
| Cost                     | $$                                          | $                                          | $$$            |
{% endrow_full %}
