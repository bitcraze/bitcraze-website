---
layout: page-product
title: Crazyflie Bolt
page_id: product-crazyflie-bolt
redirects:
  - /crazyflie-bolt/
---

{% include early-access-info.html %}

{% buy_online https://store.bitcraze.io/products/crazyflie-bolt %}

{% product_img Crazyflie Bolt; medium;
/images/crazyflie-bolt/crazyflie_bolt_585px.jpg
%}

{% product_highlight
fa-expand;
Go BIG!;
Start off small and then grow
%}

{% collapse_section Read more %}

The Crazyflie Bolt runs the same firmware base as the Crazyflie 2.1 and includes the same IMU. So you can start out
developing using the much smaller Crazyflie 2.1 and then grow as your application grows.

{% endcollapse_section %}


{% product_highlight
fa-lightbulb-o;
Your imagination sets the limits;
Expansion decks let you add what you want
%}

{% collapse_section Read more %}
We put the same deck expansion connector on the Crazyflie Bolt as on the Crazyflie 2.X. So you have have access to all the same decks
as well as lots of signals for your own custom hardware, such as: UART, I2C and SPI as well as PWM, analog in/out and GPIO.

The Crazyflie Bolt also supports the same firmware flashing over-the-air, as well as logging and parameters, which makes it really easy
to develop on the platform.
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
both of the MCUs on the Crazyflie Bolt.
{% endcollapse_section %}


{% product_highlight
fa-unlock;
Open source;
Share with others, never locked in
%}

{% collapse_section Read more %}
The Crazyflie Bolt is an open source project, with source code and
schematics available.
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

#### Resources

- {% id_link getting-started-start %}
- [Buyers guide](/buy/buyers-guide/)
- [Development](/development/development-overview/)
- [Getting help](/support/getting-help/)
- [Wiki](https://wiki.bitcraze.io/projects:bolt:index)
- [Specifications](https://store.bitcraze.io/products/crazyflie-bolt)
