---
layout: page
title: Big Quad deck build instructions
page_id: bq-deck-build
---

**A big quad is dangerous so make sure to be SAFE!**

Currently there is only a basic setup but as the development advances so will the documentation.
Start by mounting the big quad deck on the frame. After that connect the ESCs according to the diagrams below. **Note** that the 5V is needed for the motor signals and is not optional.


## Basic connection diagram

![ESC basic setup](/images/documentation/hardware/esc-basic-setup.png)

## Basic connection picture

![Bigquad basic connection](/images/documentation/hardware/bigquad-basic-connection.png)

## Attaching the Crazyflie 2.0

The front of the Crazyflie 2.0 should be pointing in the direction of the arrows (front) on the BigQuad deck.

If the frame allows it, the Crazyflie 2.0 motors can be kept mounted but it is fine to remove them as well. Attach and connect the Crazyflie 2.0 using either the long or short deck pins. Use the included nylon spacer and screws to secure the Crazyflie 2.0 in place and to keep it level.

![Crazyflie with bigquad deck](/images/documentation/hardware/bigquaddeck-2.jpg)

## Building Firmware

The BigQuad deck contains a 1-wire memory so it can be automatically detected and functions initialized. However as this currently is an ongoing development and a bigger quads ads a new level of caution we have decided to not enable the functionality by default. Therefore the firmware needs to be compiled with the ENABLE_BQ_DECK flag enabled.

### Enable BigQuad features

Make sure to have the crazyflie-firmware code updated to a later version then this [commit](https://github.com/bitcraze/crazyflie-firmware/commit/dbaaa914a54bf31a6bf155b26b09c472dc684086). Then define the flag ENABLE_BQ_DECK, preferably in the config.mk file add:

    CFLAGS += -DENABLE_BQ_DECK

Clean and build the firmware and flash it using you preferred method. Now when the Crazyflie 2.0 is started and it is connected to the BigQuad deck it will start outputting PWM signals to the ESC connectors. The motors [will not spin during the Crazyflie 2.0 power on self-test (POST)](https://forum.bitcraze.io/viewtopic.php?f=6&t=2069#p10502).

## Current firmware status notes (2019-10)
* CPPM input is working but calibration and dynamic channel setup is not implemented yet. Doing the first tests with cfclient and gamepad is wise but might not be as reliable as a RC transmitter and receiver, yet.
* When the BQ-Deck is detected it will automatically switch to brushless motor drivers. It will be noted in the cfclient console if it is detected or not.
* 1mbit or 2mbit datarate seem to be more stable when communicating with the BigQuad deck attached. It is wise to do a range test before flying far away.
* Different PID tuning parameters might be needed for it to fly well. Currently this has to be hard coded. Later this will be saved in the EEPROM or in the 1-wire memory.
* External battery voltage/current reading is implemented but no logic behind it, so don't run out of battery. * You can connect the cable (MON port) and watch the log variable.
* The PWM output is set to 400Hz. Use ESCs which can handle this or compile with new value. There is also the possibility to enable OneShot125 output.
* Be safe, it is experimental software. Run all testing without props!