---
layout: page-left-menu
title: Getting started with the Crazyradio 2.0
page_id: getting-started-crazyradio-2-0
---

{% si_intro Unpacking the Crazyradio 2.0 %}
The first thing to do is to assemble the hardware.
{% endsi_intro %}

{% si_step package contents %}
* 1 x {% poplink crazyradio-2-0 %} USB dongle
* 1 x Antenna
{% endsi_step %}

{% si_step mount the antenna %}
Screw the antenna on to the connector on the USB dongle.
{% endsi_step %}



{% si_intro Enter bootloader mode %}
To flash new firmware to the {% poplink crazyradio-2-0 %}, it must first be set to the bootloader mode.
{% endsi_intro %}

{% si_step hold button %}
Press and hold the button.
{% endsi_step %}

{% si_step insert into USB port %}
Insert the USB dongle into a USB port while holding the button.
{% endsi_step %}

{% si_step red led %}
Verify that the LED is pulsating with a red light, this indicates that the {% poplink crazyradio-2-0 %} is in bootloader mode.
{% endsi_step %}



{% si_intro Flash new firmware %}
When in bootloader mode, the {% poplink crazyradio-2-0 %} will appear as a USB drive in your operating system. Firmware
is installed by copying a `.uf2` firmware file to the drive.
{% endsi_intro %}

{% si_step find the drive %}
Open a file browser and find the drive named **Crazyradio2**.
{% endsi_step %}

{% si_step download firmware %}
Go to the [release page on github](https://github.com/bitcraze/crazyradio2-firmware/releases/latest).
Download the file named **crazyradio2-CRPA-emulation-[version].uf2** by clicking it.
{% endsi_step %}

{% si_step install the firmware %}
In your file browser, drag and drop the downloaded file to the **Crazyradio2** drive.
{% endsi_step %}

{% si_step check the installation %}
The installation takes less than a second and when done, the {% poplink crazyradio-2-0 %} will restart running the new
firmware. Since it is no longer in bootloader mode, the USB drive will no longer be available.

When the Crayradio PA emulation firmware starts up, the LED will light up briefly in white. If you missed it when flashing,
unplug and re-plug the {% poplink crazyradio-2-0 %} to restart it.
{% endsi_step %}

{% si_step done! %}
The {% poplink crazyradio-2-0 %} is now ready to use and it will behave like a {% id_link product-crazyradio-pa %}, which
means it will be compatible with all the products in the Crazyflie ecosystem.
{% endsi_step %}

{% si_intro Install drivers %}
Depending on which operating system you use, you will have to install drivers or do some configuration to communicate
with the Crazyradio 2.0.
{% endsi_intro %}

{% si_step install and configure %}
{% tabgroup %}
{% tab Windows %}
Please see the [Windows driver installation instructions](/documentation/repository/crazyradio-firmware/master/building/usbwindows/)
{% endtab %}
{% tab Linux %}
On linux, the Crazyradio is easily recognized, but you have to setup UDEVpermissions. Look at the
[usb permission instructions](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/) to setup udev on linux.
{% endtab %}
{% endtabgroup %}
{% endsi_step %}
