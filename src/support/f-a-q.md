---
layout: page
title: FAQ
permalink: /frequently-asked-questions-Crazyflie-2.0/
page_id: support-frequently-asked-questions-Crazyflie-2.0
---

{% collapse_section For how long can the Crazyflie 2.0 fly? %}
It can fly up to 7 minutes and depending on how you fly it, the time will decrease.
{% endcollapse_section %}

{% collapse_section How is the Crazyflie 2.0 charged? %}
It is charged using a standard micro-USB connector commonly used by smartphones. You probably have one of these cables at home. You can charge it from any USB unit that can supply 500mA, most computers and adapters do. It takes up to 40min to charge and the blue LED (M3) will tell you roughly how charged it is by how long it is lit. When it is fully lit it is fully charged.
{% endcollapse_section %}

{% collapse_section Can I hot swap batteries on the Crazyflie 2.0? %}
Yes, you can hot swap batteries.
{% endcollapse_section %}

{% collapse_section Can I use a bigger battery on the Crazyflie 2.0? %}
Yes, as long as it is not too heavy, it is a single cell (3.7V), it fits and the polarity is correct you can do so. A higher capacity battery will give you longer flight times but will also decrease agility. We recommend batteries with at least 15C continuous discharge rate.
{% endcollapse_section %}

{% collapse_section What radio is used for with the Crazyflie 2.0? %}
The Crazyflie 2.0 can be controlled with the Crazyradio or Crazyradio PA from a PC or with a mobile device using Bluetooth Low Energy.
{% endcollapse_section %}

{% collapse_section Which mobile devices work with the Crazyflie 2.0? %}
Here is a list of requirements for the mobile device:

* Bluetooth Low Energy (BLE) or sometimes called Bluetooth Smart support.
* Runs Android 4.4 or newer
* Runs iOS 7.1 or newer

Since Android is available on many different devices, it is not certain it works even though it fulfills the requirements above. We have therefore created a [list of devices](https://wiki.bitcraze.io/doc:crazyflie:client:cfandroid:index#android_device_compatibility)
it has been tested on. 
{% endcollapse_section %}

{% collapse_section What is the range of the Crazyradio? %}
As with all radio communication it depends. It depends on the environment, radio interference, chip production variations, etc. It also depends on if you use the Crazyradio, Crazyradio PA or a mobile device. We have done a couple of line-of-sight tests with little interference outdoor with the different configurations:


* Crazyradio: Up to about 100 meters range in the 250 Kbit mode (The uplink, Crazyradio, is the limiting the range).
* Crazyradio PA: Up to about 1000 meters range in the 250 Kbit mode (The downlink, Crazyflie 2.0, is the limiting the range).
* Mobile device: Up to about 20 meters range (The uplink, mobile device is limiting the range).
{% endcollapse_section %}

{% collapse_section Can I use a normal R/C transmitter to control the Crazyflie 2.0? %}
This can be done with the [BigQuad expansion deck](/bigquad-deck/). It's working, but not yet a turn-key solution.
{% endcollapse_section %}

{% collapse_section How durable is the Crazyflie 2.0? %}
The Crazyflie 2.0 is using the PCB itself as the frame. The PCB is made of [FR4](https://en.wikipedia.org/wiki/FR-4) which is a strong and lightweight material. Attached to that is the motor mount which is a bit flexible. The motor mount is designed in such a way that it will break in case of a violent crash and not the PCB or electronics. The motor mount is very easy to change and cheap. We have not yet been able to break anything except the motor mount or a motor during violent crashes and some have been from 30m height right on to concrete. It is not unbreakable though so handle it with care!
{% endcollapse_section %}

{% collapse_section Is the Crazyflie 2.0 backward compatible with the Crazyflie 1.0 (aka Crazyflie Nano)? %}
Yes, the firmware and the communication protocol is backward compatible. All libraries that have been made in Python, Ruby, C, C++, Java, etc. will be able to control the Crazyflie 2.0 the same way.
{% endcollapse_section %}

{% collapse_section Is the Crazyflie 1.0 (aka Crazyflie Nano) still supported? %}
Yes, The firmware and python client are working with the Crazyflie 1.0.
{% endcollapse_section %}

{% collapse_section Can the Crazyflie 2.0 be used to control a bigger quadcopter? %}
Yes, it can. With the [BigQuad expansion deck](/bigquad-deck/).
{% endcollapse_section %}

{% collapse_section Can I do FPV (first person view) flying with a Crazyflie 2.0? %}
There is ongoing development in this area:

* [Working FPV setup for Crazyflie 2.0](https://forum.bitcraze.io/viewtopic.php?f=6&p=8295).
{% endcollapse_section %}

{% collapse_section Can the Crazyflie 2.0 fly autonomously? %}
Crazyflie 2.0 does not have enough sensors to locate itself in the environment. Though with an external location system Crazyflie 2.0 has been successfully flown autonomously. Outdoors Crazyflie can use a GPS receiver to achieve autonomous flight. A deck is in development so stay tuned on our website for more information about it.

Researchers use motion capture system, like [Vicon](http://www.vicon.com/), to fly the Crazyflie autonomously, usually controlling it from an outside computer. For example this research from MIT is using such a system together with a powerful control algorithm: <https://www.youtube.com/watch?v=v-s564NoAu0>

We have been using camera systems like the Microsoft Kinect to achieve autonomous flight just on top of the camera:  <https://www.bitcraze.io/2015/05/autonomous-flight-using-kinect2-for-position-control/>

We are currently developing a local positioning system that allows the Crazyflie 2.0 to fly autonomously in a room without requiring an expensive motion capture system. Read about the [Loco Positioning system](/loco-pos-system/) to find out more.

{% endcollapse_section %}

{% collapse_section Is it possible to control a swarm of Crazyflies? %}
Yes, it is possible to control multiple Crazyflie at the same time. The best way to do so right now is to use ROS and the ROS driver:
[ROS integration for Crazyflie](http://wiki.ros.org/crazyflie)

Here is an example launch file to connect and control multiple Crazyflies:
[crazyflie_ros](https://github.com/whoenig/crazyflie_ros/blob/master/crazyflie_demo/launch/multi_hover_vicon.launch)

For example this video was made using this ROS driver: 
[Crazyflie 2.0 Swarm](https://www.youtube.com/watch?v=gH1Fcf597So)
{% endcollapse_section %}


<div class="col-md-12">
  <p class="text-right">Want to add a FAQ? <a href="https://github.com/bitcraze/bitcraze-website/edit/master/src/{{page.path}}"><i class="fa fa-pencil"></i> &nbsp;Improve this page</a></p>
</div>
