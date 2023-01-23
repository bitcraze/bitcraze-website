---
layout: page-product
title: Crazyradio 2.0
page_id: product-crazyradio-2-0
---

{% datasheet_product_status crazyradio_2_0 %}
{% buy_online https://store.bitcraze.io/collections/kits/products/crazyradio-2-0 %}

{% product_img Crazyradio 2.0; narrow; /images/crazyradio-2-0/Radio-2-0-585px.JPG %}

{% product_highlight fa-wifi; Connecting at a Distance; Long distance communication %}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Crazyradio 2.0 is a long range open USB radio dongle based on the
nRF24LU1+ from Nordic Semiconductor. It features a 20dBm power
amplifier, LNA and comes pre-programmed with Crazyflie compatible
firmware. The power amplifier boosts the range, giving a range of up to
1km (under ideal conditions) together with the Crazyflie 2.X and up to 2km
Crazyradio 2.0 to Crazyradio 2.0 (under ideal conditions).

Since it's an open project with firmware written from scratch and
a Python API to control it, it's a great building block for systems
that require longer range than WiFi and doesn't have the same
requirements for bandwidth. The hardware comes shipped with the latest
firmware as well as a bootloader that enables firmware upgrades via USB
without any additional hardware needed.

The Crazyradio 2.0 is compatible with Crazyflie 2.x products.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section crazyradio_2_0; Features %}
{% datasheet_section crazyradio_2_0; Mechanical specifications %}
{% datasheet_section crazyradio_2_0; Electrical specification %}
{% datasheet_section crazyradio_2_0; Radio specification %}


{% endrow_text %}


{% row_links %}
- [Datasheet](/documentation/hardware/crazyradio_2_0/crazyradio_2_0-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyradio_2_0/crazyradio-2-0_rev.a.pdf)
{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}
Connect the Crazyradio 2.0 to a USB port on your computer.

On Windows you have to install drivers, please see [Crazyradio Windows USB driver installation instructions](/documentation/repository/crazyradio2-firmware/master/building/usbwindows/). For Linux, you will need to setup udev permissions, so for that the [linux udev crazyradio instructions](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/).

From there, you are able to install the [CFclient](/documentation/repository/crazyflie-clients-python/master/installation/install/) and communicate with the Crazyflie.
{% endrow_text %}
{% row_links %}
* [Windows driver instructions](/documentation/repository/crazyradio2-firmware/master/building/usbwindows/)

* [Linux driver instructions](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/)

* [Client installation Instructions](/documentation/repository/crazyflie-clients-python/master/installation/install/)

{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}

{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}

{% row_text %}

The source code for the Crazyradio 2.0 firmware can be found on [github](/documentation/repository/crazyradio2-firmware/master/)

{% endrow_text %}
{% row_links %}
[Source code](/documentation/repository/crazyradio-firmware/master/)
{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}

{% endtabgroup %}
---

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- [Development](/documentation/repository/crazyradio-firmware/master/)
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- [Datasheet](/documentation/hardware/crazyradio_2_0/crazyradio_2_0-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyradio_2_0/crazyradio-2-0_rev.a.pdf)
