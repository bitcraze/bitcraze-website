---
layout: page-left-menu
title: Getting started with the Loco Positioning system
permalink: /getting-started-with-the-loco-positioning-system/
page_id: getting-started-with-the-loco-positioning-system
---

{% si_intro Update and configure the nodes  %}
In order to illustrate how to set up a system we have documented a reference system and how we've set it up.
The reference system is based on the  [Indoor explorer bundle](https://store.bitcraze.io/collections/bundles/products/indoor-explorer-bundle) which contains the following:

* 6 x Loco positioning nodes
* 1 x Loco positioning deck
* 1 x Crazyflie 2.0 kit
* 1 x Crazyradio PA
* 1 x micro-USB cable

{% endsi_intro %}

{% si_step  Update the Crazyflie to the latest loco positioning firmware %}
To be able to use the Loco positioning system you need to update the Crazyflie with the firmware configured for the Loco positioning system. Go [here](https://github.com/bitcraze/crazyflie-release/releases) and download the __cf2-kalman-xxxx.xx.bin__.

For instructions on how to start with the Crazyflie and how to update the firmware you can follow the [Getting started with Crazyflie 2.0](/getting-started-with-the-crazyflie-2-0/) tutorial.

For mounting the Loco positioning deck check out the [Getting started with expansion decks](/getting-started-with-expansion-decks/) tutorial.
{% endsi_step %}

{% si_step Download the LPS configuration tool %}
Before setting up the system you need to update the firmware and set the addresses of the nodes from 0-5.
To do this download and run the [LPS configuration tool](https://github.com/bitcraze/lps-tools/releases) exe file.
{% endsi_step %}

{% si_step Download the LPS node firmware %}
For updating the LPS node firmware go [here](https://github.com/bitcraze/lps-node-firmware/releases) and download the **"lps-node-firmware.dfu"** file.
{% endsi_step %}

{% si_step Update the node %}
* To update the node start by opening up the LPS configuration tool. Keep the DFU button on the node pressed while connecting to your computer via USB.

{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/press_dfu.png %}

* Click browse and choose the LPS node firmware
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/browse.png %}

* Now update the node.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/update.png %}

* When the update is done press reset.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/reset.png %}
 Disconnect the node from the USB and repeat the same procedure for all the nodes before configuring them.
{% endsi_step %}

{% si_step Configuring the node into anchors %}
Now it’s time to set the mode for the node turning them into anchors and setting the individual addresses for each anchor. To facilitate setting up the system in a room a tip is to mark each node with their individual anchor number for easier identification.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/configure.png %}

1. Start by setting the individual IDs, number them sequentially from 0-5.
2. Choose **"Anchor (TWR)"**
3. Click **Apply**

{% endsi_step %}

{% si_intro Place the anchors in the room %}

{% endsi_intro %}

{% si_step Anchor positions %}
To get a good position there are some rules of thumb for the placement of the six anchors.

* The anchors should be evenly distributed around the flying volume and at least 2m apart.
* The anchors should have line of site with the flying volume.
* The anchor antenna should be placed 15cm from any wall, ceiling or metal object to avoid interfering reflections. In our reference set-up we accomplish this by using these [3D printed stands](https://github.com/bitcraze/bitcraze-mechanics/blob/master/LPS-anchor-stand/anchor-stand.stl). In the repository click "Raw" and then choose "save as" and save the file as a stl file.

In our reference setup we have placed 3 anchors above and 3 anchors below the flight area, shaped in inverse triangles. This gives good accuracy in X, Y and Z.

{% img reference system; wide; /images/tutorials/getting_started_with_lps/reference_system.png %}

{% endsi_step %}

{% si_step Powering the anchors %}
The anchor can be powered in three different ways.

{% img Powering the anchors; wide; /images/tutorials/getting_started_with_lps/power.png %}

* __Micro USB__. Good for fixed and portable setups were a external battery or power adapter is used.
* __Barrel jack__. Good for fixed and portable setup were power adapter is used.
* __Skrew terminal__. Good for fixed installation and for chaining. Cable size up to 0,5mm2.

They can be connected at the same time so the anchor can still be power from the skrew terminal when connecting the micro USB cable to do an update or when changing the configuration. All power options can handle 5-12V and the supply should be able to provide at least 150mA of current.
{% endsi_step %}

{% si_intro Configure and verify the system %}

{% endsi_intro %}

{% si_step Open the Crazyflie client %}
Now when everything is mounted and powered it is time to configure the system.

* Place your Crazyflie 2.0 in the middle of the flying area.
* Open the CF client and connect to the Crazyflie 2.0

{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lps/open_the_crazyflie_client.PNG %}
{% endsi_step %}

{% si_step Click the LPS tab %}
* Choose the LPS tab. It might have to be made visible from the menu View->Tabs->Loco Positioning Tab

{% img click the lps tab; wide; /images/tutorials/getting_started_with_lps/click_the_lps_tab.PNG %}
{% endsi_step %}

{% si_step Check anchor status %}
* Have a look in the Anchor ranging status box and check that there are six green boxes. If any of them are red it means that the Crazyflie 2.0 can not communicate with that anchor and thus not get any range. If any anchor is constantly red please check that anchors power and configuration.

{% img check the anchor status; wide; /images/tutorials/getting_started_with_lps/check_the_anchor_status.PNG %}
{% endsi_step %}

{% si_step Enter anchor positions %}
* Before you start entering any anchor positions make sure the boxes are green or red. If for some reason they stay white restart the cfclient.
* Now it is time to enter the positions. The boxes will become red as soon as that position differs from the position saved in the anchor.

{% img enter anchor positions; wide; /images/tutorials/getting_started_with_lps/enter_anchor_positions.PNG %}
{% endsi_step %}

{% si_step Write position to anchors %}
* Now to save the new anchor position to the anchors press the __"write to anchors"__ button.
* Verify that the anchor position boxes changes from red to green. If no change has occurred within 5 seconds try it again.

{% img write position to anchors; wide; /images/tutorials/getting_started_with_lps/write_position_to_anchors.png %}
{% endsi_step %}


{% si_step Verify anchors position %}
Verifying the anchor positions is good to rule out problems with the positioning later.

* Switch mode to anchor identification
* Move the Crazyflie close to one anchor
* Verify that the correct anchor is highlighted.
* Do this for all six anchors and correct any wrongly configured anchor address.

{% img Verify anchors position; wide; /images/tutorials/getting_started_with_lps/verify_anchors_position.PNG %}
{% endsi_step %}

{% si_step Verify estimated position %}
* Switch back to position estimate mode
* Move the CF around and verify that the movement in the graphs correspond to the physical movement.

{% img Verify estimated position; wide; /images/tutorials/getting_started_with_lps/verify_estimated_position.PNG %}
{% endsi_step %}

{% si_intro Flying with the system %}

{% endsi_intro %}

{% si_step Restart the Crazyflie %}
* Place the copter in the middle of your flying areas on a level surface facing the anchor systems positive x-axis.
* Turn on or restart the Crazyflie 2.0.
{% img Restart the Crazyflie; wide; /images/tutorials/getting_started_with_lps/restart_the_crazyflie.png %}
{% endsi_step %}

{% si_step Connect to the Crazyflie 2.0 %}
* Connect to the Crazyflie 2.0
* It might take a couple of seconds for the position estimate to stabilize. You can verify that it has stabilized by checking that the position in the LPS tab corresponds to the physical position.

{% endsi_step %}

{% si_step Set assisted mode to Position hold %}
Position hold mode lets you control the Crazyflie in position mode instead of attitude mode. This means instead of controlling roll/pitch/yaw/thrust you will control x/y/yaw/height. Thus releasing the sticks will leave the Crazyflie in its current position.

* Open the flight tab and select position hold mode from the assisted mode drop down list.
{% endsi_step %}

{% si_step Flying with a gamepad %}
Before flying check that the gamepad reports Pitch [0.0] and Roll [0.0] when the sticks are centered in the Tartet values in the flight tab. If they are not zero the consequence will be that the Crazyflie slowly moves when the sticks are released which might not be the wanted behavior.

{% img Crazyflie pitch roll; wide; /images/tutorials/getting_started_with_lps/crazyflie_pitch_roll.png %}
Here you can see that the Pitch and Roll is not [0.0] which might result in the Crazyflie drifting when the sticks are released.

* Press and hold the assisted mode button to activate the selected assisted mode.
* Press up to take off and go up. While testing keep close to the ground but higher then 20cm to avoid ground turbulence.
* Now you can fly around using the x/y stick as shown in the image below. Pressing X+ will move the Crazyflie in the X+ axis of your system, and the same for the other axis.
* If somethings goes out of control release the sticks and the assisted mode button to have the Crazyflie drop to the ground.

{% img Flying with a gamepad; wide; /images/tutorials/getting_started_with_lps/flying_with_a_gamepad.png %}

* As a reference please have a look at this video showing the somewhat expected flying behavior.
{% tutorialVideo /videos/flying_with_position_hold.mp4 %}
{% endsi_step %}

{% si_intro Next step %}
Now when you got the basic functionality of the system up and running you might want to start flying preprogrammed flight paths. To do that start reading the more techy documentation on the [Loco positioning wiki page](https://wiki.bitcraze.io/doc:lps:index).
{% endsi_intro %}
