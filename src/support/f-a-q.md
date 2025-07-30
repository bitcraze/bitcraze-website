---
layout: page-left-menu
title: FAQ
page_id: support-frequently-asked-questions
redirects:
  - /frequently-asked-questions-Crazyflie-2.0/
---

**_Can the Crazyflie 2.x fly autonomously?_**  
Yes, the Crazyflie 2.x is well suited for autonomous flight and this is one of its most common use cases. With the right setup, it can perform a wide range of autonomous tasks in research, education, and prototyping contexts.

To fly autonomously, the Crazyflie needs additional sensors or external positioning systems to determine its location. The {% poplink flow-deck %} is the easiest way to get started—it allows the drone to understand how it moves relative to the floor, enabling indoor autonomous flight. See the [product page](/products/flow-deck-v2/) for more information.

For more advanced applications, external positioning systems can provide absolute position feedback. These include indoor solutions like Lighthouse, Loco Positioning, or motion capture. For an overview of available options, see our [positioning system documentation](/documentation/system/).

**_Is it possible to control a swarm of Crazyflies?_**  
Yes, swarm control is a popular use case for Crazyflies. There are several tools available to help you get started, including our Python library and ROS-based solutions. Many users in the community have successfully built swarm applications for research, education, and exploration. You can find examples and inspiration in our documentation, GitHub repositories, and forums.

**_Can I fly the Crazyflie with a phone or tablet?_**  
The Crazyflie 2.x supports basic manual flight using a smartphone or tablet via Bluetooth Low Energy (BLE). Most modern Android and iOS devices with BLE support should work. For detailed system requirements, refer to the app store listing.

Due to the wide range of Android hardware and BLE implementations, compatibility may still vary between devices even if they meet the general requirements. We've published a [list of tested devices](/documentation/repository/crazyflie-android-client/master/userguides/user-instructions/#android-device-compatibility), though it is not actively maintained and should be treated as a general reference.

**_Can I fly the Crazyflie with a controller?_**  
Yes, you can fly the Crazyflie using a game controller such as a PlayStation or Xbox controller when connected to a computer. This setup typically requires the use of the Crazyflie Python client and a Crazyradio (PA or 2.0) for communication with the drone.

Support for specific controllers may vary by platform, but most standard USB or Bluetooth gamepads are compatible.

**_Can I fly the Crazyflie outdoors?_**  
We do not recommend flying the Crazyflie outdoors. The platform has minimal protection against wind, moisture, or debris. While it is quite durable (as noted in the durability FAQ), it is not designed to handle the elements typically encountered in outdoor environments.

**_For how long can the Crazyflie 2.x fly?_**  
A Crazyflie 2.x with brushed motors can fly up to 7 minutes, depending on usage. The Crazyflie 2.1 Brushless version typically flies longer, with an expected flight time of up to 10 minutes, also depending on flying conditions.

**_How is the Crazyflie 2.x charged?_**  
It is charged using a standard micro-USB connector commonly used by smartphones. You probably have one of these cables at home. You can charge it from any USB unit that can supply 500mA, most computers and adapters do. It takes up to 40min to charge and the blue LED (M3) will tell you roughly how charged it is by how long it is lit. When it is fully lit it is fully charged.

**_Can I hot swap batteries on the Crazyflie 2.x?_**  
Yes, you can hot swap batteries.

**_Can I use a bigger battery on the Crazyflie 2.x?_**  
Yes, as long as it is not too heavy, it is a single cell (3.7V), it fits and the polarity is correct you can do so. A higher capacity battery will give you longer flight times but will decrease agility. We recommend batteries with at least 15C continuous discharge rate.

**_Can I store data on my Crazyflie?_**  
The [SD-card deck](/products/micro-sd-card-deck/) can be used to store configuration data for a Crazyflie. An example could be an autonomous implementation where the Crazyflie is not connected via radio. The configuration can be written to a SD-card in a computer and the SD-card is transferred to the Crazyflie before it is started. This is also a way to separate configuration from hardware/firmware and avoid flashing different firmware to Crazyflie individuals.

**_What radio is used with the Crazyflie 2.x?_**  
The Crazyflie 2.x can be controlled with the Crazyradio, Crazyradio PA or {% poplink crazyradio-2-0 %} from a PC or with a mobile device using Bluetooth Low Energy.

**_What is the range of the Crazyradio?_**  
As with all radio communication it depends. It depends on the environment, radio interference, chip production variations, etc. It also depends on if you use the Crazyradio 2.0, Crazyradio PA or a mobile device. We have done a couple of line-of-sight tests with little interference outdoor with the different configurations:

* Crazyradio PA: Up to about 1000 meters range with direct line of sight in the 250 Kbit mode and under ideal conditions (the downlink is the main limiting factor).
* Mobile device: Up to about 20 meters range (The uplink, the mobile device is limiting the range).

**_Can I use a normal R/C transmitter to control the Crazyflie 2.x?_**  
This can be done with the [BigQuad expansion deck](/products/bigquad-deck/). It's working, but not a turn-key solution.

**_How many base stations do I need to fly in the Lighthouse positioning system?_**  
The recommended minimum number of base stations is two. This covers a 5x5x5m area. This can be scaled up to 4 base stations.

**_How many loco nodes do I need to fly in the Lighthouse positioning system?_**  
A theoretical minimum of 4 Anchors is required to calculate the 3D position of a Tag, but a more realistic number is 6 to add redundancy and accuracy.

**_Can I add sensors to my Crazyflie?_**  
The expansion ports on the Crazyflie 2.X enables you to connect more or less any hardware you like. When prototyping the [Breakout deck](/products/breakout-deck/) is useful as you can use it to connect your Crazyflie 2.X to a breadboard and easily debug your hardware design. When satisfied with the design you can transfer it to a [prototyping deck](/products/prototyping-deck/) for a more permanent implementation.

**_Can the Crazyflie 2.x be used to control a bigger quadcopter?_**  
Yes, it can. With the [BigQuad expansion deck](/products/bigquad-deck/).

You can also consider using the [Crazyflie Bolt 1.1](/products/crazyflie-bolt-1-1/) autopilot board to build a custom drone.

**_How durable is the Crazyflie 2.x?_**  
The Crazyflie 2.x family, including the Crazyflie 2.1 Brushless, uses the PCB as the frame, made of strong and lightweight [FR4](https://en.wikipedia.org/wiki/FR-4) material.

For the standard Crazyflie 2.x, brushed motors are mounted in flexible motor mounts designed to absorb impact. In a crash, propellers and motor mounts are the most likely components to need replacement. Both are inexpensive and easy to replace. In testing, Crazyflie 2.x drones have survived falls from heights up to 30 meters onto concrete, with damage typically limited to the propellers, motor mounts, or motors. However, it is not unbreakable, so handle with care!

The Crazyflie 2.1 Brushless has brushless motors directly screwed onto the PCB without separate mounts. It includes flexible landing feet or optional motor guards to help absorb impacts. The brushless motors are highly durable and are less prone to breakage, though care is recommended for optimal long-term performance.

**_Is the Crazyflie 2.0 still supported?_**  
Yes, the Crazyflie 2.0 is still supported with the same firmware and PC software as the Crazyflie 2.1

**_Is the Crazyflie 2.x backward compatible with the Crazyflie 1.0 (aka Crazyflie Nano)?_**  
No, the Crazyflie 2.x's firmware and python library is no longer backwards compatible, as of the 2017.06 release

**_Is the Crazyflie 1.0 (aka Crazyflie Nano) still supported?_**  
No, as of the 2017.06 release of the firmware and PC software, the Crazyflie Nano is no longer supported.

<div class="col-md-12">
  <p class="text-right">Want to add a FAQ? <a href="https://github.com/bitcraze/bitcraze-website/edit/master/src/{{page.path}}"><i class="fa-solid fa-pencil"></i> &nbsp;Improve this page</a></p>
</div>
