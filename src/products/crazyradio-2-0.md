---
layout: page-product
title: Crazyradio 2.0
page_id: product-crazyradio-2-0
---

{% datasheet_product_status crazyradio_2_0 %}
{% buy_online https://store.bitcraze.io/products/crazyradio-2-0 %}

{% product_img Crazyradio 2.0; narrow; /images/crazyradio2-0/CR 2.0-dongle- 585px.jpg %}

{% product_highlight fa-wifi; Wireless connectivity; Control your robots remotely %}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Crazyradio 2.0 is a long range open USB radio dongle based on the nRF52840 from Nordic Semiconductor, featuring a
20dBm power amplifier and LNA.

The Crazyradio 2.0 is not only for usage together with the Crazyflie family of devices, since
it's an open project with open firmware and a Python API, it's a great
building block for systems that require more predictable latency compared to WiFi and doesn't have the same
requirements for bandwidth. The hardware comes with a
bootloader that enables firmware upgrades via USB without any additional hardware needed.

The Crazyradio 2.0 is compatible with the Crazyflie eco system.

Depending on the installed firmware, the Crazyradio 2.0 can run in two different modes:
* Crazyradio PA emulation - it behaves like a {% id_link product-crazyradio-pa %}. This is the firmware that is initially available.
* Crazyradio 2.0 - a new set of protocols and capabilities that will improve the communication in the ecosystem. This is work in progress and will evolve over time.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}


{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}
Specifications will be available here soon

{% datasheet_section crazyradio_2_0; Features %}
{% datasheet_section crazyradio_2_0; Mechanical specifications %}
{% datasheet_section crazyradio_2_0; Electrical specification %}
{% datasheet_section crazyradio_2_0; Radio specification %}

{% endrow_text %}

{% row_links %}
- [Datasheet](/documentation/hardware/crazyradio_2_0/crazyradio_2_0-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyradio_2_0/crazyradio2-reve-schematic.pdf)
{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}


{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}
To get started with your Crazyradio 2.0, please see the {% id_link getting-started-crazyradio-2-0 %} tutorial.

#### Firmware flavors

There are two flavors of the firmware: **Crazyradio PA emulation firmware** and **Crazyradio 2.0 firmware**

The **Crazyradio PA emulation firmware**, makes the Crazyradio 2.0 behave like a {% id_link product-crazyradio-pa %}. The
{% id_link getting-started-crazyradio-2-0 %} tutorial shows the steps to install the firmware and drivers. From there,
you are able to install the [CFclient](/documentation/repository/crazyflie-clients-python/master/installation/install/)
and communicate with the Crazyflie.

The **Crazyradio 2.0 firmware** is under development and more instructions will be added here later.

#### General usage

Connect the Crazyradio 2.0 to a USB port on your computer.

#### Flashing firmware

Enter bootloader mode by holding the button while connecting the Crazyradio 2.0 to a USB port. Install firmware by
copying a `.uf2` file to the USB drive.

{% endrow_text %}
{% row_links %}
* {% id_link getting-started-crazyradio-2-0 %}

* [Windows driver instructions](/documentation/repository/crazyradio-firmware/master/building/usbwindows/)

* [Linux driver instructions](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/)

* [Client installation Instructions](/documentation/repository/crazyflie-clients-python/master/installation/install/)

* [Releases](https://github.com/bitcraze/crazyradio2-firmware/releases)
{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}


{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}

{% row_text %}

The source code for the Crazyradio 2.0 firmware can be found on [github](https://github.com/bitcraze/crazyradio2-firmware)

{% endrow_text %}
{% row_links %}
- [Source code](https://github.com/bitcraze/crazyradio2-firmware)
- [Documentation](/documentation/repository/crazyradio2-firmware/main/)
{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}

{% endtabgroup %}
---

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- [Development](/documentation/repository/crazyradio2-firmware/main/)
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- [Datasheet](/documentation/hardware/crazyradio_2_0/crazyradio_2_0-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyradio_2_0/crazyradio2-reve-schematic.pdf)
