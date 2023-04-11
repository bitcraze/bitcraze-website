---
layout: page-product
title: Crazyflie 2.1
page_id: product-crazyflie-2-1
redirects:
  - /crazyflie-2-1/
---
{% datasheet_product_status crazyflie_2_1  %}

{% buy_online https://store.bitcraze.io/products/crazyflie-2-1 %}

{% product_img Crazyflie 2.1; narrow;
/images/crazyflie2-1/crazyflie_2.1_585px.jpg
%}





{% product_highlight
fa-paper-plane-o;
Make your ideas fly!; Your imagination sets the limits
%}







{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The Crazyflie 2.1 is a versatile open source flying development platform that only weighs 27g and fits in the palm of your hand.

It's not only a good flyer, the Crazyflie 2.1 is also equipped with low-latency/long-range
radio as well as Bluetooth LE. This gives you the option of downloading our app and using your mobile device as a controller or,
in combination with the {% poplink crazyradio-2-0 %} or [Crazyradio PA](/products/crazyradio-pa/), using your computer to display data and fly with a game
controller.

The latest version of the successful Crazyflie development platform comes with improved flight performance, durability and radio. Together with an extensive ecosystem of software and deck expansions it's ideal for education, research and swarming.



{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section crazyflie_2_1; Features %}
{% datasheet_section crazyflie_2_1; Mechanical specifications %}
{% datasheet_section crazyflie_2_1; Onboard microcontrollers %}
{% datasheet_section crazyflie_2_1; IMU specification %}
{% datasheet_section crazyflie_2_1; Flight specifications %}
{% datasheet_section crazyflie_2_1; Radio specification %}


{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/crazyflie_2_1/crazyflie_2_1-datasheet.pdf)
- [Component Placement](/documentation/hardware/crazyflie_2_1/cf2.1_component_placement.pdf)
- [Schematics](/documentation/hardware/crazyflie_2_1/crazyflie_2.1_schematics_rev.b.pdf)
* [Expansion Decks]({% id_url cf2_expansiondecks %})


{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

We designed the Crazyflie 2.1 to be as flexible as possible. For us, this meant adding as many features as we could fit and writing firmware made to be modified. In addition to the default functionality that comes with the Crazyflie 2.1 we added a flexible expansion interface where a variety of expansion
decks can be attached, both on the top and the bottom of the Crazyflie 2.1. From this expansion interface the user can access buses
such as UART, I2C and SPI as well as PWM, analog in/out and GPIO.

#### Updating

We continuously work on the firmware, software, documentation and new, creative ways of using
the system. We also design new expansion decks that add new functionality,
and possibilities and expands the Crazyflie ecosystem.
The platform supports wireless firmware
updates via radio and Bluetooth LE, so when a new firmware is released,
it's a breeze to update.

#### Getting started

Go to the [crazyflie 2.X getting started tutorial]({% id_url getting-started-crazyflie-2 %}) to build your crazyflie, update its firmware and fly with it with the clients. Also take a look at our {% id_link system-overview %} to learn more about the Crazyflie's ecosystem of positioning systems, Clients and ofcourse the crazyflie itself with its expansion decks.



{% endrow_text %}
{% row_links %}

* {% id_link system-overview %}
* {% id_link buy-guide %}
#### Tutorials
* {% id_link getting-started-crazyflie-2 %}
* [All other tutorials]({% id_url tutorials %})

{% endrow_links %}
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
both of the MCUs on the Crazyflie 2.1.

#### Open Source

The Crazyflie 2.1 is an open source project, with source code and
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


{% datasheet_section crazyflie_2_1; Expansion connector specification %}



{% endrow_text %}
{% row_links %}
- {% id_link development-overview %}
- {% id_link repository-overview %}
- [Github Page](https://github.com/bitcraze)

#### Projects
* [Light paint](https://www.hackster.io/krichardsson/light-paint-with-a-drone-d050af)
* [Crazyblimp](https://www.hackster.io/ataffanel/crazyfblimp-6a081b)
* [Crazycar](https://www.hackster.io/evoggy/crazycar-3c14b6)
* [Long Exposure Painting](https://www.hackster.io/chromebookbob/long-exposure-light-painting-2c4106)
* [Walkera Devo](https://www.hackster.io/crazyflie-net/walkera-devo-7e-transmitter-crazyflie-2-mod-c32aa5)






{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}



---

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- [Datasheet](/documentation/hardware/crazyflie_2_1/crazyflie_2_1-datasheet.pdf)
- [Component Placement](/documentation/hardware/crazyflie_2_1/cf2.1_component_placement.pdf)
- [Schematics](/documentation/hardware/crazyflie_2_1/crazyflie_2.1_schematics_rev.b.pdf)
