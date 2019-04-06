---
layout: page-left-menu
title: Getting started with the Loco Positioning system
permalink: /getting-started-with-the-loco-positioning-system/
page_id: getting-started-with-the-loco-positioning-system
---

{% si_intro Introduction %}
The loco positioning system can be configured in two modes; Two Way Ranging 
(TWR) mode and in Time Difference of Arrival (TDoA) mode. The set up procedure 
is more straightforward in TWR mode and we recommend to use this mode also if you intend
to use the system in TDoA mode as the switch to TDoA is easy to do after the setup.
This guide describes the procedure using the TWR mode and at the end how to switch
to TDoA mode.

In order to illustrate anchor placements we have documented two reference systems, 
one with 6 anchors and one with 8. The 6 anchor setup is mainly intended for 
TWR use while we recommend 8 anchors for the TDoA mode.

{% endsi_intro %}

{% si_step  Update the Crazyflie to the latest loco positioning firmware %}

To be able to use the Loco positioning system you need to update the Crazyflie to the latest firmware.
For more information on how to update the firmware, see the [download latest firmware](/getting-started-with-the-crazyflie-2-0/#latest-fw) section in our
[Getting started with Crazyflie 2.X tutorial](/getting-started-with-the-crazyflie-2-0/).

You will also need the latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases).

For mounting the Loco positioning deck check out the [Getting started with expansion decks](/getting-started-with-expansion-decks/) tutorial.
{% endsi_step %}

{% si_intro Preparing the anchors %}
Before setting up the system you need to update the firmware and configure the the nodes.
{% endsi_intro %}

{% si_step Download the LPS configuration tool %}
{% tabgroup %}
{% tab Windows native installation %}
Download and run the [LPS configuration tool](https://github.com/bitcraze/lps-tools/releases) .exe installer to install the LPS tools.
{% endtab %}
{% tab Installing from source (Linux/Mac/Windows) %}
Clone the [LPS configuration tool GIT repo](https://github.com/bitcraze/lps-tools) and follow the [readme instruction](https://github.com/bitcraze/lps-tools#running-instruction) to run the tool.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}

{% si_step Download the LPS node firmware %}
For the latest LPS node firmware go [here](https://github.com/bitcraze/lps-node-firmware/releases) and download the **"lps-node-firmware.dfu"** file.
{% endsi_step %}

{% si_step Update the nodes %}
* To update the node start by opening up the LPS configuration tool. Keep the DFU button on the node pressed while connecting to your computer via USB. This will start the node in DFU mode.
* If you are using Windows, the node will not be recognized the first time. You need to [follow the instruction to install its USB driver using Zadig](https://wiki.bitcraze.io/misc:usbwindows). In DFU mode, the node will be displayed as "STM32 BOOTLOADER" in Zadig.

{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/press_dfu.png %}

* Click browse and choose the LPS node firmware
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/browse.png %}

* Now update the node.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/update.png %}

* When the update is done press reset.
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/reset.png %}
 Disconnect the node from the USB and repeat the same procedure for all the nodes before configuring them.
{% endsi_step %}

{% si_step Configuring the nodes into anchors %}
Now it’s time to set the mode for the nodes turning them into anchors, and setting the individual ids for each anchor.
The anchors should be numbered from 0 and upwards.

Tip: to make it easy to identify the anchors and to manage the system in the future, 
it might be a good idea to mark the anchors with their ids. 
{% img LPS configuration tool; medium; /images/tutorials/getting_started_with_lps/configure.png %}

1. Connect the first anchor to USB (without pressing any button) 
1. Select an appropriate **ID**
1. Choose the **"Anchor (TWR)"** mode
1. Click **Apply** to write the settings to the anchor
1. Repeat the procedure for all anchors

{% endsi_step %}

{% si_intro Place the anchors in the room %}

{% endsi_intro %}

{% si_step Anchor positions %}
To get a good result there are some rules of thumb for the placement of the anchors:

* The anchors should be evenly distributed around the flying volume and at least 2m apart.
* The anchors should have line of site with the flying volume.
* The anchor antenna should be placed 15cm from any wall, ceiling or metal object to avoid interfering reflections.
In our reference set-up we accomplish this by using these 
[3D printed stands](https://github.com/bitcraze/bitcraze-mechanics/blob/master/LPS-anchor-stand/anchor-stand.stl). 
In the repository click "Raw" and then choose "save as" and save the file as a stl file.

{% tabgroup %}
{% tab 6 anchors %}
In our 6 anchor reference setup we have placed 3 anchors above and 3 anchors below 
the flight area, shaped in inverse triangles.

{% img reference system; wide; /images/tutorials/getting_started_with_lps/loco_ref_system_6_anchors.png %}
{% endtab %}
{% tab 8 anchors %}
In our 8 anchor reference setup we have placed the nodes in the corners of a box 
as the position estimation for TDoA works best within the convex hull. Note the
order of the IDs. 

{% img reference system; wide; /images/tutorials/getting_started_with_lps/loco_ref_system_8_anchors.png %}
{% endtab %}
{% endtabgroup %}

If you have more than 8 anchors, we suggest you setup a system with 8 anchors first and then switch your 
system to TDoA3 to add more anchors to the system. See the [tdoa3 setup page](https://wiki.bitcraze.io/doc:lps:toda3) on the wiki for more information.
{% endsi_step %}

{% si_step Powering the anchors %}
The anchor can be powered in three different ways.

{% img Powering the anchors; wide; /images/tutorials/getting_started_with_lps/power.png %}

* __Micro USB__. Good for fixed and portable setups were a external battery or power adapter is used.
* __Barrel jack__. Good for fixed and portable setup were power adapter is used.
* __Screw terminal__. Good for fixed installation and for chaining. Cable size up to 0,5mm2.

They can be connected at the same time so the anchor can still be power from the 
screw terminal when connecting the micro USB cable to do an update or when changing 
the configuration. All power options can handle 5-12V and the supply should be able to 
provide at least 150mA of current.
{% endsi_step %}

{% si_intro Configure and verify the system %}
The following section will show a 8 anchor system but the procedure is very similar for a 6 anchor setup were anchor 6 & 7 will be grayed out.
{% endsi_intro %}

{% si_step Open the Crazyflie client %}
Now when everything is mounted and powered it is time to configure the system, this
is done from the Crazyflie client. Communication between the client and the anchors 
is relayed through the Crazyflie and the LPS deck.

* Place your Crazyflie 2.X in the center of the flying area. 
* Open the CF client and connect to the Crazyflie 2.X
* If not already done, [configure](https://wiki.bitcraze.io/doc:crazyflie:client:pycfclient:index#firmware_configuration) 
the Crazyflie 2.X in __2Mbit__ radio mode. This reduces interference with the 
UWB radio. If the configuration is changed a restart of the Crazyflie 2.X is required.
{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lps/open_the_crazyflie_client.PNG %}
{% endsi_step %}

{% si_step Click the LPS tab %}
Choose the LPS tab. 

You may have to check it in the menu View->Tabs->Loco Positioning Tab to make it visible.

{% img click the lps tab; wide; /images/tutorials/getting_started_with_lps/Click the LPS tab.png %}
{% endsi_step %}

{% si_step Check anchor status %}
In the Anchor ranging status box, check that there are as many green boxes as there are anchors. 

A red box indicates that the Crazyflie 2.X can not communicate with that anchor 
and does not get any ranging data. If this is the case, verify the anchor is 
configured correctly, powered and in line of sight. 

{% img check the anchor status; wide; /images/tutorials/getting_started_with_lps/Check anchor status.png %}
{% endsi_step %}

{% si_step Enter anchor positions %}
To start configuring the anchor position you need to click on the __"Configure positions"__ button.

{% img click configure positions; wide; /images/tutorials/getting_started_with_lps/Click configure positions.png %}

A pop-up window will appear. Click the button __"Get from anchors"__ to get the list of anchors and fill up the positions 
with the values currently stored in the anchors.

{% img click get from anchors; medium; /images/tutorials/getting_started_with_lps/Click get from anchors.png %}
{% img enter anchor positions; medium ; /images/tutorials/getting_started_with_lps/Enter anchor positions.png %}

Update the positions (coordinates) of the anchors. Note: measurements in meters.

When a value differs from the currently configured value, the box turns red. 

{% endsi_step %}


{% si_step Write position to anchors %}
* To save the new anchor positions in the anchors press the __"Write to anchors"__ button
* Verify that the anchor position boxes changes from red to green, which indiates that the new position has been 
written to the anchor and red back to the client. The read back process may take up to 5 seconds, please
be patient. If no change has occurred after 5 to 10 seconds, the write did probably not work for all anchors, try to write again 
by clicking the __"Write to anchors"__ button.

{% img write position to anchors; medium; /images/tutorials/getting_started_with_lps/Write position to anchors.png %}
{% endsi_step %}

{% si_step Verify anchor positions %}
Verifying the anchor positions is good to rule out problems with the positioning later.

* Switch the Graph Settings mode to "Anchor identification"
* Move the Crazyflie close to one anchor
* Verify that the correct anchor is indicated in the graph
* Repeat the procedure for all anchors and correct any wrongly configured anchor addresses

{% img Verify anchors position; wide; /images/tutorials/getting_started_with_lps/Verify anchors position.png %}
{% endsi_step %}

{% si_step Verify estimated position %}
* Switch the Graph Settings mode back to "Position estimate"
* Move the CF around and verify that the movement in the graphs correspond to the physical movement

{% img Verify estimated position; wide; /images/tutorials/getting_started_with_lps/Verify estimated position.png %}
{% endsi_step %}

{% si_step Calibration finished %}
Congratulations, the Loco Positioning System is now calibrated!
{% endsi_step %}



{% si_intro Switching system mode to TDoA %}
If you intend to use the system in TDoA mode to fly more than one Crazyflie it is now time to change the system mode. There exist two version of the TDoA ranging protocol.

 - TDoA 2 works with 8 anchors.
 - TDoA 3 does not have any limitation in the number of anchors and so it can be used
for bigger system, thought it will be more noisy for a system of 8 anchors.
{% endsi_intro %}

{% si_step Force the Crazyflie to use TWR mode %}
In the crazyflie status section tick the __TWR__ radio button. 

This will enable the __"TDoA2"__ button in the anchor status section.

{% img Force TWR mode; wide; /images/tutorials/getting_started_with_lps/lps-system-mode-switch-1.png %}
{% endsi_step %}

{% si_step Switch anchors to TDoA mode %}
Press the __"TDoA 2"__ button to switch the anchors to TDoA mode.

After a few seconds all anchor status boxes should turn red to indicate that the
Crazyflie 2.X is no longer receiving TWR data from the anchors.

{% img Switch anchors to TDoA mode; wide; /images/tutorials/getting_started_with_lps/lps-system-mode-switch-2.png %}

For details on system mode switching and troubleshooting, please see [the wiki](https://wiki.bitcraze.io/doc:lps:configure-mode)
{% endsi_step %}

{% si_step Switch the Crazyflie back to auto mode %}
As a last step, confirm the TDoA mode by ticking the Auto radio button in the Crazyflie 
status section and verify that the TDoA2 box turns green.

The anchor boxes should also turn green when the Crazyflie switches to TDoA mode and
starts to receive data from the anchors.

{% img Switch to auto mode; wide; /images/tutorials/getting_started_with_lps/lps-system-mode-switch-3.png %}

If not all anchor boxes go green, please see the [wiki for touble shooting](https://wiki.bitcraze.io/doc:lps:configure-mode).
{% endsi_step %}




{% si_intro Next step %}
Now when you got the basic functionality of the system up and running you might 
want to try [to fly using Loco Positioning](/getting-started-with-assisted-flight-position-hold). 

To read the more techy documentation go to the [Loco positioning wiki page](https://wiki.bitcraze.io/doc:lps:index).
{% endsi_intro %}
