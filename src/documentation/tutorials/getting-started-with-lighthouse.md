---
layout: page-left-menu
title: Getting started with the Lighthouse system
page_id: getting-started-with-the-lighthouse-system
---

{% si_intro Introduction %}

The Lighthouse positioning system uses the SteamVR Base Stations from Valve Inc. together with the Lighthouse positioning deck mounted on the Crazyflie<sup>®</sup>. This system enables the Crazyflie to estimate its position and orientation within a global coordinate system.

{% img Two base station, one crazyflie ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_one_crazyflie.jpg %}

{% endsi_intro %}

{% si_step Prerequisites - hardware %}
Make sure that you have the following available:
* A [Crazyflie platform]({% id_url overview_crazyflie; family-tree %})
* A {% poplink lighthouse-deck %}
* 2-4 [Lighthouse base stations V2.0](https://store.bitcraze.io/products/lighthouse-v2-base-station) (recommended) or 2 Lighthouse base stations V1.0
* {% poplink crazyradio-2-0 %} or {% id_link product-crazyradio-pa %}
{% endsi_step %}

{% si_step  Prerequisites - software %}
* The latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases). Follow the [Installation instructions](/documentation/repository/crazyflie-clients-python/master/installation/install/).
{% endsi_step %}



{% si_intro Preparing the Crazyflie %}
The first thing to do is to make sure the firmware in the Crazyflie and Lighthouse deck is up to date.
{% endsi_intro %}

{% si_step Mount the Lighthouse deck %}
For mounting the {% poplink lighthouse-deck %} on a Crazyflie follow the {% id_link getting-started-expansion-decks %} tutorial. Be careful when mounting the Lighthouse positioning deck using the long pins. Make sure they do not block the laser sweeps from reaching the sensors on the lighthouse deck, as this could affect the drone's performance.
{% endsi_step %}

{% si_step Update firmware in the Crazyflie and Lighthouse deck %}

**Note:** The Lighthouse deck firmware is updated automatically together with the Crazyflie firmware when flashing from the client. The deck needs to be mounted on the Crazyflie during the flashing process.

Follow the [firmware upgrade instructions](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/#firmware-upgrade).

{% endsi_step %}


{% si_intro Preparing the base stations %}
Before setting up the system you need to configure the channel of the base stations.
{% endsi_intro %}

{% si_step Make sure you have permission to write to serial ports %}
In Linux, non-root users typically don't have permission to access serial devices by default. If you are on a Linux system, make sure that your user account has the required access rights. This can be done by adding your user to the `dialout` group and restarting. Adding a user to a group in Linux is done using the usermod command, which requires root permissions:

```
$ sudo usermod -aG dialout [username]
```

Replace `[username]` above with your own username. After running the command, restart your computer and you will then have permission to access serial devices.

{% endsi_step %}

{% si_step Open the Crazyflie Client and click the Lighthouse Tab %}

You can open the Lighthouse tab by selecting View->Tabs->Lighthouse Positioning.

{% img open the Crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/1_client_lighthouse_tab.png %}

{% endsi_step %}


{% si_step Configure the base stations channel %}
{% tabgroup %}
{% tab V2 base station %}
V2 base stations are configured from the Crazyflie client and their channel must be set to a unique id between 1 and the number of supported base stations.
{% img connect to base station ; wide; /images/tutorials/getting_started_with_lighthouse/two_basestations_back.jpg %}
For one base station at a time: 

1. Power on the base station with its powerblock and connect it with a micro-usb cable to the computer.

2. Open up the base station configuration tool in the Lighthouse tab of the Crazyflie client by clicking the **Set BS Channel** button.

3. Scan for the base station and check the **Current channel**. If the base station is never used, this value is probably 0.

4. Put the wanted channel (1 to 4) in **Change Channel** and click the **Set Channel** button. Each base station should have a unique channel.

5. Wait until you see the '**success!**' message before disconnecting and repeat the steps for the next base station.

{% img open the base station config dialog ; medium; /images/tutorials/getting_started_with_lighthouse/2a_client_basestation_dialog.png %}


{% endtab %}
{% tab V1 base station %}
On V1 base stations you change the mode with the small button on the back of the base station. The modes should be changed to 'a' and 'b' if you are using a sync cable and 'b' and 'c' without a sync cable.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}

{% si_step Set up the base stations in the flight area %}
After the base station's channels are correctly set, you can mount them in your flight area using a wall mount or a tripod. Each base station requires only a power supply; the USB connection is not needed. The maximum flight area for two base stations is about 4 x 4 x 2 m, but as long as the Crazyflie is not further away than 6 meters from at least one base station, it will receive positioning data. Note that the lighthouse sensors are placed on the top of the {% poplink lighthouse-deck %} and that the base stations must be above the Crazyflie to be received.

Make sure the following conditions are met in your flight area:
* The base stations should be about at least 50 cm above the expected flight area of the Crazyflie.
* Remove the mirrors or large reflective items in the area.
* Avoid direct sunlight as it can interfere with the lighthouse sensors.
* Make sure the base stations have a clear line of sight to the Crazyflie throughout the flight area.

{% img maximum flying height ; wide; /images/tutorials/getting_started_with_lighthouse/setup_arena.png %}


{% endsi_step %}

{% si_intro Setting up the System %}

This section explains how to collect the calibration and geometry data and configure your Crazyflie for flight using the Lighthouse positioning system.

{% endsi_intro %}


{% si_step Connect to the Crazyflie with the Client%}
Open the CF client and connect to the Crazyflie.


{% img open the crazyflie client; wide; /images/tutorials/getting_started_with_lighthouse/3_client_connect.png %}
{% endsi_step %}

{% si_step Select system type %}
The Crazyflie needs to know what type of base stations are used to be able to decode the light sweeps correctly.

Click the **Switch BS version** button and select the appropriate version. This is stored in the Crazyflie and is automatically used the next time it starts.
{% endsi_step %}

{% si_step Wait for calibration of the base stations %}
Place the Crazyflie within the flight area so that it has a clear line of sight to all base stations. Wait approximately 20 seconds for the calibration data to be received before proceeding.

{% img base station status; narrow; /images/tutorials/getting_started_with_lighthouse/4_basestation_status.png %}
{% endsi_step %}

{% si_step Estimate the geometry %}
Once you have received the calibration data, it is time to estimate where the base stations are located.
This process will generate a configuration file that is stored in the Crazyflie and used to estimate its position.

1. Press **Start set up** in the **System Management** section to expand the setup sections.

2. Follow the steps in the **Sample Collection** section, using the "**<**" and "**>**" buttons to move between them:

* Place the Crazyflie at the desired origin of your coordinate system and press **Start measurement**
* Place the Crazyflie 1 m along the positive X-axis and press **Start measurement**
* Place the Crazyflie in the XY-plane on the floor (not on the X-axis) and press **Start measurement**. You can repeat this multiple times to get a more precise approximation.
* Carry the Crazyflie to several positions in your flight space and record samples. You can do that either by clicking the **Sample Position** button, or by quickly rotating it left-right around the Z-axis and then holding it still.

The geometry is estimated and uploaded to the Crazyflie automatically. The status label turns green and shows **Uploaded** when done.


{% img base station status; wide; /images/tutorials/getting_started_with_lighthouse/5_start_setup_section.png %}


{% endsi_step %}

{% si_step Check the positioning %}
The Lighthouse Deck's LED should now be green, and the 3D visualization should show the base stations with their channels and the Crazyflie as a blue dot.

Sanity check the position estimation by moving the Crazyflie around with your hand.
{% img base station status; wide; /images/tutorials/getting_started_with_lighthouse/6_setup_completed.png %}
{% endsi_step %}

{% si_intro Test flight %}
Now that the system is set up, let's do a short test flight!
{% endsi_intro %}
{% si_step Switch to the Flight control tab %}
Click the **Flight control** tab in the Crazyflie client.
{% endsi_step %}
{% si_step Find the controls %}
In the bottom right corner you will find buttons for simple command based flight.

{% img Command based flight controls; medium; /images/tutorials/getting_started_with_lighthouse/command_flight_control.png %}
{% endsi_step %}
{% si_step Take off and fly %}
Click the **Take off** button to start flying and use the other controls to move around.
{% endsi_step %}

{% si_intro Next %}

* With the base stations V2.0, it is possible to use more than 4 base stations but firmware modifications are required. See the [instructions to configure the firmware](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/multi_base_stations/) to enable support for more than 4 Lighthouse base stations.
* See the [cfclient lighthouse tab user guide](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/lighthouse_tab/) for a detailed explanation of each button.
* The [Lighthouse system documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/) presents the in-depth theory of the lighthouse positioning system and more advanced guides.

{% endsi_intro %}
