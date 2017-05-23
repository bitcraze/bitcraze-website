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
To be able to use the Loco positioning system you need to update the Crazyflie to the latest loco positioning firmware. The firmware can be downloaded here. For instructions on how to update the firmware you can follow the [Getting started with Crazyflie 2.0](/getting-started-with-the-crazyflie-2-0/) tutorial. It also a good resource to find more information on how to get started with the Crazyfle 2.0.

For mounting the Loco positioning deck check out the [Getting started with expansion decks](/getting-started-with-expansion-decks/) tutorial.
{% endsi_step %}

{% si_step Download the LPS configuration tool %}
Before setting up the system you need to update the firmware and set the addresses of the nodes from 0-5.
To do this download and run the [LPS configuration tool](https://github.com/bitcraze/lps-tools).
{% endsi_step %}

{% si_step Download the LPS node firmware %}
Go here to download the LPS node firmware
{% endsi_step %}

{% si_step Update the node %}
* To update the node start by opening up the LPS configuration tool. Keep the DFU button pressed while connecting to your computer via USB.

{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/press_dfu.png %}

* Click browse and choose the LPS node firmware
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/browse.png %}

* Now update the node.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/update.png %}

* Once the node is updated press reset.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/reset.png %}

* Repeat the same procedure for all the nodes before configuring the nodes.
{% endsi_step %}

{% si_step Configuring the node into anchors %}
Now it’s time set the mode for the node turning them into anchors and setting the individual addresses for each anchor. Remember to mark each node with their individual anchor number.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/configure.png %}

* Start by setting the individual IDs, number them sequentially from 0-5.
* Choose "Anchor (TWR)"
* Click Apply

{% endsi_step %}

{% si_intro Place the anchors in the room %}

{% endsi_intro %}

{% si_step Anchor positions %}
To get a good position there are some rules of thumb for the placement of the six anchors.

* The anchors should be evenly distributed around the flying volume and at least 2m apart.
* The anchors should have line of site with the flying volume.
* The anchor antenna should be placed 15cm from any wall, ceiling or metal object to avoid interfering reflections.

In our reference setup we have placed 3 anchors above and 3 anchors below the flight area, shaped in inverse triangles. This gives good accuracy in X, Y and Z.

{% img reference system; wide; /images/tutorials/getting_started_with_lps/reference_system.png %}

{% endsi_step %}

{% si_step Powering the anchors %}
The anchor can be powered in three different ways.

{% img Powering the anchors; wide; /images/tutorials/getting_started_with_lps/power.png %}

* Micro USB. Good for fixed and portable setups were a external battery or power adapter is used.
* Barrel jack. Good for fixed and portable setup were power adapter is used.
* Skrew terminal. Good for fixed installation and for chaining. Cable size up to 0,5mm2.

They can be connected at the same time so the anchor can still be power from the skrew terminal when connecting the micro USB cable to do an update or when changing the configuration. All power options can handle 5-12V and the supply should be able to provide at least 150mA of current.
{% endsi_step %}

{% si_intro Configure and verify the system %}

{% endsi_intro %}

{% si_step Open the Crazyflie client %}
Now when everything is mounted and powered it is time to configure the system.

* Place your Crazyflie 2.0 in the middle of the flying area.
* Open the CF client and connect

{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lps/open_the_crazyflie_client.PNG %}
{% endsi_step %}

{% si_step Click the LPS tab %}
* Choose the LPS tab. It might have to be made visible from the menu View->Tabs->Loco Positioning Tab

{% img click the lps tab; wide; /images/tutorials/getting_started_with_lps/click_the_lps_tab.PNG %}
{% endsi_step %}

{% si_step Check anchor status %}
* Have a look in the Anchor ranging status box and check that there are six green boxes. If any of them are red it means that the Crazyflie 2.0 can not communicate with that anchor and thus not get any range.

{% img check the anchor status; wide; /images/tutorials/getting_started_with_lps/check_the_anchor_status.PNG %}
{% endsi_step %}

{% si_step Enter anchor positions %}
* Before you start entering any anchor positions make sure the boxes are green or red. If for some reason they stay white restart the cfclient.
* Now it is time to enter the positions. The boxes will become red as soon as that specific position differes from the system position.

{% img enter anchor positions; wide; /images/tutorials/getting_started_with_lps/enter_anchor_positions.PNG %}
{% endsi_step %}

{% si_step Write position to anchors %}
[Verify all green within 5 seconds]

{% img write position to anchors; wide; /images/tutorials/getting_started_with_lps/write_position_to_anchors.png %}
{% endsi_step %}


{% si_step Verify anchors position %}
* Switch to anchor identification
* Move the Crazyflie close to the anchor

{% img Verify anchors position; wide; /images/tutorials/getting_started_with_lps/verify_anchors_position.PNG %}
{% endsi_step %}

{% si_step Verify estimated position %}
* Switch back to position estimate mode
* Move the CF around and..

{% img Verify estimated position; wide; /images/tutorials/getting_started_with_lps/verify_estimated_position.PNG %}
{% endsi_step %}

{% si_intro Flying with the system %}

{% endsi_intro %}

{% si_step Restart the Crazyflie %}
 Place the copter in the middle of your flying areas
 facing x

 {% img Restart the Crazyflie; wide; /images/tutorials/getting_started_with_lps/restart_the_crazyflie.png %}
{% endsi_step %}

{% si_step Connect to the client %}

{% endsi_step %}

{% si_step Set assisted mode to Position hold %}

{% endsi_step %}

{% si_step Flying with a gamepad %}
Press assisted button

 {% img Flying with a gamepad; wide; /images/tutorials/getting_started_with_lps/flying_with_a_gamepad.png %}
{% endsi_step %}

{% si_intro Next step %}
read more here..
{% endsi_intro %}
