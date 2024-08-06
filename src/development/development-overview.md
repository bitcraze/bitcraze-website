---
layout: page-left-menu
title: Development overview
page_id: development-overview
redirects:
  - /development-overview/
---

## Quick links for development

There is so many parts of the Crazyflie that can be developed, and before digging into that, it is important to know generically how the system fits togeter. Here are some quick links to some of those important places that are important for development.

* **[The Eco-System](/documentation/system/)** – read about the projects, APIs, architecture, protocols and other techie details.

* **{% id_link repository-overview %}** - from each element and aspect of our ecosystem, there exists github repositories and accommodating detailed documentation.

* **[Support channels](/support/getting-help/)** – Know where to look for support when you are getting into trouble.

* **[Github](https://github.com/bitcraze)** – A list of all the source code, for software and hardware. Here you can contribute and share your work with the community.

* **The {% id_link getting-started-development %} Tutorial** – a step by step guide to set up your development environment, build your first custom firmware and download it to the copter.

* **{% id_link contribute %} your work** - Opensource is all about sharing and caring! If you want your code to be preserved and used by more generations, contribute your work back to our code base.


## Programming Languages


The different systems use different languages. So if you are looking at using a
specific programming language, these are the most common ones are in our {% id_link repository-overview %} :

* **Python** for the Crazyflie PC API and client
* **C** for the Crazyradio and Crazyflie firmware
* **Other languages** Check out [external projects](/development/external-projects/#connectivity-libraries) for other programming language support language support.

Make sure to use our coding standard for languages, which will be important if you want to {% id_link contribute %} your code back to our firmware/software.

 {% inline_button Coding Standards ; /development/contribute/coding-standards/ %}




## Communication Frameworks
* **Crazyflie Native Framework**: We maintain our own repositories on how to communicate with the crazyflie. Check out our {% id_link repository-overview %}.
* **ROS 2&#8482**: Check out the [Crazyswarm2 Project](https://imrclab.github.io/crazyswarm2/)!
* **Other Frameworks**: Check out [external projects](/development/external-projects/#connectivity-libraries) for other framework and autopilot support from our community.

 {% inline_button External Projects ; /development/external-projects/ %}


## APIs, versioning and evolution of the code base

There are a number of APIs in the Crazyflie eco system on multiple levels, some might be obvious while others are a bit
more subtle. Some of the APIs are documented and versioned while there is room for improvement in other cases.

Since all code can be used by a programmer, one point of view would be that all functions and protocols are APIs, and
should not change without some form of version change. To make it possible for us to manage and improve the code base, we have
chosen a few areas (APIs) that we will update in a structured way
(see below). Code that does not belong to these APIs can be changed at any time, which we believe is necessary to keep
the system dynamic and evolve over time.

The purpose of managing APIs in a structured way is to help a developer to understand if a protocol or a set of
functions is likely to change over time and if it will break the application. It should also be possible to detect if
(and how) the API has changed and what changes that are required to the code to make the application work.

### The update process and deprecations

Areas that can be versioned using a version number, for instance protocols, should update the version number when
something is changed. Check the documentation for the specific area/protocol to see if there
is a specific update policy for this area. An example would be
[CRTP](/documentation/repository/crazyflie-firmware/master/functional-areas/crtp/index.md#protocol-version-and-stability-guarantee).

For functions in the code base, there is not always a version number tied to the function (except the release version) that
clearly tells the programmer if there has been an API break or not. The approach we use is to mark functions that we
want to remove as `deprecated`. The deprecated function will continue to exist and work for a minimum of 6 months before
being removed. Deprecated functions are documented in the release notes to give a heads up that they will be removed in
a future release. The deprecation marking is usually done by adding the word `deprecated` to the function documentation.
Also add a date when the function will be removed (at the earliest) and, if applicable, a replacement function to use
instead or how to change the code.

Example:

``` C
/**
 * @brief Deprecated (removed after August 2023). Use the "deck.bcLoco" parameter instead.
 *
 * Nonzero if [Loco positioning deck](https://store.bitcraze.io/products/loco-positioning-deck) is attached
 */
PARAM_ADD_CORE(PARAM_UINT8 | PARAM_RONLY, bcDWM1000, &isInit)
```


## Development Topics

The Crazyflie platform is much more than just a Quadcopter. It consists of lots
of different parts working together to complete the system. That means that
developers can dive into any given area and experiment, learn and improve.

Here’s examples of a few areas that you can explore:

* **Flight Stabilization**:
  * **Sensors:** The platform consists of a number of different sensors. All of
these need signal processing and tuning to optimize performance.
  * **Sensor fusion:** The outputs from all the sensors are fused together to
create the best possible measurement of the platform orientation.
  * **Control theory:** The platform consists of a number of different
control-loops. Both for controlling roll/pitch/yaw onboard the Crazyflie, but
also for controlling the platform if you use external positioning system.
* **Communication**
  * **Radio protocols:** The Crazyflie communicates via radio with the host. The
protocol is very basic but has the potential to be expanded with more features.
  * **USB:** The Crazyradio uses USB device to communication with the host
real-time systems: The Crazyflie firmware is very time critical.
* **Positioning** We have many positioning systems such as the Loco Positioning System, the lighthouse system and support for mocap systems. The quality of the positioning is something that always can be improved.
* **Autonomy**
  * **PC** From the computer the Crazyfie can be controlled from our python library
  * **Onboard**: The app-layer enables onboard autonomy on the Crazyflie.


Check out the {% id_link repository-overview %} documentation for more inspiration, especially the crazyflie-firmware.


## Development Tools and Environments

Even though we detail how to set up the different development environments for
the Crazyflie platform, this can be a hassle. Here we will provide a list of tools that can be used to make development easier:

* **The Virtual Machine**: we provide a pre-compiled virtual machine with the full development environment already preinstalled for you. {% id_link getting-started-crazyflie-2 %} under 'installing on VM' shows installation instructions of how to install the VM on your computer.
* **The Toolbelt**: The toolbelt is a utility to run tools for testing and building of software modules. Go to the [toolbelt documentation](/documentation/repository/toolbelt/master/) for more information
* **Native install**: This means that you want setup the development environment on your native machine from scratch. You should checkout the  {% id_link repository-overview %} to go to the part of the eco system you would like to develop for and follow the documentation for the install and setup instructions.

Also check which open source tools we are using / have used at Bitcraze internally to get inspiration on what you would like to use for your case.


 {% inline_button Open Source Tools ; /about/credits/ %}

## Features Crazyflie

Since the Crazyflie platform was intended to be used for experiments and
development, we wanted to put in some features that made this easier.

The radio bootloader enables downloading and flashing firmware to the Crazyflie via the radio, so that no JTAG programmer is required. However, for on-chip debugging, the Crazyflie still has a JTAG adapter for those that really want to dig in.

Moreover, the parameter and logging framework enables developers to easily define a special usage for variables. and the parameters are used to change variables in the Crazyflie in real-time.

Check out all the features and specifications of the Crazyflie on the Product page.

 {% inline_button Crazyflie Product Page  ; /products/crazyflie-2-1-plus/ %}

## Community

All our projects are open and are hosted over at GitHub. This is also the place
where you can suggest new features, report issues and find current issues that
needs fixing. Apart from this we also host an [active discussion page](https://discussions.bitcraze.io/) which is mostly used for support but can also start discussions.

You can use the community to discuss your contributions and share your code with the community. That is what it is all about in the open-source world!

 {% inline_button Community Contributions ; /development/contribute/ %}
