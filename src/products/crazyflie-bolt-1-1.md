---
layout: page-product
title: Crazyflie Bolt 1.1
page_id: product-crazyflie-bolt-1-1
---

{% datasheet_product_status crazyflie_bolt_1_1%}

{% buy_online https://store.bitcraze.io/products/crazyflie-bolt_1_1 %}

{% product_img Crazyflie Bolt 1.1; narrow; /images/crazyflie-bolt_1_1/crazyflie_bolt_1_1_585px.jpg %}

{% product_highlight
fa-paper-plane-o;
Make your ideas fly!; Your imagination sets the limits
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The Crazyflie Bolt 1.1 is a Crazyflie 2.X compatible flight controller for brushless builds. It is intended to have the strengths of the
Crazyflie 2.1, but in a slightly bit bigger package. The Crazyflie Bolt 1.1 runs the same firmware base as the Crazyflie 2.1 and includes
the same IMU. So you can start out developing using the much smaller Crazyflie 2.1 and then grow as your application grows.

Differences compared to Crazyflie Bolt
* Motor signal output M4 has been moved from PB9 to PB10 to be able to support the DSHOT protocol.
* PCB thickness has been reduced from 1.6mm to 1mm to save weight.
* Revision updated to Rev.H


{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}

{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section crazyflie_bolt_1_1; Features %}
{% datasheet_section crazyflie_bolt_1_1; Onboard microcontrollers %}
{% datasheet_section crazyflie_bolt_1_1; IMU specification %}
{% datasheet_section crazyflie_bolt_1_1; Radio specification %}
{% datasheet_section crazyflie_bolt_1_1; Interface specification %}
{% datasheet_section crazyflie_bolt_1_1; Expansion connector specification %}
{% datasheet_section crazyflie_bolt_1_1; Electrical specifications %}
{% datasheet_section crazyflie_bolt_1_1; Mechanical specifications %}
{% datasheet_section crazyflie_bolt_1_1; Mechanical drawing %}
{% datasheet_section crazyflie_bolt_1_1; Package contents %}

{% endrow_text %}

{% row_links %}

* [Datasheet](/documentation/hardware/crazyflie_bolt_1_1/crazyflie_bolt_1_1-datasheet.pdf)
* [Schematics](/documentation/hardware/crazyflie_bolt_1_1/crazyflie_bolt_1_1_revh.pdf)

{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

{% datasheet_section crazyflie_bolt_1_1; Connection diagram %}

### Configuration

The Crazyflie firmware will automatically detect that it is running on a Bolt 1.1 and activate the right modules. However some of the configurations still has to be done during compile time and making them run time configurable is currently work in progress.

### Early access notes (2021)
* Different PID tuning parameters might be needed for it to fly well. Currently this has to be hard coded. Later this will be saved in the EEPROM or in the 1-wire memory.
* External battery voltage/current reading is implemented but no logic behind it, so don't run out of battery.
* The ESC PWM output is set by default to 400Hz. Use ESCs which can handle this or compile with new value. There is also the possibility to enable OneShot125 output.
* It is wise to do a range test before flying far away.
* Be safe, it is experimental software. Run all testing without props!

{% endrow_text %}
{% endrow_icon_text_links %}
{% endtab %}


{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

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
both of the MCUs on the Crazyflie Bolt.

#### Open Source

The Crazyflie 2.X/Bolt 1.X is an open source project, with source code and
hardware schematics both documented and available.
Since all of our development tools are open source (except for iOS) we are
allowed to redistribute them in an easy way for our users. Aside from the
firmware and software projects, there are a number of community
supported APIs written in Java, Ruby, C/C++, C# and Javascript.

#### Change the code

There are ample opportunities to play with the code regardless of which language you prefer.
Our client API is written in Python, while there are many other client-side implementations on GitHub written
in Ruby, C#, C/C++, JavaScript, Node.JS, Cylon.JS or Java.
Or, why not clone our iOS repository and get into some ObjectiveC/Swift.

If you are into embedded systems, the STM32F405 has a lot of processor power you can use for doing experiments, making improvements and adding new features. The expansion decks allow you to experiment, prototype and design your own hardware.

{% datasheet_section crazyflie_bolt_1_1; Errata %}

{% endrow_text %}
{% endrow_icon_text_links %}
{% endtab %}

{% endtabgroup %}

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link support-frequently-asked-questions %}
- {% id_link development-overview %}
- {% id_link support-getting-help %}
- [Datasheet](/documentation/hardware/crazyflie_bolt_1_1/crazyflie_bolt_1_1-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyflie_bolt_1_1/crazyflie_bolt_1_1_revh.pdf)
- [Store](https://store.bitcraze.io/products/crazyflie-bolt_1_1)
