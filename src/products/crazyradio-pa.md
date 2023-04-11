---
layout: page-product
title: Crazyradio PA
page_id: product-crazyradio-pa
redirects:
  - /crazyradio-pa/
---

{% datasheet_product_status crazyradio_pa %}
{% buy_online https://store.bitcraze.io/collections/kits/products/crazyradio-pa %}

{% product_img Crazyradio PA; narrow; /images/crazyradio-pa/Radio-PA-585px.JPG %}
{% notice_info This product is being replaced with <a href="/products/crazyradio-2-0/">Crazyradio 2.0</a> %}
{% product_highlight fa-wifi; Connecting at a Distance; Long distance communication %}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Crazyradio PA is a long range open USB radio dongle based on the
nRF24LU1+ from Nordic Semiconductor. It features a 20dBm power
amplifier, LNA and comes pre-programmed with Crazyflie compatible
firmware. The power amplifier boosts the range, giving a range of up to
1km (under ideal conditions) together with the Crazyflie 2.X and up to 2km
Crazyradio PA to Crazyradio PA (under ideal conditions).

Since it's an open project with firmware written from scratch and
a Python API to control it, it's a great building block for systems
that require longer range than WiFi and doesn't have the same
requirements for bandwidth. The hardware comes shipped with the latest
firmware as well as a bootloader that enables firmware upgrades via USB
without any additional hardware needed. The Crazyflie PA is compatible
with the first generation of the Crazyflie, but will not give the same
range increase as with the Crazyflie 2.X.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section crazyradio_pa; Features %}
{% datasheet_section crazyradio_pa; Mechanical specifications %}
{% datasheet_section crazyradio_pa; Electrical specification %}
{% datasheet_section crazyradio_pa; Radio specification %}


{% endrow_text %}


{% row_links %}
- [Datasheet](/documentation/hardware/crazyradio_pa/crazyradio_pa-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyradio_pa/crazyradio-pa_rev.b.pdf)
{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}
Connect the Crazyradio PA to a USB port on your computer.

On Windows you have to install drivers, please see [Crazyradio Windows USB driver installation instructions](/documentation/repository/crazyradio-firmware/master/building/usbwindows/). For Linux, you will need to setup udev permissions, so for that the [linux udev crazyradio instructions](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/).

From there, you are able to install the [CFclient](/documentation/repository/crazyflie-clients-python/master/installation/install/) and communicate with the Crazyflie.
{% endrow_text %}
{% row_links %}
* [Windows driver instructions](/documentation/repository/crazyradio-firmware/master/building/usbwindows/)

* [Linux driver instructions](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/)

* [Client installation Instructions](/documentation/repository/crazyflie-clients-python/master/installation/install/)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}

{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}

{% row_text %}

The source code for the Crazyradio PA firmware can be found on [github](https://github.com/bitcraze/crazyradio-firmware)

{% endrow_text %}
{% row_links %}
- [Source code](https://github.com/bitcraze/crazyradio-firmware)
- [Documentation](/documentation/repository/crazyradio-firmware/master/)
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
- [Datasheet](/documentation/hardware/crazyradio_pa/crazyradio_pa-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyradio_pa/crazyradio-pa_rev.b.pdf)
