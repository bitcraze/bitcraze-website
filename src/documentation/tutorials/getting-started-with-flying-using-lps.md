---
layout: page-left-menu
title: Getting started with Flying using Loco Positioning
page_id: getting-started-with-assisted-flight-position-hold
redirects:
  - /getting-started-with-assisted-flight-position-hold/
---

{% si_intro Start up %}
When the Crazyflie 2.X is used together with the Loco Positioning System, the
position information can be used for assisted flight and help the pilot to
control the quadcopter, or it can be used for scripted autonomous flight.
{% endsi_intro %}

{% si_step Restart the Crazyflie %}
* Place the copter in the center of your flying areas on a level surface facing the positive x-axis of the coordinate system
* Turn on or restart the Crazyflie 2.X
{% img Restart the Crazyflie; wide; /images/tutorials/getting_started_with_lps/restart_the_crazyflie.png %}
{% endsi_step %}



{% si_intro Assisted flight %}
Use the Position Hold mode in the Client for assisted flight.
Position hold lets you control the change of x/y/yaw/height instead of roll/pitch/yaw/thrust,
thus releasing the sticks will leave the Crazyflie in its current position.
{% endsi_intro %}

{% si_step Connect to the Crazyflie 2.X %}
* Open the cfclient application
* Connect to the Crazyflie 2.X
* It might take a couple of seconds for the position estimate to stabilize. You can
verify that it has stabilized by checking that the position in the Loco Positioning tab corresponds to the physical position.
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

{% img Crazyflie pitch roll; wide; /images/tutorials/getting_started_with_lps/crazyflie_pitch_roll.jpg %}
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



{% si_intro Autonomous flight %}
Autonomous flight is when the Crazyflie flies without a pilot, usually using a
script to control it instead. This area is out of scope for this getting started
guide and we will only briefly cover the basics.
{% endsi_intro %}

{% si_step Outline %}
The easiest way to get started with autonomous flight is to use a python script
running on a computer, it will replace the role of the Client as well as the
gamepad in the previous section.

The python script runns in a computer and sends set points to the Crazyflie
using the Crazyradio. A set point contains information of where the Crazyflie
should go and how fast to go there. Since the Crazyflie continuously gets its
current position from the positioning system, it has all the information it needs
to fly it self.
{% endsi_step %}

{% si_step Preparations %}
You need python installed on your computer and you must know how to run a python
script. Please read the relevant python documentation for your platform.
{% endsi_step %}

{% si_step Find the example scripts %}
There are example scripts in the bitcraze/crazyflie-lib-python github repo, please
see the [examples directory](https://github.com/bitcraze/crazyflie-lib-python/tree/master/examples).
{% endsi_step %}
