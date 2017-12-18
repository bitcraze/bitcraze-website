---
layout: page-left-menu
title: Getting started with the STEM drone bundle
permalink: /getting-started-with-stem-drone-bundle/
page_id: getting-started-stem-drone-bundle
---

{% si_intro The STEM drone bundle %}
The STEM (Science Technology Engineering Mathematics) drone bundle is based on a
Crazyflie 2.0 with a Flow Deck. It is an autonomous drone that can be controlled
from a simple python script to explore and operate a robot in 3 dimensions.

This getting started guide will help you set up the system and make your first
autonomous flight.
{% endsi_intro %}

{% si_step required hardware %}
* 1 x Crazyflie 2.0 Kit
* 1 x Crazyradio PA
* 1 x Flow deck
{% endsi_step %}

{% si_step prerequisites %}
This getting started guide assumes you have already assembled your Crazyflie 2.0. If that is not the case please follow the [Getting started with the Crazyflie 2.0](/getting-started-with-the-crazyflie-2-0/)

This guide also requires that you have updated the Crazyflie to the latest firmware. For more information on how to update the firmware, see the [download latest firmware](/getting-started-with-the-crazyflie-2-0/#latest-fw) section in our getting started with Crazyflie 2.0 tutorial.
{% endsi_step %}

{% si_step  mounting the flow deck %}
Mount the Flow Deck underneath the Crazyflie 2.0 using the long pin-headers supplied with the Crazyflie 2.0 Kit.
{% img Mounting the Flow deck; wide; /images/tutorials/getting_started_stem/stem_bundle_mounted_deck.jpg %}

For more information about how to mount an expansion deck please see the [Getting started with expansion decks](/getting-started-with-expansion-decks/) tutorial.
{% endsi_step %}

{% si_step installing Python and the cflib%}
{% tabgroup %}
{% tab Windows %}
The backend library used to control the Crazyflie 2.0 is called cflib and is written
in python 3. To us it you must have Pyhton 3 installed on the computer and it can
be downloaded [here](http://www.python.org).

Install python using the standard settings, and for convenience tick the Add to PATH checkbox.
{% img Python install; wide; /images/tutorials/getting_started_stem/python3_toPATH.png %}

When python 3 is installed, open a command prompt and install the cflib using pip.

Type ```pip3 install cflib``` in the command prompt

{% img cflib install; wide; /images/tutorials/getting_started_stem/pip_cflib.png %}
{% endtab %}
{% tab Ubuntu %}
The following instructions have been tested on Ubuntu 16.04.

To install Python, pip and the Crazyflie library run the following commands:

``` bash
sudo apt-get install python3 python3-pip python3-usb idle3
pip3 install cflib
```

Your user needs access to USB devices in order to use the Crazyradio, run the
following lines to grant access. After the command is run the Crazyradio needs
to be inserted again for the rules to take effect.

``` bash
sudo groupadd plugdev
sudo usermod -a -G plugdev $USER
echo 'SUBSYSTEM=="usb", ATTRS{idVendor}=="1915", ATTRS{idProduct}=="7777", MODE="0664", GROUP="plugdev"' | sudo tee /etc/udev/rules.d/99-crazyradio.rules
```

{% endtab %}
{% endtabgroup %}
{% endsi_step %}

{% si_step  running your first flight script %}
Now when everything is setup and installed start the Python editor IDLE3.
Select *File->New* and copy/past the script below into the new script. Save
the script with a suitable name.

``` python
"""
This script shows the basic use of the MotionCommander class.

Simple example that connects to the crazyflie at `URI` and runs a
sequence. Change the URI variable to your Crazyflie configuration.
"""
import logging
import time

import cflib.crtp
from cflib.crazyflie.syncCrazyflie import SyncCrazyflie
from cflib.positioning.motion_commander import MotionCommander

URI = 'radio://0/80/250K'

# Only output errors from the logging framework
logging.basicConfig(level=logging.ERROR)


if __name__ == '__main__':
    # Initialize the low-level drivers (don't list the debug drivers)
    cflib.crtp.init_drivers(enable_debug_driver=False)

    with SyncCrazyflie(URI) as scf:
        # We take off when the commander is created
        with MotionCommander(scf) as mc:
            time.sleep(1)

            # There is a set of functions that move a specific distance
            # We can move in all directions
            mc.forward(0.5)
            # Wait a bit
            time.sleep(1)

            # Move up 0.2 meters
            mc.up(0.2)
            # Wait a bit
            time.sleep(1)

            # We can do circles or parts of circles
            mc.circle_right(0.5, velocity=0.5, angle_degrees=270)

            # Move down 0.2 meters
            mc.down(0.2)
            # Wait a bit
            time.sleep(1)

            # Move left 0.2 meters
            mc.left(0.2, velocity=0.6)
            # Wait a bit
            time.sleep(1)

            mc.forward(0.5)
            # And we can stop
            mc.stop()

            # We land when the MotionCommander goes out of scope
```
Run the script by pressing F5, the output should be similar to this.

```
Connecting to radio://0/33/2M
Connected to radio://0/33/2M
```

{% endsi_step %}

{% si_step the script in action! %}

{% youtube qKGjWWvjRt0; wide; 16by9 %}

{% endsi_step %}
