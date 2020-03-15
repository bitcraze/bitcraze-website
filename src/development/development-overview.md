---
layout: page
title: Development overview
page_id: development-overview
redirects:
  - /development-overview/
---

## Quick links

[Wiki](//wiki.bitcraze.io) – read about the projects, APIs, architecture, protocols and other techie details. Its a wiki, feel free to help us keep it updated.

[Forum](//forum.bitcraze.io) – connect and discuss with the community, get help or help others.

[Github](https://github.com/bitcraze) – all the source code, for software and hardware. Contribute and share your work with the community.

[Getting started with development](/tutorials/getting-started-with-development/) – a step by step guide to set up your development environment, build your first custom firmware and download it to the copter.

## What can you develop?

The Crazyflie platform is much more than just a quadcopter. It consists of lots
of different parts working together to complete the system. That means that
developers can dive into any given area and experiment, learn and improve. Each
of these areas can be explored separately using other boards, but with the
Crazyflie you have a complete system built around what you are experimenting
with. Here’s examples of a few areas that you can explore:

* **Sensors:** The platform consists of a number of different sensors. All of
these need signal processing and tuning to optimize performance.
* **Sensor fusion:** The outputs from all the sensors are fused together to
create the best possible measurement of the platform orientation.
* **Control theory:** The platform consists of a number of different
control-loops. Both for controlling roll/pitch/yaw onboard the Crazyflie, but
also for controlling the platform if you use external equipment like a Kinect to
fly [see our blog](/blog/).
* **Radio protocols:** The Crazyflie communicates via radio with the host. The
protocol is very basic but has the potential to be expanded with more features.
* **USB:** The Crazyradio uses USB device to communication with the host
real-time systems: The Crazyflie firmware is very time critical.
* **Image processing:** When using for instance the Kinect to fly you need image
processing to detect and calculate where the Crazyflie is.
* **Android:** Using your USB OTH/HOST enabled Android device you can use the
Crazyradio to fly your Crazyflie.

The different systems use different languages. So if you are looking at using a
specific language there are a few to choose from:

* C for the Crazyradio and Crazyflie firmware
* Python for the Crazyflie PC API and client (they also have Ruby and C/C++ APIs
maintained by the community)
* Java for the Crazyflie Android Client

## Tools

Even though we detail how to set up the different development environments for
the Crazyflie platform, this can be a hassle. To make it as easy as possible
for developers to start developing we provide a virtual machine that contains
everything needed. All you need is the virtual machine handler of your choice
then download and import the virtual machine that we have prepared. Since the
platform is developed using only open source tools you will have access to everything
you need for development. This includes build-systems, compilers, EDA software,
firmware libraries and debugging tools.

Using the virtual machine you will be able to:

* View, build and debug the Crazyflie firmware
* View and build the Crazyradio firmware
* View the EDA projects for the Crazyflie and the Crazyradio
* Develop the PC host applications
* Fly the Crazyflie of course :-)

## Features

Since the Crazyflie platform was intended to be used for experiments and
development, we wanted to put in some features that made this easier. Debugging
and developing for a flying platform isn’t always easy. Here are some of the
features:

* Bootload firmware via the radio
* Parameter framework for editing and reading data via the radio
* Logging framework for logging data via the radio
* Lots of CPU cycles left over as well as flash and RAM free to use
* JTAG interface
* Expansion interface to attach new hardware

The radio bootloader enables downloading and flashing firmware to the Crazyflie
via the radio. This means that when you are developing there’s no need to plug
it to the USB or a JTAG to flash your fresh builds. There’s also a USB
bootloader on the Crazyradio dongle that enables updating of firmware without
any external equipment.

The parameter and logging frameworks enables developers to easily (via macros
in the firmware) define a special usage for variables. When the host connects
to the Crazyflie a list of them is downloaded and they can be used. The
parameters are used to change variables in the Crazyflie in real-time. This is
very useful when working with the regulation, then you can change the tuning on
the fly. The logging framework is used to set up logging of variables from the
Crazyflie. Once set up the Crazyflie will push the values to the host at a
specified time interval. The values can then either be shown in the GUI,
plotted or saved to a file for external processing.

The Crazyflie features an ARM Cortex-M3 micro controller running at 72MHz and
with 20kb of RAM and 128kb of flash. This is a power chip and even with our
firmware running on it there’s lots of resources left over for developers to
use.

On the side of the Crazyflie there’s an expansion header. This header doesn’t
only contain the JTAG, it also contains a number of buses and power, providing
the possibility to extend the platform with new hardware. For more information
on the expansion header have a look at our [Wiki](//wiki.bitcraze.io).

## Community

All our projects are open and are hosted over at GitHub. This is also the place
where you can suggest new features, report issues and find current issues that
needs fixing. Apart from this we also host a wiki and an active forum. The wiki
contains documentation of our platform, guides on how to develop and use it as
well as documentation of different experiments and hacks that we and other have
done.

The forum is used to get support, discuss our platform or just show off some
project that they have done. If you feel like contributing we accept
pull-requests for all our software/firmware (after review and testing) and also
let users get write access to our wiki. This is a great resource for us since
there are lots of things we miss and need help fixing.
