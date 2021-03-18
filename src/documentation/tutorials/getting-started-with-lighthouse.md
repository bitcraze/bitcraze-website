---
layout: page-left-menu
title: Getting started with the Lighthouse system
page_id: getting-started-with-the-lighthouse-system
---

{% si_intro Introduction %}

The lighthouse positioning system uses the SteamVR basestations of Valve Inc and the lighthouse deck on the Crazyflie. With this system, the crazyflie can estimate its own X, Y and Z in a global coordinate system.
{% img Two basestation, one crazyflei ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_one_crazyflie.jpg %}

{% endsi_intro %}

{% si_step  Prerequisites %}

Make sure that you have the following available:
* [A Crazyflie 2.X](https://store.bitcraze.io/products/crazyflie-2-1). Make sure to update it to the latest firmware release in warm-boot to flash the lighthouse deck. This means that you should not put it in bootloader mode, but program while it is connected.
* [A Lighthouse deck](https://store.bitcraze.io/products/lighthouse-positioning-deck). For mounting the Lighthouse deck check out the {% id_link getting-started-expansion-decks %} tutorial.
* Two SteamVR Bsestations. We advise the version 2.0 but version 1.0 is also compatible.
* [A Crazyradio PA](https://store.bitcraze.io/products/crazyradio-pa)
* The latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases)




{% endsi_step %}

{% si_intro Preparing the Basestations %}
Before setting up the system you need to set the Basestations in the right mode.
{% endsi_intro %}


{% si_step Open the Crazyflie Client and click the Lighthouse Tab %}
Choose the Lighthouse Positioning Tab tab.

You may have to check it in the menu View->Tabs->Lighthouse Positioning Tab to make it visible.

{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/client_lighthouse_tab.png %}

{% endsi_step %}


{% si_step Put the Basestations in the Right Mode %}
{% tabgroup %}
{% tab V2 %}
Power the Basestation with its powerblock and connect it with a micro-usb cable to the computer. 
{% img connect to basestation ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_back.jpg %}

Then open up the basestation configuration tool by pressing 'Set BS Channel'. 

Scan for the basestation and check the current ID. If the basestation is never used, this value is probably 0. Put the wanted channel (1 or 2) in 'Change Channel' and press the 'Set Channel' button. Wait until you see the 'success!' before disconnecting and reconnecting another basestation.

{% img open the bs config dialog ; wide; /images/tutorials/getting_started_with_lighthouse/client_basestation_dialog.png %}


{% endtab %}
{% tab V1 %}
You can change the basestation mode with a small button in the back. The modes should be changed to 'b' and 'c' for without a sync cable and 'A' and 'b' if you are using a sync cable.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}


{% si_step Set up the Basestations in Flight area%}
After the modes are correctly set, you can place the basestations in the area. The ideal flight area for two basestations is about 5 x 5 x 3.0, but as long as the crazyflie is not further away than 7 meters from at least one basestation, this should work out. 

Note that the basestations should be about at least 0.5 meters higher than the flight area of the crazyflie due to the placement of the sensors on the lighthouse deck.  Also make sure that there are no mirrors or big large reflective items in the area.  Also make sure that you do not have direct sunlight either

{% img maximum flying height ; wide; /images/tutorials/getting_started_with_lighthouse/setup_arena.png %}


{% endsi_step %}

{% si_intro Preparing the Crazyflie %}

This will explain how to setup up your crazyflie to fly in the lighthouse positioning system.

{% endsi_intro %}



{% si_step Indicate the origin of your coordinate system%}
Place the crazyflie with the lighthouse deck on the ground of where you want the origin to be of your global coordinate system. Check out {% id_link cf2_coordinate_system %}.
{% endsi_step %}

{% si_step Connect to the Crazyflie with the Client%}
* Open the CF client and connect to the Crazyflie 2.X
* If not already done, [configure](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client#firmware-configuration)
the Crazyflie 2.X in __2Mbit__ radio mode.
{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/client_flight_control.png %}
{% endsi_step %}

{% si_step Wait for calibration of the basestations %}
First make sure that the crazyflie is receiving the sweep angels of both basestations and has received the calibration data. Mind that for the calibration data you might need to wait for 20 seconds. 
{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/basestation_status.png %}
{% endsi_step %}

{% si_step Estimate the geometry %}
Once you have received the calibration data, open up the basestation geometry management dialog by pressing 'Manage Geometry'. In the dialog, press 'Estimate Geometry'. You will see then the estimated geometry of the basestations. 

If the geometry makes sense, press 'Write to Crazyflie', or else move your crazyflie and press 'Estimate Geometry' again. 
{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/geometry_dialog.png %}
{% endsi_step %}

{% si_step Check the positioning %}
The lighthouse LED should now be shining green and you should be able to see the visualizations of the basestations with their channels and the crazyflie itself as a blue dot.

Make sure to test the crazyflie position in your hand first before flying!
{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/client_lighthouse_tab_2.png %}
{% endsi_step %}

{% si_intro Save System configuration to a file %}

You can save the geometry and calibration data in a file. This is handy if you want to switch easily between different Lighthouse systems or you want to configure more Crazyflies so that they share a common coordinate system.

{% endsi_intro %}


{% si_step Save current system configuration %}
You can press press 'Save system config' to save the current estimated geometries and calibration to a file. Give it a name and press 'save' in the opened dialog.
{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/save_system.png %}
{% endsi_step %}

{% si_step Load existing system configuration %}
You can press press 'Load system config' to load an existing system configuration. Select the Yaml file and press 'load' in the opened dialog.
{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/load_system.png %}
{% endsi_step %}
