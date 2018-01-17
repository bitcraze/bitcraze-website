---
layout: page-left-menu
title: Getting started with Position hold
permalink: /getting-started-with-assisted-flight-position-hold/
page_id: getting-started-with-assisted-flight-position-hold
---

{% si_intro Assisted flight %}
When the Crazyflie 2.0 is used together with the Loco Positioning System, it is
possible to use the Position Hold mode in the Client. 
Position hold lets you control the change of x/y/yaw/height instead of roll/pitch/yaw/thrust, 
thus releasing the sticks will leave the Crazyflie in its current position.
{% endsi_intro %}

{% si_step Restart the Crazyflie %}
* Place the copter in the center of your flying areas on a level surface facing the positive x-axis of the coordinate system
* Turn on or restart the Crazyflie 2.0
{% img Restart the Crazyflie; wide; /images/tutorials/getting_started_with_lps/restart_the_crazyflie.png %}
{% endsi_step %}

{% si_step Connect to the Crazyflie 2.0 %}
* Open the cfclient application
* Connect to the Crazyflie 2.0
* It might take a couple of seconds for the position estimate to stabilize. You can 
verify that it has stabilized by checking that the position in the LPS tab corresponds to the physical position.
{% endsi_step %}

{% si_step Set assisted mode to Position hold %}
* Open the flight tab
* Select "Position hold" mode from the assisted mode drop down list.
{% endsi_step %}

{% si_step Verify the gamepad %}
* Center the sticks on the gamepad
* In the Target area of the Flight tab, verify that Pitch and Roll is [0.0]. 
If they are not zero the consequence will be that the Crazyflie slowly moves 
when the sticks are released which might not be the wanted behavior.

{% img Crazyflie pitch roll; wide; /images/tutorials/getting_started_with_lps/crazyflie_pitch_roll.png %}
Here you can see that the Pitch and Roll is not [0.0] which might result in the Crazyflie drifting when the sticks are released.
{% endsi_step %}

{% si_step Flying with a gamepad %}
* Press and hold the assisted mode button on the gamepad to activate the assisted mode
* Press up to take off and go up. While testing keep close to the ground but higher then 20cm to avoid ground turbulence
* Now you can fly around using the x/y stick as shown in the image below. Pressing X+ will move the Crazyflie in the X+ axis of your system, and the same for the other axis.
* If somethings goes out of control release the sticks and the assisted mode button to make the Crazyflie drop to the ground.

{% img Flying with a gamepad; wide; /images/tutorials/getting_started_with_lps/flying_with_a_gamepad.png %}

* As a reference please have a look at this video showing the somewhat expected flying behavior.
{% tutorialVideo /videos/flying_with_position_hold.mp4 %}
{% endsi_step %}

