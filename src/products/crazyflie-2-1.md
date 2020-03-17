---
layout: page-product
title: Crazyflie 2.1
page_id: product-crazyflie-2-1
redirects:
  - /crazyflie-2-1/
---

{% buy_online https://store.bitcraze.io/products/crazyflie-2-1 %}

{% product_img Crazyflie 2.1; medium;
/images/crazyflie2-1/crazyflie_2.1_585px.jpg
%}

{% product_highlight
fa-gears;
Packed with functionality;
All you need and a bit more
%}

{% collapse_section Read more %}

It's not only a good flyer, the Crazyflie 2.1 is also equipped with low-latency/long-range
radio as well as Bluetooth LE. This gives you the option of downloading our app and using your mobile device as a controller or,
in combination with the [Crazyradio PA](/products/crazyradio-pa/), using your computer to display data and fly with a game
controller.



The Crazyflie 2.1 is charged via uUSB so you don't need an additional charger, you just connect it to your computer.

The board contains an EEPROM memory for storing configuration parameters and a 10-DOF IMU with accelerometer, gyro,
magnetometer and a high precision pressure sensor.
{% endcollapse_section %}


{% product_highlight
fa-lightbulb-o;
Your imagination sets the limits;
Expansion decks let you add what you want
%}

{% collapse_section Read more %}
We designed the Crazyflie 2.1 to be as flexible as possible. For us, this meant adding as many features as we could fit and writing firmware made to be modified. In addition to the default functionality that comes with the Crazyflie 2.1 we added a flexible expansion interface where a variety of expansion
decks can be attached, both on the top and the bottom of the Crazyflie 2.1. From this expansion interface the user can access buses
such as UART, I2C and SPI as well as PWM, analog in/out and GPIO.
{% endcollapse_section %}


{% product_highlight
fa-paper-plane-o;
Weight matters;
Only 27 grams and fits in the palm of your hand
%}

{% collapse_section Read more %}

Having a nano quadcopter that weighs only 27g has many
advantages. The size makes it ideal for flying inside a lab, office, or your living room without trashing half the interior.
Even though the propellers spin at high RPMs, they are soft
and the torque in the motors is very low when compared to a brushless
motor.

The Crazyflie 2.1 is quite fast if you let it be, but even if it
crashes it's still only 27g which means the kinetic energy involved in a crash is fairly low.
During hard impact, the system is designed to break at the cheapest component, the motor mounts, which are available as spare parts.
{% endcollapse_section %}


{% product_highlight
fa-arrows;
Small size, big performance;
9 cm<sup>2</sup> with a lot of power
%}

{% collapse_section Read more %}
The Crazyflie 2.1 features 4 x 7mm coreless DC-motors that give the Crazyflie a
maximum takeoff weight of 42g. This capacity enables it to carry multiple expansion decks, maybe with one of your own
experiments.
Performance parameters can be set in real-time from our clients.
By tuning these parameters you control the angles of the platform. Set them high to give you more speed and aggressiveness when flying, or set them low to make flying easier to learn when starting out.
{% endcollapse_section %}


{% product_highlight
fa-code;
Designed with development in mind;
Made by developers for developers
%}

{% collapse_section Read more %}
We think that a development platform should be something more than
just making the code available, therefore our software, firmware
and utilities have functionality such as logging, real-time parameter setting and
wireless firmware updates. The complete development environment for
most of the subsystems is available in a virtual machine, so you
don't need to install any tool chains to start developing. Also the
virtual machine works just as well for flying.

Once you have made some modifications, simply flash the new firmware
over the radio and you are ready to go.
For those interested in more advanced development, there is a
development adapter kit that supports an easy JTAG/SWD connection to
both of the MCUs on the Crazyflie 2.1.
{% endcollapse_section %}


{% product_highlight
fa-unlock;
Open source;
Share with others, never locked in
%}

{% collapse_section Read more %}
The Crazyflie 2.1 is an open source project, with source code and
hardware design both documented and available.
Since all of our development tools are open source (except for iOS) we are
allowed to redistribute them in an easy way for our users. Aside from the
firmware and software projects, there are a number of community
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
Or, why not clone our iOS repository and get into some ObjectiveC/Swift.

If you are into embedded systems, the STM32F405 has a lot of processor power you can use for doing experiments, making improvements and adding new features. The expansion decks allow you to experiment, prototype and design your own hardware.

Take a look in the [Development section](/development/development-overview/) to get started.

By the way, it's fun to just fly it too!
{% endcollapse_section %}


{% product_highlight
fa-random;
Always evolving;
Continuously updated and improved
%}

{% collapse_section Read more %}
We continuously work on the firmware, software, documentation and new, creative ways of using
the system. We also design new expansion decks that add new functionality,
and possibilities and expands the Crazyflie ecosystem.
The platform supports wireless firmware
updates via radio and Bluetooth LE, so when a new firmware is released,
it's a breeze to update.
{% endcollapse_section %}

---

#### Projects

{% hackster chathuranga-liyanage/beginner-s-guide-to-autonomous-quadcopters-9b5382 %}
{% hackster krichardsson/light-paint-with-a-drone-d050af %}
{% hackster ataffanel/crazyfblimp-6a081b %}
{% hackster krichardsson/bike-turning-signal-75d988 %}
{% hackster evoggy/crazycar-3c14b6 %}
{% hackster evoggy/flying-traffic-light-8be87d %}
{% hackster chromebookbob/long-exposure-light-painting-2c4106 %}
{% hackster fredg/crazyflie-2-0-fpv-setup-d2fc25 %}
{% hackster crazyflie-net/walkera-devo-7e-transmitter-crazyflie-2-mod-c32aa5 %}

---

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- [Wiki](https://wiki.bitcraze.io/projects:crazyflie2:index)
- [Specifications](https://store.bitcraze.io/products/crazyflie-2-1)

---

#### Tutorials

{% id_link getting-started-crazyflie-2 %}
