---
layout: page-left-menu
title: Getting started with the Lighthouse system
page_id: getting-started-with-the-lighthouse-system
---

{% si_intro Introduction %}

The Lighthouse positioning system uses the SteamVR Base stations of Valve Inc. and the Lighthouse deck on the Crazyflie. With this system, the Crazyflie can estimate its own X, Y and Z in a global coordinate system.
{% img Two basestation, one crazyflie ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_one_crazyflie.jpg %}

{% endsi_intro %}

{% si_step  Prerequisites - hardware %}
Make sure that you have the following available:
* [A Crazyflie 2.X](https://store.bitcraze.io/products/crazyflie-2-1)
* [A Lighthouse deck](https://store.bitcraze.io/products/lighthouse-positioning-deck)
* Two SteamVR Bsestations. We advise to buy version 2.0 but version 1.0 is also compatible.
* [A Crazyradio PA](https://store.bitcraze.io/products/crazyradio-pa)
{% endsi_step %}

{% si_step  Prerequisites - software %}
* The latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases)
{% endsi_step %}



{% si_intro Preparing the Crazyflie %}
The first thing to do is to make sure the firmware in the Crazyflie and Lighthouse deck is up to date.
{% endsi_intro %}

{% si_step Mount the Lighthouse deck %}
For mounting the Lighthouse deck on a Crazyflie check out the {% id_link getting-started-expansion-decks %} tutorial.
{% endsi_step %}

{% si_step Update firmware in the Crazyflie and Lighthouse deck %}

**Note1:** The firmware of the Lighthouse deck is updated together with the Crazyflie firmware when flashed from the client,
the deck must be mounted when flashing.

**Note2:** The flashing procedure in the client has changed lately, if you are used to the old procedure please check out the documentation.

Please follow the [the firmware upgrade instructions](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/#firmware-upgrade).

{% endsi_step %}


{% si_intro Preparing the base stations %}
Before setting up the system you need to set the basestations in the right mode.
{% endsi_intro %}


{% si_step Open the Crazyflie Client and click the Lighthouse Tab %}
Choose the _Lighthouse Positioning_ tab.

You may have to check it in the menu View->Tabs->Lighthouse Positioning Tab to make it visible.

{% img open the Crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/1_client_lighthouse_tab.png %}

{% endsi_step %}


{% si_step Put the Basestations in the right mode %}
{% tabgroup %}
{% tab V2 %}
{% img connect to basestation ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_back.jpg %}
1. Power the Basestation with its powerblock and connect it with a micro-usb cable to the computer.

2. Open up the basestation configuration tool by pressing 'Set BS Channel'.

3. Scan for the basestation and check the current ID. If the basestation is never used, this value is probably 0.

4. Put the wanted channel (1 or 2) in 'Change Channel' and press the 'Set Channel' button.

5. Wait until you see the 'success!' before disconnecting and reconnecting another basestation.

{% img open the bs config dialog ; wide; /images/tutorials/getting_started_with_lighthouse/2a_client_basestation_dialog.png %}


{% endtab %}
{% tab V1 %}
You can change the basestation mode with a small button in the back. The modes should be changed to 'b' and 'c' for without a sync cable and 'A' and 'b' if you are using a sync cable.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}


{% si_step Set up the basestations in flight area%}
After the base station's channels are correctly set, you can mount them in your flight area by a wall mount or a camera-stand. The ideal flight area for two basestations is about 5 x 5 x 3.0, but long as the Crazyflie is not further away than 7 meters from at least one basestation, it should work out.

Make sure that you have the following conditions in your flight area:
* The basestations should be about at least 0.5 meters higher than the flight area of the Crazyflie due to the placement of the sensors on the Lighthouse deck.
* Make sure that there are no mirrors or big large reflective items in the area.
* Make sure that you do not have direct sunlight.

{% img maximum flying height ; wide; /images/tutorials/getting_started_with_lighthouse/setup_arena.png %}


{% endsi_step %}

{% si_intro Preparing the System %}

This will explain how to get calibration and geometry data and setup up your Crazyflie to fly in the Lighthouse positioning system.

{% endsi_intro %}



{% si_step Indicate the origin of your coordinate system%}
Place the Crazyflie with the Lighthouse deck on the ground of where you want the origin to be of your global coordinate system. Check out {% id_link cf2_coordinate_system %}.
{% endsi_step %}

{% si_step Connect to the Crazyflie with the Client%}
Open the CF client and connect to the Crazyflie 2.X.

_If not already done, [configure](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client#firmware-configuration)_
the Crazyflie 2.X in __2Mbit__ radio mode.
{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/3_client_flight_control.png %}
{% endsi_step %}

{% si_step Wait for calibration of the basestations %}
Make sure that the Crazyflie is receiving the sweep angels of both basestations and has received the calibration data.

_For the calibration data you might need to wait for 20 seconds._

{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/4_basestation_status.png %}
{% endsi_step %}

{% si_step Estimate the geometry %}
Once you have received the calibration data, it is time for the next step:

1. Open up the basestation geometry management dialog by pressing 'Manage Geometry'.

2. In the dialog, press 'Estimate Geometry'. You will see then the estimated geometry of the basestations.

3. If the geometry makes sense, press 'Write to Crazyflie', or else move your Crazyflie and press 'Estimate Geometry' again.
{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/5_geometry_dialog.png %}
{% endsi_step %}

{% si_step Check the positioning %}
The Lighthouse deck's LED should now be full green and you should be able to see the visualizations of the basestations with their channels and the Crazyflie itself as a blue dot.

Make sure to test the Crazyflie position in your hand first before flying!
{% img basestation status; wide; /images/tutorials/getting_started_with_lighthouse/6_client_lighthouse_tab_2.png %}
{% endsi_step %}

{% si_intro Userguides and theory %}

* Check out [the cfclient lighthouse tab user guide](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/lighthouse_tab/) for more explanation of each of the buttons.
* [The system theory documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/) presents the indepth theory of the lighthouse positioning system

{% endsi_intro %}
