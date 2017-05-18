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

{% si_step  Update the Crazyflie to the latest firmware %}
To be able to use the Loco positioning system you need to update the Crazyflie to the latest firmware.
For more information on how to get started with the Crazyfle 2.0 and how to update to the latest firmware  
see the [Getting started with Crazyflie 2.0](/getting-started-with-the-crazyflie-2-0/) tutorial.

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
In our reference setup we have placed 3 anchors above and 3 anchors below the flight area, shaped in inverse triangles. This allows to get good accuracy in X, Y and Z.

[Isometric drawing]
[crazyflie_isometric_drawing]
{% endsi_step %}

{% si_step Power the anchors %}
Here is our reference set up.[Isometric drawing]
{% endsi_step %}

{% si_intro Configure and verify the system %}

{% endsi_intro %}

{% si_step Open the Crazyflie client %}
* Open the CF client and connect
{% endsi_step %}

{% si_step Click the LPS tab %}
* Choose the LPS tab
{% endsi_step %}

{% si_step Check anchor status %}
[describe the relation between CF and anchors]
{% endsi_step %}

{% si_step Enter anchor positions %}
[describe colors and get positon button]
{% endsi_step %}

{% si_step Write position to anchors %}
[Verify all green within 5 seconds]
{% endsi_step %}


{% si_step Verify anchors position %}
* Switch to anchor identification
* Move the Crazyflie close to the anchor
{% endsi_step %}

{% si_step Verify estimated position %}
* Switch back to position estimate mode
* Move the CF around and..
{% endsi_step %}

{% si_intro Flying with the system %}

{% endsi_intro %}

{% si_step Restart the Crazyflie %}
 Place the copter in the middle of your flying areas
 facing x
{% endsi_step %}

{% si_step Connect to the client %}

{% endsi_step %}

{% si_step Set assisted mode to Position hold %}

{% endsi_step %}

{% si_step Fly with gamepad %}
Press assisted button
[gamepad images]
{% endsi_step %}

{% si_intro Next step %}
read more here..
{% endsi_intro %}
