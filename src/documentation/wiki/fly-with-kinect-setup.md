---
layout: page
title: Crazyflie Kinect system setup
page_id: fly-with-kinect-setup
---

**Note:  Beware that this might not work with the latest firmware or clients** 


As explained in the [vision main page the Crazyflie vision system](/documentation/wiki/fly-with-kinect/) is modular and is composed of many programs:

![crazyflie vision architecture](/images/documentation/wiki/crazyflie-vision-arch.png)

This page aims at explaining step-by-step how to get everything working. It is based on the Windows Kinect SDK implementation of the detector using the setup Bitcraze had at the Maker Faire Bay Area 2015.


# Hardware requirement

The system requires:

* One Kinect 2 for windows sensor
* One PC running Windows 8.1+, Visual studio 2013 (community edition works well) and the Kinect for windows SDK 2.0
* One PC running Linux, preferably Ubuntu 14.04+
* The two PC should be connected using low latency links like an Ethernet network cable.

The reason for having 2 PCs is that the controller and the clients are not working properly on Windows yet and the Vision algorithm requires functionalities that are not available in the Kinect Linux driver yet (the depth to 3D coordinate conversion).

## Hardware setup
The Kinect 2 should be placed on the ground, facing up, in the middle of the room (or at least pretty far from the walls). Avoid having reflective things on the ceiling.

![kinect setup](/images/documentation/wiki/kinect_setup.jpg)

The Crazyflie shall be equiped with markers to be detected by the detection program. We put a “donuts” in the middle and three points under motors M2, M3 and M4. Dimention of the middle ring are on the first image:

![marker dark](/images/documentation/wiki/markers_dark.jpg)
![marker light](/images/documentation/wiki/markers_light.jpg)

For the markers we use a retro-reflective sticky sheet that is supposed to be stuck on fabric (it was fount at Panduro here in Sweden, similar product should be available in hobby and sport shops):

![reflective sheet](/images/documentation/wiki/reflective_sheet.jpg)

## Software setup
We will assume the Linux PC has the ip 192.0.0.1 and the Windows PC the IP 192.168.0.2.

### Image Processing
The image processing runs in the Windows computer.

First of all you should be able to open and compile the [Kinect for windows SDK example](http://www.microsoft.com/en-us/download/details.aspx?id=44561).

Then you can clone the [windows detector](https://github.com/bitcraze/kinect-detector-windows) in Visual studio.

Install all dependencies listed in the README. You may have to change the project configuration to point to the libraries in your system.

The vision detector will listen on port 1213, make sure to setup the Windows firewall accordingly when the program starts.

You have to stop the program from Visual studio, closing the detector windows currently does nothing.

When working you should see these and the crazyflie can be detected:

![kinect detector](/images/documentation/wiki/kinect-detector.png)

### Control, Set-poins and Visualizer
These scripts runs in the Linux computer. To start, clone the [crazyflie-vision git repos](https://github.com/bitcraze/crazyflie-vision).

The controller is client to all other parts of the system. You can check the IP in the control/kctrl.py file:

* **client_conn** Connection to the Crazyflie client, 127.0.0.1 in our setup
* **kinect_conn** Connection to the Kinect detector, 192.168.0.2 in our setup
* **midi_conn** Connection to a midi-to-zmq server, this is not used anymore and can be ignored.
* **ctrl_conn** Connection to the setpoint GUI, 127.0.0.1 in our setup.

Once the IPs are well configured the controller, set-pint GUI and visualizer can be launched. Only the controller is required to fly, the other can optionally be launched as well.

## Client
The client runs in the Linux computer.

**Note Currently in order for scaling/control to work with the ZMQ input in the client the Vision MUX has to be used. It's currently pretty unstable, but it can be enabled by following these steps:**

* Check out the [develop branch of the client](https://github.com/bitcraze/crazyflie-clients-python)
* Enable the MUX in the config file (set enable_input_muxing to true)
* Start the client, switch the input device you would like to use and set-up select the correct mapping (this needs to have Alt 1 set up)
* Select the ZMQ input driver
* Restart the client
* Select the Vision MUX in Input devices → Mux (lots of warnings in the console after this…)
* First select the manual input-device
* Deselect/select the ZMQ input (now the warnings should stop…)
* You're now ready to go. Press and hold Alt 1 to manually control roll/pitch/yaw/thrust, release it to give control to the ZMQ input

## Working on the system
When everything is setup you can just fly in the picture by keeping the Alt 1 button pressed and release it to let the kinect take control. The setpoint GUI permits to change the setpoints and to control some pre-programmed patterns.

One of advantage of using ZMQ is that we can stop and restart parts of the system without restarting everything. If going fast it is even possible to restart the controller while the Crazyflie is flying.