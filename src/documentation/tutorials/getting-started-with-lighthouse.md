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
* A {% id_link product-crazyflie-2-1-plus %}
* A {% poplink lighthouse-deck %}
* 2-4 [Lighthouse basestations V2.0](https://store.bitcraze.io/products/lighthouse-v2-base-station) (recommended) or 2 Lighthouse basestations V1.0
* {% poplink crazyradio-2-0 %} or {% id_link product-crazyradio-pa %}
{% endsi_step %}

{% si_step  Prerequisites - software %}
* The latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases)
{% endsi_step %}



{% si_intro Preparing the Crazyflie %}
The first thing to do is to make sure the firmware in the Crazyflie and Lighthouse deck is up to date. Be careful When mounting the Lighthouse positioning deck with the long pin headers ([Male long deck connectors](https://store.bitcraze.io/collections/spare-parts/products/male-long-deck-connector)). Make sure they do not block the laser sweeps from the base stations, as this could affect the drone's performance.
{% endsi_intro %}

{% si_step Mount the Lighthouse deck %}
For mounting the {% poplink lighthouse-deck %} on a Crazyflie check out the {% id_link getting-started-expansion-decks %} tutorial.
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

{% tabgroup %}
{% tab Linux %}

{% si_step Make sure you have permission to write to serial ports %}
In Linux, for non-root users, there is no read/write permission for serial devices by default. So if you are on a Linux system you will have to make sure that your user has the correct access rights. This can be done by adding your user to the `dialout` group and restarting. Adding a user to a group in Linux is done using the usermod command, which require root permissions:

```
$ sudo usermod -aG dialout [username]
```

Replace `[username]` above with your own username and after running the command restart your computer and you will then have the correct access to write to serial ports on Linux.

{% endsi_step %}
{% endtab %}
{% endtabgroup %}

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

4. Put the wanted channel (1 to 4) in **Change Channel** and click the **Set Channel** button. Each basestation should have a unique ID.

5. Wait until you see the '**success!**' message before disconnecting and repeating the steps for the other base station.

{% img open the base station config dialog ; medium; /images/tutorials/getting_started_with_lighthouse/2a_client_basestation_dialog.png %}


{% endtab %}
{% tab V1 base station %}
On V1 base stations you change the mode with the small button on the back of the base station. The modes should be changed to 'A' and 'b' if you are using a sync cable and 'b' and 'c' without a sync cable.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}

{% si_step Set up the base stations in the flight area%}
After the base station's channels are correctly set, you can mount them in your flight area by a wall mount or a camera-stand. The maximum flight area for two base stations is about 4 x 4 x 2.0, but long as the Crazyflie is not further away than 6 meters from at least one base station, it should work out. Note that the lighthouse sensors are mounted on the top of the {% poplink lighthouse-deck %} and that the base stations must be above the Crazyflie to be received.

Make sure that you have the following conditions in your flight area:
* The base stations should be about at least 40 centimeters higher than the flight area of the Crazyflie due to the placement of the sensors on the {% poplink lighthouse-deck %}.
* Make sure that there are no mirrors or big large reflective items in the area.
* Make sure that you do not have direct sunlight.

{% img maximum flying height ; wide; /images/tutorials/getting_started_with_lighthouse/setup_arena.png %}


{% endsi_step %}

{% si_intro Preparing the System %}

This will explain how to get calibration and geometry data and setup up your Crazyflie to fly in the Lighthouse positioning system.

{% endsi_intro %}



{% si_step Indicate the origin of your coordinate system%}
Place the Crazyflie with the {% poplink lighthouse-deck %} on the ground of where you want the origin to be of your global coordinate system. Check out {% id_link cf2_coordinate_system %}.
{% endsi_step %}

{% si_step Connect to the Crazyflie with the Client%}
Open the CF client and connect to the Crazyflie 2.x.

_If not already done, [configure](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client#firmware-configuration)_
the Crazyflie 2.x in __2Mbit__ radio mode.
{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/3_client_flight_control.png %}
{% endsi_step %}

{% si_step Select system type %}
The Crazyflie needs to know what type of base stations that are used to be able to decode the light sweeps correctly.

Click the **Change system type** button and select the appropriate type for your system. The system type is stored in the
Crazyflie and will be used the next time the Crazyflie is started.
{% endsi_step %}

{% si_step Wait for calibration of the base stations %}
Make sure that the Crazyflie is receiving the sweep angels of both base stations and has received the calibration data.

_For the calibration data you might need to wait for 20 seconds._

{% img base station status; narrow; /images/tutorials/getting_started_with_lighthouse/4_basestation_status.png %}
{% endsi_step %}

{% si_step Estimate the geometry %}
Once you have received the calibration data, it is time to estimate where the base stations a located

1. Open up the base station geometry management dialog by pressing 'Manage Geometry'

2. In the dialog, press 'Estimate Geometry' (not 'Manage geometry simple'). Please follow the wizard's instructions for estimating the geometry.

3. If the geometry makes sense, press 'Write to Crazyflie', or else move your Crazyflie and press 'Estimate Geometry' again.


{% img base station status; medium; /images/tutorials/getting_started_with_lighthouse/5_geometry_dialog.png %}

Here is also a video going through the geometry estimation procedure in case you got lost or didn't get a good result:

{% youtube BMao2pbPaaY; medium; 16by9 %}

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

{% img Command based flight controls; medium; /images/tutorials/getting_started_with_lighthouse/command_flight_control.png %}
{% endsi_step %}
{% si_step Take off and fly %}
Click the **Take off** button to start flying and use the other controls to move around.
{% endsi_step %}

{% si_intro Next %}

* With the base stations V2.0, it is possible to fly more than 4 base stations however changes to the Crazyflie's firmware would need to be made. Please go to the [instructions to configure the firmware](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/multi_base_stations/) to accept more than 4 Lighthouse base stations.
* Check out [the cfclient lighthouse tab user guide](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/lighthouse_tab/) for more explanation of each of the buttons.
* [The system theory documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/) presents the indepth theory of the lighthouse positioning system and more advanced guides

{% endsi_intro %}
