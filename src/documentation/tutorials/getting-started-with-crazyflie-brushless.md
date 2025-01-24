---
layout: page-left-menu
title: Getting started with the Crazyflie 2.1 Brushless
page_id: getting-started-crazyflie-brushless
redirects:
    - /getting-started-crazyflie-brushless/
---

{% si_intro Disclaimer %}
You are responsible for handling the drone and its components. It is your responsibility to make sure you understand how your drone works and that it is in good working condition before flight. Using a drone in a reckless and negligent manner could cause damage or bodily harm, resulting in lawsuits, fines and jail time.

**There are things you should do to ensure maximum safety:**	
{% si_step  Safety instructons%}
* You should check your drone before and after each flight to make sure it’s working properly and there isn’t any damage. 
* Don’t make contact with a spinning propeller. A spinning propeller is hazardous if carelessly handled. Always avoid getting your fingers close to the propellers.
* When possible, build, test and configure your drone without its propellers attached.
* Avoid catching the drone mid-flight or while it’s landing.
* Always make sure that the path of your drone is clear to avoid any accidents.
* Use the propeller guards as much as possible

{% endsi_step %}

{% endsi_intro %}

---

{% si_intro Assembly %}


Make sure to follow the instructions below for assembling your Crazyflie 2.1 Brushless.
{% endsi_intro %}

{% si_step Unpacking the Crazyflie %}
Start by unpacking the box. It should contain the following items:


* 1 x Crazyflie Brushless control board
* 1 x 350mAh LiPo battery
* 4 x  Brushless motors
* 5 x Legs (1 spare)
* 5 x Legs/propeller guards (1 spare)
* 14 x Short (black) screws
* 5 x Longer (silver) screws
* 1 x Foam battery pad
* 5 x CCW propellers (3 spare)
* 5 x CW propellers (3 spare)
* 1 x Battery holder deck
* 2 x Short male deck connectors
* 2 x Long male deck connectors
* 1 x Micro-USB cable (48cm)
* 1 x Screwdriver
* 1 x Propeller tool

{% endsi_step %}
{% si_step mount the motors %}
Position the motor above the mounting holes, the motor cable should run along the arm. Use 3 black screws in the corner holes of the motor to fasten it. There is a screwdriver in the kit you can use to fasten it.
{% tutorialVideo /videos/screwing_motors.mp4 %}

Attach the motor cables to their connectors and twist the wire 180 degrees to attach to the connector. 

{% tutorialVideo /videos/twisting.mp4 %}

{% endsi_step %}


{% si_step attach the propellers %}
Now it’s time to attach the propellers.

Note: There are two types of propellers, the clock wise (CW) and counterclockwise (CCW) propellers, each kind has their own bag in the box. The CW propellers are marked “55-35R”, while the CCW propellers are marked “55-35”. They need to be mounted on the correct arm. As a guide, you’ll find arrows next to each motor on the PCB. When determining the direction of each propeller, make sure to note the following:

* Make sure that the correct side is facing up, the top side should be convex.
* Look at the shape of the tip, the sharper corner is on the back side of the rotation direction.
* Look at the angle of the blades. The higher side is facing forward in the rotational direction. 

Here’s a detailed view of where to attach CW and CCW propellers.
{% img Crazyflie propeller mounting; medium; /images/crazyflie2-1brushless/bl_prop_direction.png %}

For safety or repair purposes, you may need to remove the propellers. This process can be challenging to perform by hand, which is why a propeller tool is included in the box.

{% endsi_step %}

{% si_step attach the propeller guards or landing legs %}

Choose between using the propeller guards or the landing legs.
**We advise you to always use the guards if it is possible in your use case. These will protect the drone and you if something goes wrong.**

Slide the legs/guards on from below hooking the little plastic part on the circular part just below the motors. Snap the straight part of the legs/guards on the arms of the Crazyflie. 

{% tutorialVideo /videos/legs.mp4 %}

{% tutorialVideo /videos/propguards_side.mp4 %}

While not recommended, you can fasten your legs/guards on the PCB using the long (silver) screws. This will prevent the legs/guards from detaching during a crush, which could potentially damage the Crazyflie.

Removing the legs/guards can be a bit tricky. An easy approach is by using the propeller tool to release the clips, as shown in the video below. Be careful not to damage any of the motor cables.

{% tutorialVideo /videos/removing_guards.mp4 %}

{% endsi_step %}

{% si_step attach the rubber pad %}
The rubber pad should be attached to the Crazyflie between the
expansion headers. This will create friction, keep the battery from
slipping out and also protect the electronics.

{% tutorialVideo /videos/foam.mp4 %}
{% endsi_step %}

{% si_step attach headers %}
There are two types of headers in the box, long and short ones. Find the long ones and insert them into the expansion connector from below.

{% tutorialVideo /videos/pin_headers.mp4 %}
{% endsi_step %}

{% si_step attach the battery %}
Place the battery between the headers you just inserted and insert the battery holder board onto the headers. Watch out for the pins that can be a bit sharp when inserting it. The friction should hold the battery in place so tighten it until it does.

The battery wires can preferably be bent and placed underneath the PCB to be out of the way.
{% tutorialVideo /videos/battery.mp4 %}

Now connect the battery
and you are finished with the assembly.

Your Crazyflie 2.1 Brushless is now assembled!

{% endsi_step %}

{% si_step power on! %}
The assembly is finished, now it’s time to power it on! Note that the power
button is a push button, not a sliding button. The LEDs on the Crazyflie 2.1 Brushless will run in a startup sequence that can be seen in the video. 
{% tutorialVideo /videos/BL_power_on.mp4 %}
{% endsi_step %}

{% si_step getting to know your Crazyflie; 2.1 Brushless leds %}
First of all, lets look at what is front and back, this is important when flying
and also when mounting expansion decks. The small "bump" (the antenna) is on the front and the blue LEDs are at the back.
{% img Crazyflie board from the top; medium; /images/crazyflie2-1brushless/bl_front.png %}

#### Start up sequence

When the Crazyflie is powered on it will automatically go through a short
sequence of events to get ready for flight.

1. **Run self tests** - the Crazyflie checks that the hardware is OK
1. **Calibrate sensors** - the Crazyflie reads its sensors to get base values.
It must be *absolutely still* to do this, so it's best to put it on a level surface for a second.
1. **Ready to fly!**

#### Understanding LEDs

You also need to understand what the LEDs mean.

* **Power on and all is good:** The blue LEDs (2 and 3) are fully lit and the
front right LED (1) is blinking red twice every second (see the video in the [Power on!](#power-on-) section above.).
* **Power on and all is good but sensors are not yet calibrated:** The blue LEDs
(2 and 3) are fully lit and the front right LED (1) is blinking red with 2 seconds interval.
Put the Crazyflie on a level surface and keep it absolutely still to calibrate.
* **Radio connected:** The front left LED (4) is flickering in red and/or green.
* **Battery low:** The front right LED (1) is fully lit in red. It's time to
land and re-charge the battery.
* **Charging:** The back left blue LED (3) is blinking while the right back blue LED (2) is lit.
* **Boot loader mode:** The blue LEDs (2 and 3) at the back are blinking
approximately once every second.
* **Self test fail:** The right front LED (1) is repeatedly blinking five short
red pulses with a longer pause between groups.
{% endsi_step %}



{% si_intro Controlling the Crazyflie %}
You can fly the Crazyflie 2.1 Brushless together with a computer running Windows, MacOs or Linux.
The Crazyflie 2.1 Brushless is built to be flied using scripting or on board automomous navigation, however it is also possible to fly it usig our client and a gamepad.
{% endsi_intro %}

{% si_intro Scripted Flight Control; inst-lib %}
When flying using a script you also need a {% poplink crazyradio-2-0 %} or Crazyradio PA for communication.
To start of you need to install and familiarize yourself with our library [cflib](http://localhost/documentation/repository/crazyflie-lib-python/master/).
This software enables you to fly one or more quadcopters in predetermined way using python to control the quadcopter.
To get some inspiration on what can be done, please check out the [examples](https://github.com/bitcraze/crazyflie-lib-python/tree/master/examples).
{% endsi_intro %}


{% si_intro Manual Flight Control; inst-comp %}
You can use any game pad connected to your computer by cable or Bluethooth. To fly using the game pad you need to install our client.
{% endsi_intro %}

{% si_step Client installation ; config-client%}
There are a few options of how to run the PC client

{% tabgroup %}
{% tab Native install (recommended) %}
The supported way to install and run the client on a computer currently is to install
the Crazyflie client using the python package manager *pip*.

You can follow the prerequisite and instructions to install the latest release on the
[Client installation instruction page](/documentation/repository/crazyflie-clients-python/master/installation/install/).


When you have set up the client, insert the {% poplink crazyradio-2-0 %} or Crazyradio PA and your gamepad in
your USB-ports and start the client. Continue reading about how to [configure the client](#config-client)
{% endtab %}
{% tab Virtual Machine %}
We have set up a virtual machine (VM) designed to assist you in getting started with flight and development. The VM includes essential software for your needs, all pre-installed to simplify the setup process.

Running on a virtual machine allows for compatibility across various operating systems. However, please be aware that the VM may not have been regularly maintained, and there could be some issues present.

**Note**: Since the VM is an AMD64 install of Linux, it *does not work* on Apple-silicon Mac (M1/2/... processors).
On an apple silicon mac you need to install the tools natively.

{% si_intro Installing on VM; inst-virtualmachine %}
To help you get into the air as quickly as possible, the virtual machine (VM)
has all the software you need for flight and development already installed.
.
{% endsi_intro %}

{% si_step Setup virtual Machine; inst-virtualbox %}

Check-out the readme of the [bitcraze-VM repository](https://github.com/bitcraze/bitcraze-vm) for installation and setting-up instructions and tips.

{% endsi_step %}

{% si_step update source code; update-src %}
In the virtual machine double click the "update all projects" icon on the
desktop. This pulls down the latest source code from GitHub
for all projects.
{% img Update all projects icon; narrow; /images/getting-started/update-all-projects-icon.png; circle-border %}
{% endsi_step %}

{% si_step install hardware; install-hardware-vm %}
* Insert {% poplink crazyradio-2-0 %} or Crazyradio PA in a USB port.
* Insert game controller in a USB port.
{% endsi_step %}

{% si_step configure USB on the virtual machine; config-usb-vm %}
{% tabgroup %}
{% tab Windows %}
* Install the [Crazyradio Windows USB driver](/documentation/repository/crazyradio-firmware/master/building/usbwindows/).
* In the bottom right corner click the USB icon and choose “Bitcraze Crazyradio PA USB dongle”.
{% img USB settings; medium; /images/getting-started/SwPic5Final.png %}
* Now choose your game controller in the same list.
{% endtab %}
{% tab Linux %}
* In the bottom right corner click the USB icon and choose “Bitcraze Crazyradio PA USB dongle”.
{% img USB settings; medium; /images/getting-started/SwPic5Final.png %}
* Now choose your game controller in the same list.
{% endtab %}
{% tab OS X %}
* In the bottom right corner click the USB icon, then click “USB settings".
{% img USB settings; medium; /images/getting-started/SwPic2.1Final.png %}
* Click the USB filter "+" icon.
{% img USB settings; wide; /images/getting-started/SwPic3Final.png %}
* Choose your game controller from the list. Click OK.
{% img USB settings; wide; /images/getting-started/SwPic4Final.png %}
* Now click the USB icon again and choose the “Bitcraze Crazyradio PA USB dongle”.
{% img USB settings; medium; /images/getting-started/SwPic5Final.png %}
* Now choose your game controller in the same list.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}

{% si_step start the Crazyflie client; start-client-vm %}
Double click the “Crazyflie client” icon on the VM desktop
{% img Crazyflie client icon; narrow; /images/getting-started/cf-client-icon.png; circle-border %}

Continue reading about [configuring the client](#config-client)
{% endsi_step %}

{% endtab %}
{% endtabgroup %}
{% endsi_step %}

{% si_step configure your controller; config-controller %}
In the client, open the input device settings. Check if the correct device
mapping is chosen, otherwise pick your device type.
{% img Controller settings; wide; /images/getting-started/configure_your_controller.PNG %}

For more detailed information on input devices, see the [client user-guide](/documentation/repository/crazyflie-clients-python/master/userguides/inputdevices/).

{% endsi_step %}


{% si_step connect to the Crazyflie; connect-pc-client %}
* In the Crazyflie client click the __Scan__ button in top left corner. The radio settings for your Crazyflie is displayed in the drop-down list.
* Choose your Crazyflie from the drop-down list.

{% img Connect dialog; wide; /images/getting-started/connect_to_the_crazyflie.PNG %}
* Click the __Connect__ button.

Now that you have connected your Crazyflie to your client, telemetry data
is continuously sent from the copter to the client. When you move the
Crazyflie around you will see the flight data being updated in realtime, as
well as battery status and the link quality.
{% endsi_step %}

{% si_intro Update firmware in the Crazyflie; update-fw %}
To make sure that your Crazyflie has all the latest features you should always update the firmware to the newest version. To find out how you can check out the client user-guide [here](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/#firmware-upgrade).

{% endsi_intro %}

{% si_intro Flying; flying %}
Now it's time to do some flying, but first there are some basics you need to know about.
{% endsi_intro %}

{% si_step orientation; orientation %}
First of all, it is much easier to fly when the copter is pointing away from you.
The blue LEDs are on the back, so keep them pointing in your direction when
starting to fly.
{% endsi_step %}

{% si_step maneuvering a quadcopter; maneuvering %}
When flying a quadcopter there are four main dimensions of controls; roll, pitch, yaw and thrust.
{% img Axis; wide; /images/crazyflie2-1brushless/BL_roll_yaw.png %}

* **Roll -** is the rotation around a horizontal axis going through the quadcopter
from back to front. This literally rolls the Crazyflie and moves it left or right.
* **Pitch -** is the rotation around a horizontal axis going through the quadcopter
from left to right. This tilts the Crazyflie and moves it forwards or backwards.
* **Yaw -** is the rotation around a vertical axis. This rotates the quadcopter
left or right. Yaw is used when changing flying direction by pointing the front
of the Crazyflie in different directions.
* **Thrust -** adjusts the altitude, or height, of the Crazyflie.
{% endsi_step %}

{% si_step the ground effect; ground-effect %}
When the copter is flying close to the ground (less than a few decimeters
above the ground) it is effected by what is called the ground effect. The
feeling is that the air is slippery, almost as if it is gliding on ice.
To avoid this, particularly when learning to fly, use a lot of thrust just
when taking off and then ease off for level flight.
{% endsi_step %}

{% si_step charging the battery; charging %}
To charge the battery of the Crazyflie, just plug in a micro USB cable. Make
sure the Crazyflie is powered on. While the battery is charging, the back left
blue LED will blink. When the LED is fully lit the battery is charged.
{% endsi_step %}

{% si_step go fly! %}
Have fun!
{% endsi_step %}

{% si_intro Support %}
If anything is wrong with the Crazyflie after following this guide, make sure to checkout the {% id_link support-getting-help %} page.
{% endsi_intro %}
