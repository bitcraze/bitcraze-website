---
layout: page-left-menu
title: Getting started with the Z-ranger deck
permalink: /getting-started-with-z-ranger-deck/
page_id: getting-started-z-ranger-deck
---

{% si_intro The Z-ranger deck %}
The Z-ranger deck contains a VL53L0x Time-of-Flight (ToF) laser-ranging sensor and has a 1-wire memory which enables the Crazyflie to automatically detect the Z-ranger deck.
The sensor can measure the distance up to 2 meters from the Crazyflie to the ground. The deck can be only be installed on the bottom of the Crazyflie. For more information about how to mount an expansion deck please see the [Getting started with expansion decks](/getting-started-with-expansion-decks/) tutorial.

To be able to use the Z-ranger deck you need to update the Crazyflie to the latest firmware. For more information on how to update the firmware, see the [download latest firmware](/getting-started-with-the-crazyflie-2-0/#latest-fw) section in our getting started with Crazyflie 2.0 tutorial.

{% endsi_intro %}

{% si_step  Using the height-hold mode %}

To use the Z-Ranger deck you need to use the Python client and set up a connection with your Crazyflie.
For more information about how to set up your Crazyflie and install the client go to [Getting started with the Crazyflie 2.0](/getting-started-with-the-crazyflie-2-0/).
In the client you can enable the Height-hold mode, which when activated keeps the Crazyflie at 40cm above the ground.

In the client, go to Assist mode and choose Height-hold mode in the dropdown menu. The assisted mode is enabled when the assisted mode button is pressed on the Gamepad.
{% img Z-ranger deck tutorial; wide; /images/tutorials/height-hold.png %}


{% img Z-ranger deck tutorial; wide; /images/tutorials/sensor.png %}

{% endsi_step %}
