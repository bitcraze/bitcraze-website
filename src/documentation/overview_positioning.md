---
layout: page
title: Overview Positioning Systems
permalink: /docs/overview_positioning/
page_id: overview_positioning
---
[Documentation Starting Page](/docs/)






Loco Positioning System
-----------------------
![The LPS system](/images/documentation/overview/lpssystem.png){:width="600px"}

The crazyflie can detect its position by means of our Loco Positioning System (LPS). Here we use UWB modules ([Decawave's DWM1000](https://store.bitcraze.io/collections/decks/products/motion-capture-marker-deck)), which can do ranging between each other. With the ranges of at least 4, but rather 8, [Loco positioning nodes](https://store.bitcraze.io/collections/positioning/products/loco-positioning-node), and a [loco positioning deck](https://store.bitcraze.io/collections/positioning/products/loco-positioning-deck), the crazyflie can calculate its own position onboard. Our [roadrunner](https://store.bitcraze.io/collections/positioning/products/roadrunner) is a stand-alone tag which can also work with our LPS system, if you require another platform than the Crazyflie.

For more information on how the LPS works, please take a look at our documentation [here](/docs/lps-node-firmware/master/index/).

Lighthouse positioning System
-----------------------
![The Lighthouse system](/images/documentation/overview/lighthouse.png){:width="600px"}

The lighthouse positioning system is our latest method of positioning on the Crazyflie 2.X and is still in early access. The [HTC Vive basestations V1](https://www.vive.com/us/accessory/base-station/) are used here, and they emit infrared laser scans that are detected by our [Lighthouse positioning deck](https://store.bitcraze.io/collections/positioning/products/lighthouse-positioning-deck). This enablees the crazyflie to (like with the LPS) calculate its own position on board.

For mor information on our lighthouse positioning system, please check out the documentation [here](https://wiki.bitcraze.io/doc:lighthouse:index).

Motion Capture Positioning
-----------------------
![Motion capture system](/images/documentation/overview/motioncapture.png){:width="600px"}

The Crazyflie can be positioned using reflective markers and infrared motion capture cameras. We use [Qualysis](https://www.qualisys.com/) in our own office but researchers and hobbiest have used the Crazyflie with MCS cameras of [Vicon](https://www.vicon.com/) and [Optitrack](https://optitrack.com/) as well. The main principle of using the MCS for positioning is that the cameras emit infrared light, which are reflected back by special reflective markers. This will enable the IR-cameras to detect the location of the marker, which the MPC software on an external computer will calculate the actual position from. This information can then send to the Crazyflie through the Crazyradio PA. 

For more information controlling the Crazyflie with Motion capture systems, please take a look at USC's [Crazyswarm documentation](https://crazyswarm.readthedocs.io/en/latest/). Also take a look at our [motion capture marker deck](https://store.bitcraze.io/collections/decks/products/motion-capture-marker-deck).

