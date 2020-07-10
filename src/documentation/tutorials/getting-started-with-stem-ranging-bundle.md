---
layout: page-left-menu
title: Getting started with the STEM ranging bundle
page_id: getting-started-stem-ranging-bundle
redirects:
  - /getting-started-with-stem-ranging-bundle/
---

{% si_intro The STEM ranging bundle %}
The STEM (Science Technology Engineering Mathematics) ranging bundle is based on a Crazyflie 2.X with a Flow Deck and a Multi-ranger deck.
It is an autonomous drone that can be controlled from a simple python script to explore and operate a robot in 3 dimensions.
It has the ability to detect obstacles around it.

This getting started guide will help you set up the system and make your first autonomous interactive flight.
{% endsi_intro %}

{% si_step required hardware %}
* 1 x Crazyflie 2.X Kit
* 1 x Crazyradio PA
* 1 x Flow V2 deck
* 1 x Multi-ranger deck
{% endsi_step %}

{% si_step prerequisites %}
This getting started guide assumes you have already assembled your Crazyflie 2.X. If that is not the case please follow the {% id_link getting-started-crazyflie-2 %}

This guide also requires that you have updated the Crazyflie to the latest firmware. For more information on how to update the firmware, see the [download latest firmware]({% id_url getting-started-crazyflie-2; latest-fw %}) section in our getting started with Crazyflie 2.X tutorial.
{% endsi_step %}

{% si_step  mounting the Flow V2 deck %}
Mount the Flow V2 Deck underneath and the Multi-ranger deck above the Crazyflie 2.X using the long pin-headers supplied with the Crazyflie 2.X Kit.
{% img Mounting the Flow V2 deck; wide; /images/tutorials/getting_started_stem_ranging/getting_started_with_stem_ranging_770px.jpg %}
{% img Mounting the Flow V2 deck; wide; /images/tutorials/getting_started_stem_ranging/getting_started_with_stem_ranging_770px-2.jpg %}

For more information about how to mount an expansion deck please see the {% id_link getting-started-expansion-decks %} tutorial.
{% endsi_step %}

{% si_step installing Python and the cflib%}
{% tabgroup %}
{% tab Windows %}
The backend library used to control the Crazyflie 2.X is called cflib and is written
in python 3. To use it you must have Pyhton 3 installed on the computer and it can
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
Example script that allows a user to "push" the Crazyflie 2.X around
using your hands while it's hovering.

This examples uses the Flow and Multi-ranger decks to measure distances
in all directions and tries to keep away from anything that comes closer
than 0.2m by setting a velocity in the opposite direction.

The demo is ended by either pressing Ctrl-C or by holding your hand above the
Crazyflie.
"""
import logging
import sys
import time

import cflib.crtp
from cflib.crazyflie import Crazyflie
from cflib.crazyflie.syncCrazyflie import SyncCrazyflie
from cflib.positioning.motion_commander import MotionCommander
from cflib.utils.multiranger import Multiranger

URI = 'radio://0/80/2M'

if len(sys.argv) > 1:
    URI = sys.argv[1]

# Only output errors from the logging framework
logging.basicConfig(level=logging.ERROR)


def is_close(range):
    MIN_DISTANCE = 0.2  # m

    if range is None:
        return False
    else:
        return range < MIN_DISTANCE


if __name__ == '__main__':
    # Initialize the low-level drivers (don't list the debug drivers)
    cflib.crtp.init_drivers(enable_debug_driver=False)

    cf = Crazyflie(rw_cache='./cache')
    with SyncCrazyflie(URI, cf=cf) as scf:
        with MotionCommander(scf) as motion_commander:
            with Multiranger(scf) as multi_ranger:
                keep_flying = True

                while keep_flying:
                    VELOCITY = 0.5
                    velocity_x = 0.0
                    velocity_y = 0.0

                    if is_close(multi_ranger.front):
                        velocity_x -= VELOCITY
                    if is_close(multi_ranger.back):
                        velocity_x += VELOCITY

                    if is_close(multi_ranger.left):
                        velocity_y -= VELOCITY
                    if is_close(multi_ranger.right):
                        velocity_y += VELOCITY

                    if is_close(multi_ranger.up):
                        keep_flying = False

                    motion_commander.start_linear_motion(
                        velocity_x, velocity_y, 0)

                    time.sleep(0.1)

            print('Demo terminated!')
```

Run the script by pressing F5.

**Note**: If you have the python client open, make sure the Crazyflie is disconnected from it.
The Crazyradio does not support connections from multiple programs simultaneously and
the script will not work if the Crazyflie still is connected to the python client.

The output should look similar to this.

```
Connecting to radio://0/110/2M
Connected to radio://0/110/2M
Demo terminated!
```

{% endsi_step %}

{% si_step the script in action! %}

{% youtube tQ9ygfUFOz8; wide; 16by9 %}

{% endsi_step %}

{% si_step what's next? %}
* Explore the different [example scripts](https://github.com/bitcraze/crazyflie-lib-python/blob/master/examples).
* Explore the [motion commander](https://github.com/bitcraze/crazyflie-lib-python/blob/master/cflib/positioning/motion_commander.py) class. The class can do more then simple directional commands such as scripting using speed and time or together with events.
* Try out the logging and parameter framework. The [basic logging](https://github.com/bitcraze/crazyflie-lib-python/blob/master/examples/basiclogSync.py) is a good example to start from or digg into the details on the [documentation](https://www.bitcraze.io/documentation/repository/crazyflie-firmware/master/userguides/logparam/).
* Connect a gamepad and with the [flow deck]({% id_url getting-started-flow-deck %}) try optical flow stabilized flight.
{% endsi_step %}
