---
layout: page
title: FAQ
page_id: support-frequently-asked-questions
redirects:
  - /frequently-asked-questions-Crazyflie-2.0/
---

{% collapse_section For how long can the Crazyflie 2.X fly? %}
It can fly up to 7 minutes and depending on how you fly it, the time will decrease.
{% endcollapse_section %}

{% collapse_section How is the Crazyflie 2.X charged? %}
It is charged using a standard micro-USB connector commonly used by smartphones. You probably have one of these cables at home. You can charge it from any USB unit that can supply 500mA, most computers and adapters do. It takes up to 40min to charge and the blue LED (M3) will tell you roughly how charged it is by how long it is lit. When it is fully lit it is fully charged.
{% endcollapse_section %}

{% collapse_section Can I hot swap batteries on the Crazyflie 2.X? %}
Yes, you can hot swap batteries.
{% endcollapse_section %}

{% collapse_section Can I use a bigger battery on the Crazyflie 2.X? %}
Yes, as long as it is not too heavy, it is a single cell (3.7V), it fits and the polarity is correct you can do so. A higher capacity battery will give you longer flight times but will also decrease agility. We recommend batteries with at least 15C continuous discharge rate.
{% endcollapse_section %}

{% collapse_section What radio is used with the Crazyflie 2.X? %}
The Crazyflie 2.X can be controlled with the Crazyradio or Crazyradio PA from a PC or with a mobile device using Bluetooth Low Energy.
{% endcollapse_section %}

{% collapse_section Which mobile devices work with the Crazyflie 2.X? %}
Here is a list of requirements for the mobile device:

* Bluetooth Low Energy (BLE) or sometimes called Bluetooth Smart support.
* Runs Android 4.4 or newer
* Runs iOS 7.1 or newer

Since Android is available on many different devices, it is not certain it works even though it fulfills the requirements above. We have therefore created a [list of devices](/documentation/repository/crazyflie-android-client/master/userguides/user-instructions/#android-device-compatibility)
it has been tested on.
{% endcollapse_section %}

{% collapse_section What is the range of the Crazyradio? %}
As with all radio communication it depends. It depends on the environment, radio interference, chip production variations, etc. It also depends on if you use the Crazyradio, Crazyradio PA or a mobile device. We have done a couple of line-of-sight tests with little interference outdoor with the different configurations:

* Crazyradio: Up to about 100 meters range in the 250 Kbit mode (The uplink, Crazyradio, is the main limiting factor).
* Crazyradio PA: Up to about 1000 meters range in the 250 Kbit mode and under ideal conditions (the downlink is the main limiting factor).
* Mobile device: Up to about 20 meters range (The uplink, the mobile device is limiting the range).
{% endcollapse_section %}

{% collapse_section Can I use a normal R/C transmitter to control the Crazyflie 2.X? %}
This can be done with the [BigQuad expansion deck](/products/bigquad-deck/). It's working, but not yet a turn-key solution.
{% endcollapse_section %}

{% collapse_section How durable is the Crazyflie 2.X? %}
The Crazyflie 2.X is using the PCB itself as the frame. The PCB is made of [FR4](https://en.wikipedia.org/wiki/FR-4) which is a strong and lightweight material. Attached to that is the motor mount which is a bit flexible. The motor mount is designed in such a way that it will break in case of a violent crash and not the PCB or electronics. The motor mount is very easy to change and cheap. We have not yet been able to break anything except the motor mount or a motor during violent crashes and some have been from 30m height right on to concrete. It is not unbreakable though so handle it with care!
{% endcollapse_section %}

{% collapse_section Is the Crazyflie 2.X backward compatible with the Crazyflie 1.0 (aka Crazyflie Nano)? %}
Yes, the firmware and the communication protocol is backward compatible. All libraries that have been made in Python, Ruby, C, C++, Java, etc. will be able to control the Crazyflie 2.X the same way.
{% endcollapse_section %}

{% collapse_section Is the Crazyflie 1.0 (aka Crazyflie Nano) still supported? %}
Yes, The firmware and python client are working with the Crazyflie 1.0.
{% endcollapse_section %}

{% collapse_section Can the Crazyflie 2.X be used to control a bigger quadcopter? %}
Yes, it can. With the [BigQuad expansion deck](/products/bigquad-deck/).
{% endcollapse_section %}

{% collapse_section Can I do FPV (first person view) flying with a Crazyflie 2.X? %}
There is ongoing development in this area:

* [Working FPV setup for Crazyflie 2.X](https://forum.bitcraze.io/viewtopic.php?f=6&p=8295).
{% endcollapse_section %}

{% collapse_section Can the Crazyflie 2.X fly autonomously? %}
The Crazyflie 2.X does not have enough sensors to locate itself in the environment as is, it requires more information to do that.
The easiest way to achieve that is to add the {% poplink flow-deck %}. It tells the Crazyflie how it moves relative to the floor and
thus enables it to fly autonomously. See the [product page](/products/flow-deck-v2/) for more information.

With an external positioning system the Crazyflie will even understand its absolute
position which gives it even more possibilities when it comes to autonomous flight.
Outdoors the Crazyflie could use a GPS receiver to achieve autonomous flight but indoors some other positioning system is required.

Bitcraze is manufacturing a radio based local positioning system called the [Loco Positioning system]({% id_url loco-pos-system-overview %}) that allows the Crazyflie 2.X to fly autonomously in a room. Find out more on the [product page](/products/loco-positioning-system/).

Researchers often use motion capture systems, like [Qualisys](https://www.qualisys.com) or [Vicon](http://www.vicon.com/), to fly the Crazyflie autonomously, usually controlling it from an outside computer. For example this research from MIT is using such a system together with a powerful control algorithm: <https://www.youtube.com/watch?v=v-s564NoAu0>

We have been using camera systems like the Microsoft Kinect to achieve autonomous flight above the camera:  <https://www.bitcraze.io/2015/05/autonomous-flight-using-kinect2-for-position-control/>
{% endcollapse_section %}

{% collapse_section Is it possible to control a swarm of Crazyflies? %}
Yes, it is possible to control multiple Crazyflies simultaneously. It can be done with the Loco Positioning system and our [python library](https://github.com/bitcraze/crazyflie-lib-python/blob/master/examples/swarm/swarmSequence.py) or using [ROS and the ROS driver.](http://wiki.ros.org/crazyflie) For example this video was made using the ROS driver:
[Crazyflie 2.0 Swarm](https://www.youtube.com/watch?v=ezTayb76x9U)
{% endcollapse_section %}


<div class="col-md-12">
  <p class="text-right">Want to add a FAQ? <a href="https://github.com/bitcraze/bitcraze-website/edit/master/src/{{page.path}}"><i class="fa fa-pencil"></i> &nbsp;Improve this page</a></p>
</div>
