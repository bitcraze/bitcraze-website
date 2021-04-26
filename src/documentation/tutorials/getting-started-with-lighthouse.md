---
layout: page-left-menu
title: Getting started with the Lighthouse system
page_id: getting-started-with-the-lighthouse-system
---

{% si_intro Introduction %}

The Lighthouse positioning system uses the SteamVR Base stations of Valve Inc. and the Lighthouse deck on the Crazyflie. With this system, the Crazyflie can estimate its own X, Y and Z in a global coordinate system.

This tutorial is also available as a [video](https://www.youtube.com/watch?v=DCEHht72B08).

{% img Two base station, one crazyflie ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_one_crazyflie.jpg %}

{% endsi_intro %}

{% si_step  Prerequisites - hardware %}
Make sure that you have the following available:
* [A Crazyflie 2.X](https://store.bitcraze.io/products/crazyflie-2-1)
* [A Lighthouse deck](https://store.bitcraze.io/products/lighthouse-positioning-deck)
* Two Lighthouse Bsestations. We advise to [buy version 2.0](https://store.bitcraze.io/products/lighthouse-v2-base-station) but version 1.0 is also compatible.
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
Before setting up the system you need to configure the channel (aka mode) of the base stations. The procedure is different between V1 and V2 base stations.
{% endsi_intro %}


{% si_step Open the Crazyflie Client and click the Lighthouse Tab %}
Choose the _Lighthouse Positioning_ tab.

You may have to check it in the menu View->Tabs->Lighthouse Positioning Tab to make it visible.

{% img open the Crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/1_client_lighthouse_tab.png %}

{% endsi_step %}


{% si_step Configure the base stations channel (mode) %}
{% tabgroup %}
{% tab V2 base station %}
V2 base stations are configured from the Crazyflie client and the channel of the two base stations must be set to 1 and 2.
{% img connect to base station ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_back.jpg %}
1. Power one of the Base stations with its powerblock and connect it with a micro-usb cable to the computer.

2. Open up the base station configuration tool in the Crazyflie client by clicking the **Set BS Channel** button.

3. Scan for the base station and check the **current channel**. If the base station is never used, this value is probably 0.

4. Put the wanted channel (1 or 2) in **Change Channel** and click the **Set Channel** button.

5. Wait until you see the '**success!**' message before disconnecting and repeating the steps for the other base station.

{% img open the base station config dialog ; medium; /images/tutorials/getting_started_with_lighthouse/2a_client_basestation_dialog.png %}


{% endtab %}
{% tab V1 base station %}
On V1 base stations you change the mode with the small button on the back of the base station. The modes should be changed to 'A' and 'b' if you are using a sync cable and 'b' and 'c' without a sync cable.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}


{% si_step Set up the base stations in the flight area%}
After the base station's channels are correctly set, you can mount them in your flight area by a wall mount or a camera-stand. The maximum flight area for two base stations is about 4 x 4 x 2.0, but long as the Crazyflie is not further away than 6 meters from at least one base station, it should work out. Note that the lighthouse sensors are mounted on the top of the lighthouse deck and that the base stations must be above the Crazyflie to be received.

Make sure that you have the following conditions in your flight area:
* The base stations should be about at least 0.5 meters higher than the flight area of the Crazyflie due to the placement of the sensors on the Lighthouse deck.
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

{% si_step Wait for calibration of the base stations %}
Make sure that the Crazyflie is receiving the sweep angels of both base stations and has received the calibration data.

_For the calibration data you might need to wait for 20 seconds._

{% img base station status; medium; /images/tutorials/getting_started_with_lighthouse/4_basestation_status.png %}
{% endsi_step %}

{% si_step Estimate the geometry %}
Once you have received the calibration data, it is time for the next step:

1. Open up the base station geometry management dialog by pressing 'Manage Geometry'.

2. In the dialog, press 'Estimate Geometry'. You will see then the estimated geometry of the base stations.

3. If the geometry makes sense, press 'Write to Crazyflie', or else move your Crazyflie and press 'Estimate Geometry' again.
{% img base station status; wide; /images/tutorials/getting_started_with_lighthouse/5_geometry_dialog.png %}
{% endsi_step %}

{% si_step Check the positioning %}
The Lighthouse deck's LED should now be full green and you should be able to see the visualizations of the base stations with their channels and the Crazyflie itself as a blue dot.

Sanity check the position estimation by moving the Crazyflie around in your hand.
{% img base station status; wide; /images/tutorials/getting_started_with_lighthouse/6_client_lighthouse_tab_2.png %}
{% endsi_step %}

{% si_intro Test flight %}
Now that the system is set up, let's do a short test flight!
{% endsi_intro %}
{% si_step Switch to the Flight control tab %}
Click the **Flight control** tab in the Crazyflie client
{% endsi_step %}
{% si_step Find the controls %}
In the bottom right corner you will find buttons for simple command based flight.

{% img Command based flight cotrols; medium; /images/tutorials/getting_started_with_lighthouse/command_flight_control.png %}
{% endsi_step %}
{% si_step Take off and fly %}
Click the **Take off** button to start flying and use the other controls to move around.
{% endsi_step %}

{% si_intro Userguides and theory %}

* Check out [the cfclient lighthouse tab user guide](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/lighthouse_tab/) for more explanation of each of the buttons.
* [The system theory documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/) presents the indepth theory of the lighthouse positioning system

{% endsi_intro %}
