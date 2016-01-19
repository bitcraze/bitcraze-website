---
layout: page-product
title: Crazyflie
permalink: /crazyflie/
---

 
{% notice_info This product is discontinued and has been replaced with <a href="/crazyflie-2/">Crazyflie 2.0</a> %}

{% img Crazyflie; medium; /images/crazyflie_page.png %}

The Crazyflie Nano Quadcopter is a miniature quadcopter that fits in your hand. 
It only weights about 19 grams and is 9 cm motor-to-motor. Aside from being fun 
to fly, it's main purpose is to be a versatile development platform that can be 
used to experiment, develop and explore a lot of different areas of technology.

## How do I use the quadcopter?

The quadcopter is flown by connecting a USB radio dongle and a controller to a 
host system, and then running the Crazyflie client software. This could either 
be a computer (running Linux or Windows), an Android device that supports USB 
OTH/HOST or an embedded system like the Raspberry Pi.

For input a wide range of controllers can be used when connected to your PC. 
There are also RC-controllers that you can connect directly to the Crazyflie 
Nano Quadcopter. 

## The Crazyflie platform

The Crazyflie Nano Quadcopter is part of the Crazyflie platform. The platform 
consists of several different components, like the 
[Crazyradio](/crazyradio/), the development environment and the host PC and 
Android applications.

## Quadcopter specifications

### Specifications of the Crazyflie Nano Quadcopter 6-DOF version:

* Small and lightweight, around 19g and about 90mm motor to motor
* Flight time up to 7 minutes with standard 170mAh Li-Po battery
* Standard micro-USB connector for charging which takes ~20min for the stock 170mAh Li-Po battery
* On-board low-energy radio@1mW based on the nRF24L01+ chip. Up to 80m range (environment dependent) when using the Crazyradio USB dongle
* Radio bootloader which enabled wireless update of the firmware
* Powerful 32 bit MCU: STM32F103CB @ 72 MHz (128kb flash, 20kb RAM)
* 3-axis high-performance MEMs gyros with 3-axis accelerometer: Invensense MPU-6050
* Expansion header 2×10 pins 1.27mm (0.05”) pitch including power, I2C/UART, SPI/ADC. Header also contains ARM Cortex 10-pin JTAG (header not included)
* 4-layer low noise PCB design with separate voltage regulators for digital and analog supply

### Specifications for the Crazyflie Nano Quadcopter 10-DOF are the same, but it has two added sensors:

* 3-axis magnetometer HMC5883L (compass)
* High precision altimeter MS5611-01BA03

## What can I use the quadcopter for?

The Crazyflie Nano Quadcopter can of course be flown just because it's fun, but 
the main usage is as a development, teaching or experimentation platform. To 
get some ideas of what's possible to work with have a look at 
[our development page](/development-overview/) or at our release video below.

<div class="embed-row-medium">
  <div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/3WBUVYZkODI?feature=oembed" allowfullscreen=""></iframe>
  </div>
</div>

## How do I assemble the Crazyflie?

The Crazyflie is shipped as a kit, which means that you will have to do some 
assembly. This includes soldering the motors to the PCB as well as attaching 
the motor mounts and battery. Please have a look at the 
[detailed assembly instructions on our wiki](//wiki.bitcraze.se/projects:crazyflie:mechanics:assembly)
and the assembly video before you start assembling your Crazyflie.

<div class="embed-row-medium">
  <div class="embed-responsive embed-responsive-16by9">
    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/KeqiUPIDpV8?feature=oembed" allowfullscreen=""></iframe>
  </div>
</div>
