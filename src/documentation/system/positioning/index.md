---
layout: page-multi-row
title: Positioning Systems Overview
page_id: overview_positioning
redirects:
  - /docs/overview_positioning/
---

{% row_full %}
The Crazyflie 2.x (as most other quadcopters and robots) has no real notion of
its position in space. The on board sensors (accelerometers and gyros) can be
used to give a rough idea of its movements but lacks the accuracy for long term
position awareness. The solution is to use an external system that can provide
information of the current position.
{% endrow_full %}

---

{% row_image_text_links Lighthouse positioning System; /images/documentation/overview/lighthouse.png %}
{% row_text %}
The lighthouse positioning system is our latest method of positioning on the Crazyflie 2.x. The [Lighthouse base stations](https://store.bitcraze.io/products/lighthouse-v2-base-station) are used here, and they emit infrared laser scans that are detected by our {% poplink lighthouse-deck %}. This enables the crazyflie to (like with the Loco Positioning System) calculate its own position on board.
{% endrow_text %}

{% row_links %}
* {% id_link lighthouse-system-overview %}
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Loco Positioning System; /images/documentation/overview/lpssystem.png %}
{% row_text %}
The crazyflie can detect its position by means of our Loco Positioning System. Here we use UWB modules (Decawave's DWM1000), which can measure the distance between each other. With the ranges of at least 4, but rather 8, {% id_link product-loco-pos-node %}, and a {% poplink loco-positioning-deck %}, the crazyflie can calculate its own position onboard. Our {% id_link product-roadrunner %} is a stand-alone tag which can also work with our Loco Positioning System system, if you require another platform than the Crazyflie.
{% endrow_text %}

{% row_links %}
* {% id_link loco-pos-system-overview %}
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Motion Capture Positioning; /images/documentation/overview/motioncapture.png %}
{% row_text %}
The Crazyflie can be positioned using reflective markers and infrared motion capture cameras. We use [Qualysis](https://www.qualisys.com/) in our own office but researchers and hobbiest have used the Crazyflie with MCS cameras of [Vicon](https://www.vicon.com/) and [Optitrack](https://optitrack.com/) as well. The main principle of using the MCS for positioning is that the cameras emit infrared light, which are reflected back by special reflective markers. This will enable the IR-cameras to detect the location of the marker, which the MPC software on an external computer will calculate the actual position from. This information can then send to the Crazyflie through the {% poplink crazyradio-2-0 %} / Crazyradio PA. Also, check out our {% poplink motion-capture-marker-deck %}.
{% endrow_text %}

{% row_links %}
* {% id_link mocap-system-overview %}
{% endrow_links %}
{% endrow_image_text_links %}

--- 
The table below compares these three positioning systems, highlighting their differences and similarities. This side-by-side comparison provides a clear overview to help you quickly assess which system best suits your needs. 

|                          | Loco Positioning system                     | Lighthouse Positioning system              | Motion Capture |
|--------------------------|---------------------------------------------|--------------------------------------------|----------------|
| Area max covered         | 50mx50m (not tested)                        | 5x5x5                                      | Unlimited      |
| Accuracy                 | cm                                          | mm                                         | mm             |
| Environment requirements | Line of sight preferred for better accuracy | Line of sight <br><br> No glass or mirrors | Line of sight  |
| Scalability              | Good                                        | To 4 base stations                         | Good           |
| Ease of setup            | Medium                                      | Easy                                       | Difficult      |
| Positioning              | On Board                                    | On Board                                   | Off board      |
| Cost                     | $$                                          | $                                          | $$$            |
