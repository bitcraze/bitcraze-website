---
layout: page-left-menu
title: Getting started with the Crazyradio 2.0
page_id: getting-started-crazyradio-2-0
---

{% si_intro Assembling the Crazyradio 2.0 %}
The first thing to do is to unpack and assemble the hardware.
{% endsi_intro %}

{% si_step Package contents %}
* 1 x {% poplink crazyradio-2-0 %} USB dongle
* 1 x Antenna
{% endsi_step %}

{% si_step Mount the antenna %}
Screw the antenna on to the connector on the USB dongle.

{% tutorialVideo /videos/mount_the_antenna.mp4 %}
{% endsi_step %}



{% si_intro Install drivers %}
Depending on which operating system you use, you may need to install drivers or configure USB permissions before
the Crazyradio 2.0 can communicate with your computer. macOS users can skip this section.
{% endsi_intro %}

{% si_step Install and configure %}
{% tabgroup %}
{% tab Windows %}
Please see the [Windows driver installation instructions](/documentation/repository/crazyradio-firmware/master/building/usbwindows/)
{% endtab %}
{% tab Linux %}
On Linux, the Crazyradio is easily recognized, but you have to set up udev permissions. Look at the
[usb permission instructions](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/) to setup udev on Linux.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}



{% si_intro Enter bootloader mode %}
To flash new firmware to the {% poplink crazyradio-2-0 %}, it must first be set to the bootloader mode.
{% endsi_intro %}

{% si_step Hold button %}
Press and hold the button.
{% img The Button on the Crazyradio; medium; /images/getting-started/crazyradio-button.png %}
{% endsi_step %}

{% si_step Insert into USB port %}
Insert the USB dongle into a USB port while holding the button.
{% endsi_step %}

{% si_step Red LED %}
Verify that the LED is pulsing with a red light. This indicates that the {% poplink crazyradio-2-0 %} is in bootloader mode.
{% tutorialVideo /videos/plug_radio.mp4 %}
{% endsi_step %}



{% si_intro Flash new firmware %}
When in bootloader mode, the {% poplink crazyradio-2-0 %} will appear as a USB drive in your operating system. Firmware
is installed by copying a `.uf2` firmware file to the drive.
{% endsi_intro %}

{% si_step Find the drive %}
Open a file browser and find the drive named **Crazyradio2**.
{% img The Drive in the file browser; medium; /images/getting-started/drive-in-file-browser.png %}
{% endsi_step %}

{% si_step Download firmware %}
Go to the [release page on github](https://github.com/bitcraze/crazyradio2-firmware/releases/latest).
Download the .uf2 file by clicking it.
{% endsi_step %}

{% si_step Install the firmware %}
In your file browser, drag and drop the downloaded file to the **Crazyradio2** drive. The installation completes in less than a second.

The **Crazyradio2** will automatically restart with the new firmware, exiting bootloader mode. This will make the **Crazyradio2** USB drive disappear.

**You may see an error message** from your operating system saying the copy did not complete. This does not necessarily mean that the installation failed, only that the radio restarted before the transfer could fully finish. Do the check in the next step to make sure that the installation was successful.
{% img Error message after successful firmware installation; medium; /images/getting-started/error-message-cr.png %}
{% endsi_step %}

{% si_step Check the installation %}
To confirm the firmware is running, the LED will briefly flash white on startup. 

If you missed it, unplug and re-plug the {% poplink crazyradio-2-0 %} to see the white flash again.
{% tutorialVideo /videos/radio_flashing_white.mp4 %}
{% endsi_step %}

{% si_step Done! %}
The {% poplink crazyradio-2-0 %} is now ready to use, and is
compatible with all the products in the Crazyflie ecosystem.
{% endsi_step %}