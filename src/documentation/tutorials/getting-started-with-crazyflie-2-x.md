---
layout: page-tutorial
title: Getting started with the Crazyflie 2.0 or Crazyflie 2.1(+)
page_id: getting-started-crazyflie-2
redirects:
  - /getting-started-with-the-crazyflie-2-0/
---

{% si_part Welcome to the Crazyflie™ Ecosystem! %}
This getting started guide is split up into three parts. First we are going to assemble the Crazyflie, secondly we move on to setting up a gamepad and communication, and lastly we get up in the air and start flying. 
Let's get started! 

{% img Overview; wide; /images/getting-started/gs-2.1-overview.png %}
{% endsi_part %}

{% si_step Requirements %}
To fly with the Crazyflie you need to have a computer with a {% poplink crazyradio-2-0 %}, which is the recommended way, or a mobile device. To fly manually with your computer you also need a gamepad of your choice. 
{% endsi_step %}

{% si_step If you get stuck %}
Dont't worry! We have many ways to figure out what might be wrong. A good place to start is to look at the [Getting help](/support/getting-help/) page. Our [documentation](/documentation/system/) also provides more details than this guide.
On our [Github Discussions](https://discussions.bitcraze.io) you can look at discussions from our community or start your own to get help.
{% endsi_step %}

---

{% si_part 1. Assembly %}
Make sure to follow the instructions below for assembling your Crazyflie 2.1 or 2.1+.
{% endsi_part %}
{% si_step Unpacking the Crazyflie %}
The Crazyflie box contains the following items. Make sure that you
have all of them before you start assembling.

<table>
  <tr>
    <td width="120">
      <img src="/images/getting-started/bare-pcb.webp" alt="Crazyflie 2.x control board" width="120">
    </td>
    <td>
      Crazyflie 2.0 or 2.1 control board with all components mounted
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/props-47-17.webp" alt="Clockwise and counter clockwise propellers" width="120">
    </td>
    <td>
      5 x Clockwise rotation (CW) propellers (3 spare, marked as "5R" on package) <br>
      5 x Counter clockwise (CCW) propellers (3 spare, marked as "5L" on package)
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/motor-mounts-21.webp" alt="Motor mounts" width="120">
    </td>
    <td>
      6 x Motor mounts (2 spare)
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/250-lipo-battery.webp" alt="LiPo battery" width="120">
    </td>
    <td>
      1 x 250mAh LiPo battery
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/coreless-dc-motors.webp" alt="Coreless DC motors" width="120">
    </td>
    <td>
      5 x Coreless DC motors (1 spare)
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/connector-pins.webp" alt="Short and long expansion connector pins" width="120">
    </td>
    <td>
      2 x Short expansion connector pins (1×10, 2mm spacing, 8 or 9 mm long) <br>
      2 x Long expansion connector pins (1×10, 2mm spacing, 14 or 15 mm long)
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/battery-holder.webp" alt="Battery holder expansion board" width="120">
    </td>
    <td>
      1 x Battery holder expansion board
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/foam-pad.webp" alt="Foam pad" width="120">
    </td>
    <td>
      1 x Foam pad
    </td>
  </tr>
  <tr>
    <td width="120">
      <img src="/images/getting-started/micro-usb-cable.webp" alt="Micro-USB cable" width="120">
    </td>
    <td>
      1 x USB cable
    </td>
  </tr>
</table>


{% endsi_step %}

{% si_step Getting to know your Crazyflie %}
First of all, lets look at what is front and back before starting. This is a good reference point while assembling the Crazyflie, later when flying, as well as in the future when mounting expansion decks. The small "bump" (the antenna) is on the front of the Crazyflie. On the top you can also see that each arm has an LED. Here you can also see where the power button and M1, M2, M3 and M4 are.
{% img Crazyflie board from the top; medium; /images/getting-started/get-to-know-21.png %}
{% endsi_step %}

{% si_intro Testing; test %}
The Crazyflie is tested extensively when produced, but to make sure
nothing has happened during shipping or storage you should run the tests before
starting the assembly. 
{% endsi_intro %}

{% si_step Self-test %}
Before you start assembling anything, run the power on self-test by
connecting the Crazyflie to a USB power source (either
computer or charger). Note that it’s
important to lay the Crazyflie on a flat surface during the test and away from strong
magnetic sources. The LEDs M1 and M4
will indicate the result of the test. If the M4 LED blinks GREEN five times
fast, then the test has passed.

{% tutorialVideo /videos/self_test_pass.mp4 %}
{% endsi_step %}

{% si_step Self-test fails %}
If the self-test fails, then the M1 LED blinks 5 times fast RED, then pauses
and does it again. In case of failure, go to our [Support Discussions](https://discussions.bitcraze.io) to get help.

{% tutorialVideo /videos/self_test_fails.mp4 %}
{% endsi_step %}



{% si_intro Assembling; assembling %}
Make sure to follow the instructions below for assembling your Crazyflie<sup>®</sup>.
{% endsi_intro %}

{% si_step Twisting the wires %}
Start by twisting the wires of the four motors. This will reduce electronic
noise and make the wires fit better in the motor mount “hooks”.

{% tutorialVideo /videos/twisting_the_wires.mp4 %}

{% endsi_step %}

{% si_step Insert the motors into the mounts%}
Push the four motors into the motor mounts. You will need some force to
insert them. If it is difficult doing it as in the video, try putting the
motor can towards a table edge and press on the mount. However, don’t press
on the motor axis while inserting them as it might damage the motor. The
motor should be inserted all the way to the stop in the mount.

{% tutorialVideo /videos/mount_the_motors.mp4 %}

{% endsi_step %}

{% si_step Attach the twisted wire %}
Attach the twisted wire into the two small “hooks” that are underneath the
motor mount.

{% tutorialVideo /videos/attach_the_twisted wire.mp4 %}

{% endsi_step %}

{% si_step Mount the motors%}
Insert the motor mounts on the Crazyflie wings. They are press fit and
might need a small amount of force. Make sure they go all the way to the
stop. It’s not important which motor you put where. After it’s been
inserted, connect the motor connectors to the Crazyflie.
{% tutorialVideo /videos/attach-motor-mount.mp4 %}
{% endsi_step %}

{% si_step Attach the propellers; props %}
Now it’s time to attach the propellers.

**Before attaching:** 

There are two kinds of propellers, the clock wise (CW) and counter clock wise (CCW) propellers, each kind has their own bag in the box:
* Clock wise (CW): The packaging for the propellers are marked "5R" for right/CW. The propellers are marked "47-17R" for CW on the propeller itself.
* Counter clock wise (CCW): The packaging for the propellers are marked "5L" for left/CCW. The propellers are marked "47-17" for CCW on the propeller itself.

**Attaching:**
* Make sure that the correct side is facing up, the top side should be convex (the text on the propeller should be up).
* The arrow on the arm of the Crazyflie indicates what rotation direction the propeller should have.
* In the video below we are attaching the CCW propellers for the Crazyflie 2.1+.

{% tutorialVideo /videos/attach-props-21.mp4 %}

Here’s a detailed view of where to attach CW and CCW propellers:
{% img Crazyflie propeller mounting; medium; /images/getting-started/21-prop-placement.png %}

{% endsi_step %}


{% si_step Attach the foam pad %}
The foam pad should be attached to the Crazyflie between the
expansion connector pins. This will create friction, keep the battery from
slipping out and also protect the electronics.
{% tutorialVideo /videos/attach_the_rubber_pad.mp4 %}
{% endsi_step %}

{% si_step Attach expansion connector pins %}
There are two types of pins in the box, long and short ones. Find the
long ones and insert them into the expansion connector from below.
{% tutorialVideo /videos/attach-pins-21.mp4 %}
{% endsi_step %}

{% si_step Attach the battery %}
Place the battery between the pins and insert the battery holder board onto the pins. Watch out for the
pins that can be a bit sharp when inserting it. Have the side of the battery holder with the text facing up. The friction should hold
the battery in place so tighten it until it does.

Now connect the battery
and you are finished with the assembly. The battery wires can preferably be
bent and placed underneath the PCB to be out of the way.
{% tutorialVideo /videos/attach_the_battery.mp4 %}
{% endsi_step %}

{% si_step Power on! %}
The assembly is finished, now it’s time to power it on! While powering on, keep the Crazyflie still on a flat surface to let it complete the [start up sequence](#start-up). The power button is placed on the front right of the Crazyflie, right next to the M1 LED. Note that the power button is a push button, not a sliding button.
{% tutorialVideo /videos/power_on.mp4 %}
{% endsi_step %}

{% si_step Start up sequence ; start-up %}
When the Crazyflie is powered on it will automatically go through a short
sequence of events to get ready for flight.

1. **Run self tests** - the Crazyflie checks that the hardware is OK. During the power-on self-test all the propellers will spin in sequence. Make sure they all spin, if they don’t then check the motor connections.
1. **Calibrate sensors** - the Crazyflie reads its sensors to get base values.
It must be *absolutely still* to do this, so it's best to put it on a level surface for a second.
1. **Ready to fly!**
{% endsi_step %}

{% si_step Understanding the LEDs; understanding-leds %}
To understand and diagnose the Crazyflie you need to understand what the LEDs mean. Here is a short explanation of each state of the LEDs:

* **Power on and All is Good:** The blue back LEDs (M2 and M3) are fully lit and the
front right LED (M1) is blinking red twice every second (see the video in the [Power on!](#power-on-) section above.).
* **Power on and All is Good, but Sensors are Not Yet Calibrated:** The blue LEDs
(M2 and M3) are fully lit and the front right LED (M1) is blinking red with 2 seconds interval.
Put the Crazyflie on a level surface and keep it absolutely still to calibrate.
* **Radio connected:** The front left LED (M4) is flickering in red and/or green. The flickering of red and green means that the Crazyflie is communicating, with green indicating it is receiving data and red indicating it is sending data.
* **Battery low:** The front right LED (M1) is fully lit in red. It's time to
land and re-charge the battery.
* **Charging:** The back left blue LED (M3) is blinking while the right back blue LED (2) is lit.
* **Boot loader mode:** The blue LEDs (M2 and M3) at the back are blinking
approximately once every second.
* **Self test fail:** The right front LED (M1) is repeatedly blinking five short
red pulses with a longer pause between groups.
{% endsi_step %}

---

{% si_part 2. Setting up communication %}
Now that you have assembled the Crazyflie, its time to get ready to control it. To control the Crazyflie, we need to be able to communicate with it to give commands on how to fly and receive information back from the copter. 
You can fly the Crazyflie either from a mobile device or a computer. Choose your preferred way to control the Crazyflie below and follow the instructions to set up communication. 
{% endsi_part %}

{% si_step Choose how to control the Crazyflie: %}
{% tabgroup %}

{% tab Computer (recommended) %}
Using your computer to control the Crazyflie will give you the most options
and best control. This requires:
* A {% poplink crazyradio-2-0 %}.
* If you want to fly the Crazyflie manually you need a gamepad of your choice connected to your computer alongside the Crazyradio.

{% si_intro Installing on a computer; inst-comp %}
{% endsi_intro %}

{% si_step Setting up the radio %}
The first step to getting your computer ready for communication is to set up your {% poplink crazyradio-2-0 %}. Follow [this Getting Started tutorial](/documentation/tutorials/getting-started-with-crazyradio-2-0/) to set it up. 
{% endsi_step %}

{% si_step Installing the Client %}
There are different ways to run the Client, for example uvx, pip or through the client repository. You can see what will suit you best and follow the prerequisites and instructions to install the latest release on the
[Client installation instruction page]({% repo_doc_url crazyflie-clients-python; installation/install %}).


When you have set up the client, insert the {% poplink crazyradio-2-0 %} and your gamepad in
your USB-ports and start the client.

{% endsi_step %}

{% si_intro Using the client; config-client %}
In this section we will look at the main features for getting started with the client. More details and features can be found in the [Client user-guide]({% repo_doc_url crazyflie-clients-python; userguides/inputdevices %}).
{% endsi_intro %}

{% si_step Connect to the Crazyflie; connect-pc-client %}
* In the Crazyflie client enter the correct __Address__. The default one for a new Crazyflie out of the box is 0xE7E7E7E7E7. To figure out or change the __Address__ of your Crazyflie, you can follow the [radio address configuration]({% repo_doc_url crazyflie-clients-python; userguides/userguide_client %}#radio-address-configuration) guide.
* Then, with your Crazyflie powered on and radio connected, click the __Scan__ button in top left corner. The radio settings for your Crazyflie are displayed in the drop-down list.
* Choose your Crazyflie from the drop-down list.
* Click the __Connect__ button.

{% img Connect dialog; wide; /images/getting-started/connect_to_the_crazyflie.PNG %}

Now that you have connected your Crazyflie to your client, telemetry data
is continuously sent from the copter to the client. When you move the
Crazyflie around you will see the flight data being updated in realtime, as
well as battery status and the link quality.
{% endsi_step %}

{% si_step Update firmware in the Crazyflie; update-fw %}
To make sure that your Crazyflie has all the latest features you should always update the firmware to the newest version. To learn how, check out the client user-guide [here]({% repo_doc_url crazyflie-clients-python; userguides/userguide_client %}#firmware-upgrade).
{% endsi_step %}

{% si_intro Manual Flight Control %}
You can use any gamepad connected to your computer by cable or Bluetooth. The game pad has to be connected before you start the client to be recognized by the client.
{% endsi_intro %}

{% si_step Configure your gamepad; config-controller %}
After you have connected your gamepad, open the input device settings in the client. Check if the correct device
mapping is chosen, otherwise pick your device type.
{% img Gamepad settings; wide; /images/getting-started/gamepad-configuration.png %}

For more detailed information on input devices, see the [Client user-guide]({% repo_doc_url crazyflie-clients-python; userguides/inputdevices %}). In this guide it is also shown how to configure your own device mapping to perfectly suit your gamepad.

{% endsi_step %}

{% si_intro Scripted Flight Control; inst-lib %}
When flying using a script you need a {% poplink crazyradio-2-0 %} for communication.
To start, you need to install and familiarize yourself with our library [cflib](https://github.com/bitcraze/crazyflie-lib-python).
This software enables you to fly one or more quadcopters in predetermined way using Python to control the quadcopter. Get started with Python scripting and the Crazyflie Python library though our [Step-by-step user guides]({% repo_doc_url crazyflie-lib-python; user-guides %}). To get some inspiration on what can be done, please check out the [examples](https://github.com/bitcraze/crazyflie-lib-python/tree/master/examples) and the [demos repository](https://github.com/bitcraze/crazyflie-demos).
{% endsi_intro %}

{% endtab %}

{% tab Mobile device %}
Using a mobile device is the fastest way to get into the air, but it is designed mostly for testing purposes.
If you want to get the most out of your Crazyflie, flying using a PC and Crazyradio is what we recommend.

It is easy to install the app and connect to the Crazyflie and get it flying. However, it might demand some extra piloting skills.
All you need is an Android or iOS device that supports Bluetooth Low Energy (BLE).


{% si_step Install the app %}
The Crazyflie client is available for Android and iOS.

[For Android, from Google Play](https://play.google.com/store/apps/details?id=se.bitcraze.crazyfliecontrol2)

[For iPhone, from Apple iTunes](https://itunes.apple.com/us/app/crazyflie-2.0/id946151480?mt=8)

{% img Crazyflie app; narrow; /images/getting-started/cf-mobile-app.png %}
{% endsi_step %}

{% si_step Connect to the Crazyflie %}
Start the app and click the connect button. The buttons have different
appearances in the Android and iOS apps, you can see them below.

> Note: If you are using Android and your Crazyflie is behaving strange (like dropping from the air or is reacting slowly), turn on the "Bluetooth latency workaround" setting.

{% img Connect buttons; medium; /images/getting-started/connect-icons.png %}
{% endsi_step %}

{% endtab %}
{% endtabgroup %}
{% endsi_step %}

---

{% si_part 3. Flying; flying %}
Now it's time to do some flying, but first there are some basics you need to know about.
{% endsi_part %}

{% si_step Orientation; orientation %}
First of all, the easiest way to fly is when the copter is pointing away from you.
The blue LEDs are on the back, so keep them pointing in your direction when
starting to fly.
{% endsi_step %}

{% si_step Maneuvering a quadcopter; maneuvering %}
When flying a quadcopter there are four main dimensions of controls; roll, pitch, yaw and thrust.
{% img Axis; wide; /images/getting-started/AxisImage.png %}

* **Roll -** is the rotation around a horizontal axis going through the quadcopter
from back to front. This rolls the Crazyflie and moves it left or right.
* **Pitch -** is the rotation around a horizontal axis going through the quadcopter
from left to right. This tilts the Crazyflie and moves it forwards or backwards.
* **Yaw -** is the rotation around a vertical axis. This rotates the quadcopter
left or right. Yaw is used when changing flying direction by pointing the front
of the Crazyflie in different directions.
* **Thrust -** adjusts the altitude, or height, of the Crazyflie.

Lear more about the coordinate system of a Crazyflie [here](/documentation/system/platform/cf2-coordinate-system/).
{% endsi_step %}

{% si_step Gamepad / The mobile app controls %}
The controls on the gamepad or mobile app have multiple different input mappings to select from. A common mapping to use in a lot of flying robotics applications is mapping 3, and it is mapped the following way:
{% img Control mapping; medium; /images/getting-started/controller.png %}
To change between mappings and gamepad types as well as creating your own custom mapping check out the [documentation for input devices]({% repo_doc_url crazyflie-clients-python; userguides/userguide_client %}#input-devices) or the settings menu in the mobile app.
{% endsi_step %}

{% si_step Normal flight %}
When thrusting without touching any other controls, this is what it might
look like. The Crazyflie usually drifts in some direction if not
compensated for, this is completely normal.
{% tutorialVideo /videos/normal_flight.mp4 %}
{% endsi_step %}

{% si_step The Ground effect; ground-effect %}
When the copter is flying close to the ground (less than a few decimeters
above the ground) it is effected by what is called the Ground effect. The
feeling is that the air is slippery, almost as if it is gliding on ice.
To avoid this, particularly when learning to fly, use a lot of thrust just
when taking off and then ease off for level flight.
{% endsi_step %}

{% si_step If the Crazyflie is unbalanced; unbalanced %}
Firstly, if your Crazyflies propellers spin but it does not properly take off, the most common reason is that the propellers are not placed correctly. Look at the image under [Attach the propellers](#props) and make sure to place the correct propeller or the correct arm.

If your Crazyflie drifts a lot when taking off, there are a few things you should check.

* Make sure the battery is centered. If it has slipped
too far to either side, the Crazyflie might have a hard time
compensating for it.
* Check that the propellers are spinning freely. Blow lightly on them, one by one,
and verify that they turn. A common problem is that hair or other debris is jammed between the
propeller and motor. If this is the problem. just pull the propeller off from the
motor, remove the hair and reinstall the propeller.
* Check that the propellers are balanced, {% id_link balancing-propellers %}
{% endsi_step %}

{% si_step Charging the battery; charging %}
To charge the battery of the Crazyflie, plug in a micro USB cable with the battery attached. Make
sure the Crazyflie is powered on. While the battery is charging, the back left
blue LED will blink. When the LED is fully lit the battery is charged.
{% endsi_step %}

{% si_step Go fly! %}
Have fun!
{% endsi_step %}

{% si_step Next steps %}
Now that you are in the air you can explore more opportunities with our [Expansion Decks](https://store.bitcraze.io/collections/decks), and if you already have a deck you want to attach you can check out the [Getting started with expansion decks tutorial](/documentation/tutorials/getting-started-with-expansion-decks/). 

Another step is trying autonomous flight with Python scripting and the Crazyflie Python library though our [Step-by-step user guides]({% repo_doc_url crazyflie-lib-python; user-guides %}).
{% endsi_step %}