---
layout: page
title: Taranis Controller
page_id: taranis-controller
---
**WARNING: These instructions are old and might not work anymore**

### Using a Taranis X9D (Plus) RC transmitter as a controller

If you already own a Taranis X9D (Plus) RC transmitter and want to use it as a controller, it can be configured to work with the Python PC client or the Android client app.

Fortunately the transmitter is able to act as an USB Joystick (see https://github.com/opentx/opentx/wiki/OpenTX-USB-Joystick).

#### Create a new model for the Taranis X9D (Plus)
You should create a new model when using the Taranis as an USB Joystick:

* you can turn off both internal and external TX modules
* you need to configure the thrust input (Weight 50% and Offset 50%)
    - otherwise you can not use the full travel of the axis assigned to thrust
* Servos menu
    - invert Thrust (CH1)
    - invert Eleron (CH3)

![taranis mainscreen](/images/documentation/wiki/taranis_mainscreen.png)
![taranis model setup](/images/documentation/wiki/taranis_modelsetup.png)
![taranis thrust input](/images/documentation/wiki/taranis_thrustinput.png)
![taranis_servos](/images/documentation/wiki/taranis_servos.png)

You can also download the configuration as an EEPE file and install it with the OpenTX Companion application.

* USB Joystick EEPE file: [usbjoystickforandroidcfclient.eepe.zip](/documentation/wiki/usbjoystickforandroidcfclient.eepe.zip)
* Download the latest Companion application here: https://www.open-tx.org/2015/07/16/opentx-2.1.0

## Python PC client
### Configure the Python client
1. Turn on the Taranis
2. Connect the Taranis with a USB cable to the PC
3. Go to Input device → Configure device mapping
4. Assign all axes
5. (Optional) Save the configuration as a new profile

Or paste the following code in a new file and save it as FrSkyTaranis.json in the conf/input subdirectory of your Python PC client installation:

```
{
  "inputconfig": {
    "inputdevice": {
      "updateperiod": 10, 
      "name": "FrSkyTaranis", 
      "axis": [
        {
          "scale": -1.0, 
          "type": "Input.AXIS", 
          "id": 0, 
          "key": "thrust", 
          "name": "thrust"
        }, 
        {
          "scale": 1.0, 
          "type": "Input.AXIS", 
          "id": 3, 
          "key": "yaw", 
          "name": "yaw"
        }, 
        {
          "scale": 1.0, 
          "type": "Input.AXIS", 
          "id": 1, 
          "key": "roll", 
          "name": "roll"
        }, 
        {
          "scale": -1.0, 
          "type": "Input.AXIS", 
          "id": 2, 
          "key": "pitch", 
          "name": "pitch"
        }
      ]
    }
  }
}
```
### Use the Taranis X9D (Plus) with the Python client
* Before connecting to the Crazyflie, check that all axes are working (values should change in the client)
* **Attention: Always make sure that the thrust stick is all the way down before connecting to the Crazyflie**
* Fly the Crazyflie with the Taranis and have fun! :-D

Further ideas to explore
* Configure switches on the Taranis as buttons for emergency stop, etc.
* Try out dual rates and/or expo

## Android client
### Configure the Crazyflie Android client app

Here are the necessary steps to configure the Crazyflie Android client:

1. Turn on the Taranis
2. Connect the Taranis with a USB cable and a USB host (OTG) adapter to the Android device
    * The Taranis screen should display a USB symbol when it's connected
3. Check that all sticks are in center position
4. Open the Crazyflie Android client
5. Go to Preferences → Controller Settings and switch Controller to Gamepad
6. Go to Gamepad axis and button mapping and configure the following axes
    * Right analog X axis should be AXIS_Y
    * Right analog Y axis should be AXIS_Z
    * Left analog X axis should be AXIS_RX
    * Left analog Y axis should be AXIS_X
7. Depending on the mode you are using on the Taranis (Mode 1 or 2), set the Mode in the Android app
    * Preferences → Flight control settings → Mode


### Use the Taranis X9D (Plus) with the Crazyflie Android client

1. Before connecting to the Crazyflie, check that all axes are working (values should change in the Android app)
2. **Attention: Always make sure that the thrust stick is all the way down before connecting to the Crazyflie** :!:**
3. Connect to the Crazyflie 2 over BLE
    * If you have a Crazyflie 1 you need to use a (powered) USB hub to connect both the Taranis RC transmitter and the Crazyradio USB dongle
4. Fly the Crazyflie with the Taranis and have fun! 