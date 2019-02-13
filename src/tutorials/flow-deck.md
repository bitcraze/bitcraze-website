---
layout: page-left-menu
title: Getting started with the Flow deck
permalink: /getting-started-with-flow-deck/
page_id: getting-started-flow-deck
---

{% si_intro The Flow deck %}
The Flow deck gives the Crazyflie 2.X the ability to understand when it's moving in any direction.
With the Flow deck the Crazyflie 2.X is able to hover and act as an aid for beginners where it creates a very stable flying platform.

For more information about how to mount an expansion deck please see the [Getting started with expansion decks](/getting-started-with-expansion-decks/) tutorial.

To be able to use the Flow deck you need to update the Crazyflie to the latest firmware. For more information on how to update the firmware, see the [download latest firmware](/getting-started-with-the-crazyflie-2-0/#latest-fw) section in our getting started with Crazyflie 2.X tutorial.
You will also need the latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases).

{% endsi_intro %}

{% si_step  Using the hover mode %}

To use the Flow deck you need to use the Python client and set up a connection with your Crazyflie.
For more information go to the [Getting started with the Crazyflie 2.X](/getting-started-with-the-crazyflie-2-0/).

* In the client, go to **Assist mode** and choose **Hover** mode in the drop-down menu. Also make sure that the assist mode button is [configured](https://wiki.bitcraze.io/doc:crazyflie:client:pycfclient:index#input_devices).

{% img Hover mode; wide; /images/tutorials/getting_started_with_flow/hover.PNG %}

* Place the Crazyflie 2.X on a level surface area with lots of space for flying.
Make sure the Crazyflie is pointing away from you, the blue LEDs are on the back so keep them pointing in your direction when starting to fly.
* Press and hold the assisted mode button on the gamepad to activate the hover mode. The Crazyflie will now take off and hover at a height of 40cm.
* Now you can fly around using the x/y stick as shown in the image below. Pressing X+ will move the Crazyflie in the X+ axis of your system, and the same for the other axis.
* You can use the up/down joystick to go up and down. The height is limited in the range 0.2m to 3.0m (1.0m for Flow deck / Z-ranger deck v1). if you happen to he over 1.0 meter, the crazyflie might hang there and not go down, in this case you can either force the Crazyflie to go down with the up/down joystick or release the assisted mode button to take over manually.
* If somethings goes out of control release the sticks and the assisted mode button to have the Crazyflie drop to the ground. Each time hover mode is re-activated the height set-point is reset to 40 cm.

{% img Flying with a gamepad; wide; /images/tutorials/getting_started_with_lps/flying_with_a_gamepad.png %}



{% endsi_step %}

{% si_step  User-interface guide %}

Below is a short explanation of the user-interface.

{% img User-interface guide; wide; /images/tutorials/getting_started_with_flow/interface.png %}

1. Set-point height (in meters)
2. Height error (in meters). I.e difference between the set-point and measured height.
3. Set-point height (in meters)
4. Measured height (in meters)

{% endsi_step %}

{% si_step  Measurement details %}

When the sensor measures the distance to the ground it will not use a single point.
Instead the detection will use a cone (see below) where the sensor will report the
closest detection. This means that the higher the Crazyflie is the larger the
area of detection. For instance this could be an issue if the Crazyflie gets
close to a wall, then it will report the distance to the wall instead of the
floor.

{% img Sensor angle; wide; /images/tutorials/z-ranger_deck_angle.png %}

Similarly, the optical flow sensor assumes it is working over a flat floor.
If you are flying close to wall or obstacle the tracking might be affected.

The optical flow sensor is a camera and works by tracking how patterns are moving. This means that it will have a hard time operating over a blank surface.

{% endsi_step %}

{% si_step The Flow deck in action! %}

{% youtube 64LOEAQJamw; wide; 16by9 %}

{% endsi_step %}
