---
layout: page-left-menu
title: Getting started with the Crazyflie
permalink: /getting-started-with-the-crazyflie/
page_id: getting-started-crazyflie
---

## Crazyflie assembly

The Crazyflie is sold as a kit, it requires some assembly and soldering. The 
wiki contains [Assembly instructions](//wiki.bitcraze.io/projects:crazyflie:mechanics:assembly). 
There is also a video describing the assembly steps:

<div class="embed-row-medium">
  <div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/KeqiUPIDpV8?feature=oembed" allowfullscreen=""></iframe>
  </div>
</div>

## Required hardware

Once assembled you will need a computer a gamepad and the Crazyradio dongle to fly the Crazyflie.

Any gamepad with at least four axis will work. The following gamepad are supported out of the box:

* PS3 USB controller (Tricky for windows, works on linux, mac and the bitcraze Virtual machine).
* PS4 USB controller
* XBox 360 USB controller

Other gamepad can be configured into the Crazyflie client software.

The Crazyradio dongle shall also be connected to the computer. The wiki 
contains the [Windows driver installation instructions](//wiki.bitcraze.io/doc:crazyradio:install_windows_zadig). 
Mac and Linux does not require drivers but Linux requires 
[some configuration](//wiki.bitcraze.io/projects:virtualmachine:create_vm?s[]=udev#adding_udev_rules_for_crazyradio).

## Installing software

The Crazyflie is controlled using a software named Crazyflie PC client 
(cfclient in short). There are two possibilities to fly the Crazyflie: Either 
running running the software directly on your machine or using our virtual machine.

* If you want to develop for the Crazyflie or if you do not want to install software and drivers directly on your computer the Bitcraze virtual machine is the way to go
* Otherwise installing directly on the computer is lighter to download and use.

### Windows

The windows installer can be downloaded from 
[github](https://github.com/bitcraze/crazyflie-clients-python/releases)
It installs the Crazyflie PC client. The Crazyradio USB dongle driver has to be 
[installed independently](//wiki.bitcraze.io/doc:crazyradio:install_windows_zadig).

### Linux and Mac

Instruction for Linux and Mac can be found in the crazyflie client 
[readme](https://github.com/bitcraze/crazyflie-clients-python/blob/master/README.md) 
file. The package for Linux and Mac can be downloaded 
[github](https://github.com/bitcraze/crazyflie-clients-python/releases)

### Using the Virtual machine

We provide a virtual machine running a Linux distribution pre-installed with 
all the software required to use the Crazyflie but also to develop with it. The 
virtual machine download link can be found in the 
[virtual machine wiki page](//wiki.bitcraze.io/projects:virtualmachine:index).

The virtual machine comes in a standard OVA file which means that it can run 
with many visualization software. However it has been setup and mostly tested 
on Virtualbox. You can 
[donwnload VirtualBox](https://www.virtualbox.org/wiki/Downloads)
for you computer, install it and then double-click on the Bitcraze virtual 
machine to start using it.

When the virtual machine is started, the Crazyradio and your gamepad should be 
connected to it:

<img src="/images/bitcraze_vm_setup-1024x684.jpg" alt="bitcraze vm setup"/>

## Flying

Now you should  have the client launched, the gamepad and the Crazyradio 
plugged and working.

* Select in the "Input device" menu the gamepad and the mapping. Check by moving the axis that the Thrust, Pitch, Roll and Yaw fields are showing meaningful values.
* You can verify in Help/About/Debug that the Crazyradio is recognize. It should show something like: "radio: Crazyradio version 0.52"

Switch ON the Crazyflie and put it on a stable surface (it needs to calibrate 
its sensors). In the client, click connect and select your Crazyflie in the 
list (should look like "radio://0/42/2M") and finally click connect. The 
Crazyflie is now ready to fly!

## More information

The main sources of information for the Crazyflie are the Wiki and the Forum. 
The wiki is open to contribution just drop us a mail for an account. The forum 
is the first line of support and you can register online to it.

More information are present in our [wiki](//wiki.bitcraze.io):

* [Assembly instruction](//wiki.bitcraze.io/projects:crazyflie:mechanics:assembly)
* [GUI user guide](//wiki.bitcraze.io/doc:crazyflie:client:pycfclient:index)
* [More in-depth stating instruction](//wiki.bitcraze.io/projects:crazyflie:userguide:index)
* [Software and Firmware  download](//wiki.bitcraze.io/misc:downloads:index)
