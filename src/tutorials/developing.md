---
layout: page-left-menu
title: Getting started with development
permalink: /getting-started-with-development/
page_id: getting-started-development
---

{% gs_intro Programming the Crazyflie %}
In this tutorial we show the steps needed to change the software running in the
Crazyflie, often called firmware. We will show how to modify the source code , 
how to build it and finaly download and flash it to your Crazyflie.
These are the necessary steps to write your own code and change the behaviour
of your Crazyflie.

This tutorial is based on the virtual machine where all the tools you need are 
installed, configured and set up to make this really easy.

We assume that you have basic knowledge of the C-programming language.
{% endgs_intro %}

{% gs_step preparations %}
For this tutorial you need:

* A Crazyflie
* A Crazyradio PA
* A computer with the Virtual Machine (VM) installed. 

For details on how to install the VM and Crazyradio see  
[Getting started with the Crazyflie 2.0](/getting-started-with-the-crazyflie-2-0/#inst-comp).
{% endgs_step %}

{% gs_step start the VM %}
Fire up the virtual machine to get started. It comes with all
tools you need pre-installed and configured to make programming simple.

From this point on in the tutorial, all steps refer to actions in the 
virtual machine.
{% endgs_step %}

{% gs_step update source code %}
Double click the "update all projects" icon on the desktop. This pulls down the 
latest source code from GitHub for all projects.
{% img Update all projects icon; narrow; /images/getting-started/update-all-projects-icon.png; circle-border %}
{% endgs_step %}


{% gs_intro Modify the source code %}
We will start out by modifying the source code. The update of the code is 
minimalistic, we will change the color of the front right LED from red to green. 
{% endgs_intro %}

{% gs_step start the editor %}
The pre-installed IDE (Integrated Development Environment) is [Eclipse](https://eclipse.org/ide/).
Double click the "Eclipse" icon on the desctop to start it.
{% img Eclipse icon; narrow; /images/getting-started/eclipse-icon.png; circle-border %}
{% endgs_step %}

{% gs_step open the file %}
On the left side you find some projects in the "Project explorer" window, 
expand the "crazyflie-firmware" project.
Navigate to `drivers/interface/led.h` and double click to open it.

TODO image
{% endgs_step %}

{% gs_step change the code %}
Find the line

```
#define SYS_LED          LED_RED_R
```

and change it to 

```
#define SYS_LED          LED_GREEN_R
```

{% endgs_step %}

{% gs_step save %}
Save the file through the menu or by pressing CRTL + S
{% endgs_step %}


{% gs_intro Build the source code %}
Now it's time to build the source code into binary files that can be 
downloaded to the Crazyflie.
{% endgs_intro %}

{% gs_step start the build %}
Locate the "Make target" window on the left side. Expand "crazyflie-firmware"
and double click "Make DEBUG"

TODO image

The compilation result should be displayed in the "console" tab under the editor
window.

TODO image
{% endgs_step %}

{% gs_intro Flash the Crazyflie %}
Now we have the binary files and it is time to download them to the Crazyflie
and save them in the flash memory, often called flashing. Our new modified 
version of the firmware will replace what ever version you currently have 
installed. If you want to go back to the official firmware just re-flash the 
Crazyflie with an [official release](https://github.com/bitcraze/crazyflie-firmware/releases).
{% endgs_intro %}

{% gs_step prepare the Crazyflie %}
Turn your Crazyflie 2.0 off.

Start it in bootloader mode by pressing the power button for 3 
seconds. Both the blue LEDs will blink.
{% endgs_step %}

{% gs_step flashing %}
In the "Make target" window double click "Flash using radio".

Printouts in the "Consolose" window shows the progress.

TODO image
{% endgs_step %}

{% gs_step That's it! %}
The front right LED of your Crazyflie should now be green instead of the normal
red. 

TODO image

Congratulations to your first Crazyflie hack!
{% endgs_step %}
