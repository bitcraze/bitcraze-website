---
layout: page-left-menu
title: Getting started with the Crazyflie 2.0
permalink: /getting-started-with-the-crazyflie-2-0/
page_id: getting-started-crazyflie-2
---

{% gs_intro Unpacking the Crazyflie %}
The Crazyflie 2.0 packet contains the following items, make sure that you
have all of them before you start assembling.
{% endgs_intro %}

{% gs_step package contents %}
* 1 x Crazyflie 2.0 control board with all components mounted
* 5 x CW propellers
* 5 x CCW propellers
* 6 x Motor mounts
* 1 x LiPo battery (240mAh)
* 5 x Coreless DC motors
* 2 x Short expansion connector pins (1×10, 2mm spacing, 8 mm long)
* 2 x Long expansion connector pins (1×10, 2mm spacing, 14 mm long)
* 1 x Battery holder expansion board
{% endgs_step %}



{% gs_intro Testing %}
The Crazyflie 2.0 is tested extensively in the production, but to make sure 
nothing has happened during shipping/storage you should run the tests before 
starting the assembly. Power on the Crazyflie 2.0 using a USB source (either 
computer or charger) and check the results of the test below. Note that it’s 
important to keep the Crazyflie 2.0 still during the test and away from strong 
magnetic sources.
{% endgs_intro %}

{% gs_step self-test %}
Before you start assembling anything, run the power on self-test by
connecting the Crazyflie 2.0 to a uUSB power source. The LEDs M1 and M4
will indicate the result of the test. If the M4 LED blinks GREEN five times
fast, then the test has passed.    
{% vine Or3Evd9neVX %}    
{% endgs_step %}
    
{% gs_step self-test fails %}
If the self-test fails, then the M1 LED blink 5 times fast RED, then pauses
and does it again. Go to our support forum to get help.
{% vine Or39eVaZxr1 %}    
{% endgs_step %}



{% gs_intro Assembling %}
Assembling your Crazyflie 2.0 will probably take less than 10 minutes, but
there are a few pitfalls. So make sure to follow the instructions below!
{% endgs_intro %}

{% gs_step twisting the wires %}
Start by twisting the wires of the four motors. This will reduce electronic
noise an make the wires fit better in the motor mount “hooks”.
{% vine Or3VHHFmg7Q %}    
{% endgs_step %}

{% gs_step mount the motors %}
Push the four motors into the motor mounts. You will need some force to
insert them. If it is difficult doing it as in the video try putting the
motor can towards an table edge and press on the mount, however don’t press
on the motor axis while inserting them as it might damage the motor.The
motor should be inserted all the way to the stop in the mount.
{% vine Or3YpMHuXmd %}    
{% endgs_step %}

{% gs_step attach the twisted wire %}
Attach the twisted wire into the two small “hooks” that are underneath the
motor mount.
{% vine Or3LaJrMMbj %}    
{% endgs_step %}

{% gs_step insert the motor %}
Insert the motor mounts on the Crazyflie 2.0 wings. They are press fit and
might need a small amount of force. Make sure they go all the way to the
stop. It’s not important which motor you put where. After it’s been
inserted, connect the motor connectors to the Crazyflie 2.0.
{% vine Or3l3lYJaFb %}    
{% endgs_step %}

{% gs_step checking the propellers %}
Before attaching the propellers check if they are well balanced. Do this by
placing a propeller on a needle. Hold the propeller in a horizontal
position and then release it, if it tilts over it is unbalanced. Balance
the propeller by attaching a small piece of tape on the side that is
pointing upwards.    
{% vine O6J2bgHdTvJ %}    
{% endgs_step %}

{% gs_step balancing the propellers %}
If the propeller is unbalanced attach tape to the convex side of the
propeller as shown in the video. The amount of tape that should be used
varies and you might need some tries to find the correct amount.
{% vine O6J2LUeF65W %}    
{% endgs_step %}

{% gs_step add more tape if needed %}
After you have placed the first bit of tape try shaking the propellers a
bit, if the propeller isn't tilting over anymore it's balanced.
{% vine O6JPPxqVZOe %}    
{% endgs_step %}

{% gs_step attach the propellers %}
Now it’s time to attach the propellers. Note: There are two kinds of
propellers, the clock wise (CW) and counter clock wise (CCW) propellers,
each kind has their own bag in the box. Here we are attaching the CW propellers.
{% vine OrLaQ7TElb2 %}    
Here’s a detailed view of where to attach CW and CCW propellers.
{% img Crazyflie 2.0 propeller mounting; medium; /images/cf2_props.png %}
{% endgs_step %}

{% gs_step attach the rubber pad %}
The rubber pad should be attached to the Crazyflie 2.0 between the
expansion headers. This will create friction and keep the battery from
slipping out, as well as protecting the electronics.
{% vine OrL7u7aKw5w %}    
{% endgs_step %}

{% gs_step attach headers %}
There are two types of headers in the box, long and short ones. Find the
two short ones and insert them into the expansion connector.
{% vine OrL7TxphWBW %}    
{% endgs_step %}

{% gs_step attach the battery %}
Place the battery between the headers inserted into the expansion connector
and insert the battery holder board onto the headers. Watch out for the
pins that can be a bit sharp when inserting it. The friction should hold
the battery in place so tighten it until it does.</p><p>Now connect the battery
and you are finished with the assembly. The battery wires can preferably be
bent and placed underneath the PCB to be out of the way.
{% vine OrLAtap1mzr %}    
{% endgs_step %}

{% gs_step power on! %}
The assembly is finished, now it’s time to power it on! Note that the power
button is a push button, not a sliding button. During the power-on
self-test all the propellers will spin in sequence. Make sure they all
spin, if they don’t then check the motor connections.
{% vine OgzwVPTpnHl %}    
{% endgs_step %}


<!--Hardware tutorial ends her-->


{% gs_intro Controlling the Crazyflie 2.0 %}
You can fly the Crazyflie 2.0 either from a smartphone or a computer. Using a
smartphone is the fastest way to get into the air, but it might require
som more pilot skills compared to the computer option.

Continue reading for instructions on how to install the app on your phone or
<a href="#inst-comp">jump to the "Installing on a computer" section</a> if
you want to use your computer.
{% endgs_intro %}




{% gs_intro Installing on a smartphone %}
It is really easy to install the app and connect to the Crazyflie 2.0.
All you need is an Android or iOS phone that supports Bluetooth low energy.
{% endgs_intro %}

{% gs_step install the app %}
The Crazyflie client is avalable for Android and iOS.

[For Android, from Google Play](https://play.google.com/store/apps/details?id=se.bitcraze.crazyfliecontrol2)

[For iPhone, from Apple iTunes](https://itunes.apple.com/us/app/crazyflie-2.0/id946151480?mt=8)

{% img Crazyflie 2.0 app; narrow; /images/cf-mobile-app.png %}
{% endgs_step %}

{% gs_step connect to the Crazyflie 2.0 %}
Start the app and click the connect button. The buttons have different
appearances in the Android and iOS apps, you can see them bellow.
{% img Connect buttons; medium; /images/connect-icons.png %}
Continue reading the <a href="#flying">Flying section.</a>
{% endgs_step %}




{% gs_intro Installing on a computer; inst-comp %}
When using a computer to fly the Crazyflie, you also need a standard
gamecontroller ([more information](//wiki.bitcraze.io/projects:crazyflie:pc_utils:inputdevices))
for manoeuvering and a Crazyradio PA for communication.

We have created a virtual machine (VM) to help you to quickly get into
the air. The VM has all software you need for flight and development
pre installed.
{% endgs_intro %}

{% gs_step install Virtualbox %}
Before downloading the virtual machine you must have VirtualBox or some
other virtualization application installed on your computer. Virtualbox is
a cross-platform virtualization application that imports and runs our
preconfigured virtual machine.

[Download and install Oracle VirtualBox.](https://www.virtualbox.org/)
{% endgs_step %}

{% gs_step download the Bitcraze virtual machine %}
Ones you have installed Virtualbox you can download the virtual machine
using one of these links.
<ul class="plm-download-list">
    <li>Bitcraze VM 0.6</li>
    <li>
        <a href="http://files.bitcraze.se/dl/Bitcraze_VM_0.6.ova.torrent"
           rel="nofollow">torrent</a>
    </li>
    <li>
        <a href="http://files.bitcraze.se/dl/Bitcraze_VM_0.6.ova"
           rel="nofollow">direct download 1</a>
    </li>
    <li>
        <a href="https://mega.co.nz/#!3YhyFBAI!WO2yKBE-x_9PesM37k79sGdo_1-LVpbHTyexGmYnm3A"
           rel="nofollow">direct download 2</a>
    </li>
</ul>
{% endgs_step %}

{% gs_step installing the virtual machine %}
After downloading the virtual machine, double click it. VirtualBox is now
going to start, and ask you to import the virtual machine. Click import.
{% endgs_step %}

{% gs_step start the virtual machine %}
Now it&#8217;s time to start the bitcraze virtual machine. in VirtualBox,
highlight the Bitcraze VM and start it.
{% endgs_step %}

{% gs_step update source code %}
In the virtual machine double click the "update all projects" icon on the
desktop. This pulls down the latest source code from github
for all projects.
{% img Update all projects icon; narrow; /images/update-all-projects-icon.png %}
{% endgs_step %}

{% gs_step download latest firmware %}
* Open the web browser in the virtual machine, go to [https://github.com/bitcraze/crazyflie-release/releases](https://github.com/bitcraze/crazyflie-release/releases)
* download the zip file named crazyflie-xxx.zip from the latest relase.
* close the browser when the download is finished.
{% endgs_step %}

{% gs_step install hardware %}
* Insert CrazyRadio PA into a usb port.
* Insert game controller to a usb port.
{% endgs_step %}

{% gs_step configure USB on the virtual machine %}
<div>
    <ul class="nav nav-tabs" role="tablist">
         <li role="presentation" class="active">
            <a href="#conf-usb-wu" role="tab" data-toggle="tab">Windows/Linux</a>
        </li>
        <li role="presentation" >
            <a href="#conf-usb-osx" role="tab" data-toggle="tab">OS X</a>
        </li>

    </ul>
    <div class="tab-content">

        <div role="tabpanel" class="tab-pane fade in active" id="conf-usb-wu">
            <ul>
                <li>In the bottom right corner click the usb icon and
                    choose “Bitcraze Crazyradio PA USB dongle”.
                </li>
{% img USB settings; medium; /images/SwPic5Final.png %}      
                <li>Now choose your game controller in
                    the same list.
                </li>
            </ul>
        </div>
                <div role="tabpanel" class="tab-pane fade"
             id="conf-usb-osx">
            <ul>
                <li>In the bottom right corner click the usb icon, then click
                    “USB settings".
                </li>
{% img USB settings; medium; /images/SwPic2.1Final.png %}      
                <li>Click the USB filter "+" icon.
                </li>
{% img USB settings; wide; /images/SwPic3Final.png %}      
                <li>Choose your game controller from the list. Click OK.
                </li>
{% img USB settings; wide; /images/SwPic4Final.png %}      
                <li>Now click the USB icon again and choose the “Bitcraze Crazyradio PA USB dongle”.
                </li>
{% img USB settings; medium; /images/SwPic5Final.png %}      
                <li>Now choose your game controller in the same list.
                </li>
            </ul>
        </div>
    </div>
</div>
{% endgs_step %}

{% gs_step start the Crazyflie client %}
Double click the “Crazyflie client” icon on the VM desktop
{% img Crazyflie client icon; narrow; /images/SwPic6Final.png %}
{% endgs_step %}

{% gs_step configure your controller %}
In the client, open the input device settings. Check if the correct device
mapping is chosen, otherwise pick your device type.
{% img Controller settings; wide; /images/SwPic7Final.png %}
{% endgs_step %}

{% gs_step update firmware in the Crazyflie %}
* Turn the Crazyflie off.
* Start the Crazyflie in bootloader mode by pressing the power button for 3 seconds. Both the blue LEDs will blink.
* Go back to the Crazyflie client in the VM and click the Crazyflie -> Bootloader menu. 
{% img Update firmware dialog; wide; /images/SwPic8Final.png %}
* Click the “Initiate bootloader cold boot” button. After a few seconds the status should read “Connected to bootloader”.
* Click the “Browse” button and go to home/bitcraze/Downloads and select the file you downloaded earlier.
* Click the “Program” button. The progress bar will go from 0% to 100% twice, as 
the firmware for the two processors is uploaded to the Crazyflie.
* Click the “Restart in firmware mode” button. The Crazyflie reboots
and is not updated.
* Close the bootloader window.
{% endgs_step %}

{% gs_step connect to the Crazyflie %}
* In the Crazyflie client, click the “Connect” button in top left corner.
* In the connect dialog, click the “Scan” button. The radio settings for you Crazyflie is displayed.
{% img Connect dialog; wide; /images/SwPic9Final.png %}
* Click the “Connect” button.

Now that you have connected your Crazyflie to your client, telemetry data
is continuously sent from the copter to the client. When you move the
Crazyflie around you will see the flight data being updated in realtime, as
well as battery status and the link quality.
{% endgs_step %}



{% gs_intro Flying; flying %}
Now it's time to do some flying, but first there are som basics you need to know about.
{% endgs_intro %}

{% gs_step getting to know your Crazyflie %}
First of all, you need to understand where the front is, it is much easier
to fly with the copter pointing away from you. The blue LEDs are in the
back end, so keep them pointing in your direction when starting to fly.
{% img Crazyflie board from the top; medium; /images/frontCF.png %}
You also need to understand what the LEDs mean.

* **Power on and all is good:** The blue LEDs (2 and 3) are fully lit and the 
front right LED (1) is blinking red twice every second.
* **Radio connected:** The front left LED (4) is flickering in read and/or green.
* **Battery low:** The front right LED (1) is fully lit in red. It's time to 
land and re-charge the battery.
* **Boot loader mode:** The blue LEDs (2 and 3) at the back are blinking 
approximately once every second.
* **Self test fail:** The right front LED (1) is repeatedly blinking five short 
red pulses with a longer pause between groups.
{% endgs_step %}

{% gs_step maneuvering a quadcopter %}
When flying a quadcopter there are four main dimensions of controls; roll, pitch, yaw and thrust.
{% img Axis; wide; /images/AxisImage.png %}

* **Roll -** is the rotation around a horizontal axis going through the quadcopter 
from back to front. This literally rolls the Crazyflie and moves it left or right.
* **Pitch -** is the rotation around a horizontal axis going through the quadcopter 
from left to right. This tilts the Crazyflie and moves it forwards or backwards.
* **Yaw -** is the rotation around a vertical axis. This rotates the quadcopter 
left or right. Yaw is used when changing flying direction by pionting the front 
of the Crazyflie in different directions.
* **Thrust -** adjusts the altitude, or height, of the Crazyflie.
{% endgs_step %}

{% gs_step the mobile app / gamecontroller %}
The controlls on the gamepad or mobile app have the following mapping:
{% img Control mapping; medium; /images/controller.png %}
{% endgs_step %}

{% gs_step normal flight %}
When thrusting without touching any other controls, this is what it might
look like. The Crazyflie usually drifts in some direction if not
compensated for, that is completely normal.
{% vine imF9eEIxUiK %}    
{% endgs_step %}

{% gs_step the ground effect %}
When the copter is flying close to the ground (less than a few decimeters
above the ground) it is effected by what is called the ground effect. The
feeling is that the air is slippery, almost as if it is gliding on ice.
To avoid this, particularly when learning to fly, use a lot of thrust just
when taking off and then ease off for level flight.
{% endgs_step %}

{% gs_step if the Crazyflie is unbalanced %}
If your Crazyflie drifts a lot when taking off, there are two things you should check.
    
* Make sure the battery is centered. If it has slipped
too far to either side, the Crazyflie might have a hard time
compensating for it.
* Check that the propelles are spinning freely. Blow lightly on them, one by one, 
and verify that they turn. A a common problem is that hair is jammed between the 
propeller and motor. If this is the problem. just pull the propeller off from the
motor, remove the hair and reinstall the propeller.
{% endgs_step %}

{% gs_step charging the battery %}
To charge the battery of the Crazyflie 2.0, just plug in a micro USB cable. Make 
sure the Crazyflie is powered on. While the battery is charging, the back left 
blue LED will blink. When the LED is fully lit the battery is charged.
{% endgs_step %}

{% gs_step go fly! %}
Have fun!
{% endgs_step %}
