---
layout: page-product
title: Crazyflie 2.0
permalink: /crazyflie-2/
page_id: product-crazyflie-2
---

{% product_img Crazyflie 2.0; medium;
/images/crazyflie.png;
/images/CrazyFlieHand.png



%}

{% product_highlight 
fa-gears; 
Packed with functionality;
All you need and a bit more
%}

{% collapse_section Read more %}

It's not only a good flyer, the Crazyflie 2.0 is also equipped with low-latency/long-range
radio as well as Bluetooth LE. This gives you the option of downloading our app and use your mobile device as a controller, or
in combination with the [Crazyradio PA](https://www.bitcraze.io/crazyradio-pa/) use your computer to display data and being able to fly it with a game
pad.



The Crazyflie 2.0 is charged via uUSB so you don't need a additional charger 
for your Crazyflie 2.0 just connect it to your computer.

The board contains an EEPROM memory for storing configuration parameters and a 10-DOF IMU with accelerometer, gyro,
magnetometer and a high precision pressure sensor.
{% endcollapse_section %}


{% product_highlight 
fa-lightbulb-o; 
Your imagination sets the limits;
Expansion decks let's you add what you want
%}

{% collapse_section Read more %}
We designed the Crazyflie 2.0 to be as flexible as we possibly could, for us this means adding as many features as we could fit and writing firmware made to be modified. In addition to the default functionality that comes with the Crazyflie 2.0 we have added a flexible expansion interface where a variety of expansion 
decks can be attached, both on the top and the bottom of the Crazyflie 2.0. From the interface the user can access the buses, 
like UART, I2C, SPI as well as PWM, analog in/out and GPIO.
{% endcollapse_section %}
    

{% product_highlight 
fa-paper-plane-o;
Weight matters;
Only 27 grams and fits in the palm of your hand
%}

{% collapse_section Read more %}

Having a nano quadcopter that only weighs 27g has a lot of
advantages. The size makes it ideal for flying inside a lab, office or your living room without trashing half of the interior. 
Even though the propellers spin at high RPMs, they are soft
and the torque in the motors is very low compared to a brushless
motor. 

The Crazyflie 2.0 is pretty fast if you let it be, but even if it
crashes it's still only 27g which means the kinetic energy involved in a crash is fairly low. 
The system is designed to break at the cheapest part, the motor mounts, which are available as spare parts.
{% endcollapse_section %}
        

{% product_highlight 
fa-arrows;
Small size, big performance;
9cm2 with a lot of power
%}

{% collapse_section Read more %}
The Crazyflie 2.0 features 4 x 7mm coreless DC-motors that gives the Crazyflie a
maximum takeoff weight of 42g. This capacity enables it to carry multiple expansions decks, maybe with one of your own
experiments.
Performance parameters can be set in real-time from our clients.
By tuning these parameters you can set the angles of the platform to be high, which
will give you a lot of speed and aggressiveness when flying. Or you
can lower them to make it easier to start out with.
{% endcollapse_section %}


{% product_highlight 
fa-code;
Designed with development in mind;
Made by developers for developers
%}

{% collapse_section Read more %}
We think that a development platform should be something more than
just making the code available, therefore the software, firmware 
and utilities have functionality such as logging and real-time parameter setting and
wireless firmware update. The complete development environment for 
most of the projects is available in a virtual machine, so you 
don't need to install any toolchains to start developing and the 
virtual machine can just as well be used for flying.

Once you have made the modifications you want, just flash the new firmware
over the radio and you are ready to go. 
For anyone interested in doing more advanced development there is a
development adapter kit that supports easy JTAG/SWD connection to
both of the MCUs on the Crazyflie 2.0.
{% endcollapse_section %}


{% product_highlight 
fa-unlock;
Open source;
Share with others, never locked in
%}

{% collapse_section Read more %}
The Crazyflie 2.0 is an open source project, with source code and
hardware design available and documented. 
Since all of our development tools are open source, except for iOS, we are
allowed to redistribute them in an easy way for our users. Aside from the
firmware and software projects, there is also a number of community
supported APIs written in Java, Ruby, C/C++, C# and Javascript.
{% endcollapse_section %}


{% product_highlight 
fa-heart-o;
Something for everyone;
Develop, change and experiment - or just fly
%}

{% collapse_section Read more %}
There are ample opportunities to play with the code regardless of which language you prefer. 
Our client API is written in Python, while there are many other client-side implementations on GitHub written
in Ruby, C#, C/C++, JavaScript, Node.JS, Cylon.JS or Java.
Or why not clone our iOS repository and get into some ObjectiveC/Swift.

If you are into embedded systems, there is a lot of processor power that you can use in
the STM32F405 for doing experiments, improvements and new features. The expansion decks allow you to experiment,
prototype and design your own hardware.

Take a look in the [Development section](/development-overview/) to get started.

By the way, it fun to just fly it too!
{% endcollapse_section %}


{% product_highlight 
fa-random;
Always evolving;
Continuously updated and improved
%}

{% collapse_section Read more %}
We continuously work on the firmware, software, documentation and new creative ways of using 
the system. We also design new expansion decks that add new functionality, 
possibilities and expands the Crazyflie eco system.
The platform supports wireless firmware
updates via radio and Bluetooth LE, so when a new firmware is released
it's a breeze to update.
{% endcollapse_section %}

---

{% collapse_section Features %}
* Durable design
* Easy to assemble and no soldering required
* Supports expansion boards with automatic detection
* Supports flying from iOS and Android with Bluetooth LE support as well as from Windows/MacOSX/Linux with the Crazyradio or Crazyradio PA
* Tested to above 1 km radio range LOS with Crazyradio PA
* Wireless firmware update
* On-board charging via standard uUSB
* Dual-MCU architecture with dedicated radio/power management SoC for advanced applications
* Using Crazyradio or Crazyradio PA together with a computer the user can log/graph/set variables in real-time via the radio and make full use of the expansion boards
{% endcollapse_section %}

{% collapse_section Specification %}
#####  Mechanical specs

* Weight: 27g
* Size (WxHxD): 92x92x29mm (motor-to-motor and including motor mount feet)

##### Radio specs

* 20 dBm radio amplifier tested to &gt; 1 km range LOS with Crazyradio PA
* Bluetooth Low Energy support with iOS and Android clients available (tested on iOS 7.1+ and Android 4.4+)
* Radio backwards compatible with original Crazyflie and Crazyradio

#####  Microcontrollers

* STM32F405 main application MCU (Cortex-M4, 168MHz, 192kb SRAM, 1Mb flash)
* nRF51822 radio and power management MCU (Cortex-M0, 32Mhz, 16kb SRAM, 128kb flash)
* uUSB connector
* On-board LiPo charger with 100mA, 500mA and 980mA modes available
* Full speed USB device interface
* Partial USB OTG capability (USB OTG present but no 5V output)

##### IMU

* 3 axis gyro (MPU-9250)
* 3 axis accelerometer (MPU-9250)
* 3 axis magnetometer (MPU-9250)
* high precision pressure sensor (LPS25H)

##### Flight specification

* Flight time with stock battery: 7 minutes
* Charging time with stock battery: 40 minutes
* Max recommended payload weight: 15 g

##### Supported clients/controllers

* Win/Linux/OSX python client 
  * The gamepads used by the Xbox 360 and the Playstation 3 are used as reference controllers
  * Any gamepad/controller with at least 4 analog axes 
* Android mobile device
* iOS mobile device

##### Expansion connector

* VCC (3.0V, max 100mA)
* GND
* VCOM (unregulated VBAT or VUSB, max 1A)
* VUSB (both for input and output)
* I2C (400kHz)
* SPI
* 2 x UART
* 4 x GPIO/CS for SPI
* 1-wire bus for expansion identification
* 2 x GPIO connected to nRF51
* 8KB EEPROM
{% endcollapse_section %}

{% collapse_section Package Contents %}

* 1 x Crazyflie 2.0 control board with all components mounted
* 5 x CW propellers
* 5 x CCW propellers
* 5 x Motor mounts
* 1 x LiPo battery (240mAh)
* 5 x Coreless DC motors
* 2 x Short expansion connector pins (1&#215;10, 2mm spacing, 8 mm long)
* 2 x Long expansion connector pins (1&#215;10, 2mm spacing, 14 mm long)
* 1 x Battery holder expansion board

{% endcollapse_section %}

{% collapse_section Spare parts %}

* [Propellers](http://www.seeedstudio.com/depot/Crazyflie-Nano-Quadcopter-4-x-CWCCW-spare-propellers-BCCWP01A-and-BCCCWP01A-p-1361.html?cPath=84_114)
* [LiPo battery (240mAh)](http://www.seeedstudio.com/depot/Crazyflie-20-Spare-240mAh-LiPo-battery-p-2116.html?cPath=84_147)
* [Coreless DC motor](http://www.seeedstudio.com/depot/Crazyflie-20-Spare-7x16-mm-coreless-DC-motor-with-connector-p-2115.html?cPath=84_147)
* [Motor mount](http://www.seeedstudio.com/depot/Crazyflie-20-4-x-spare-7-mm-motor-mounts-p-2113.html?cPath=84_147)
* [Battery holder expansion board](http://www.seeedstudio.com/depot/Crazyflie-20-Battery-holder-expansion-board-p-2107.html?cPath=84_147)

{% endcollapse_section %}

{% collapse_section Resources %}

* [Wiki](//wiki.bitcraze.io/)
* [Forum](//forum.bitcraze.io/)
* [Getting started and Assembly instructions](/getting-started-with-the-crazyflie-2-0/)

{% endcollapse_section %}

{% buy_online http://www.seeedstudio.com/depot/Crazyflie-20-p-2103.html %}
