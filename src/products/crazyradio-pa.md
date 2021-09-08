---
layout: page-product
title: Crazyradio PA
page_id: product-crazyradio-pa
redirects:
  - /crazyradio-pa/
---

{% buy_online https://store.bitcraze.io/collections/kits/products/crazyradio-pa %}

{% product_img Crazyradio PA; narrow;
/images/crazyradio-pa/Radio-PA-585px.JPG
%}

{% product_highlight
fa-wifi;
The longer the merrier;
Range of up to 1km
%}

{% product_highlight
fa-unlock;
Open project;
The Crazyradio PA is not only for the Crazyflie 2.X.
%}

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
{% datasheet_section crazyradio_pa; Mechanical drawing %}
{% datasheet_section crazyradio_pa; Package contents %}
{% datasheet_section crazyradio_pa; Electrical specification %}
{% datasheet_section crazyradio_pa; Radio specification %}
{% datasheet_section crazyradio_pa; Hardware revisions %}

{% endrow_text %}


{% row_links %}
- [Datasheet](/documentation/hardware/crazyradio_pa/crazyradio_pa-datasheet.pdf)
- [Schematics](/documentation/hardware/crazyradio_pa/crazyradio-pa_rev.b.pdf)
{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}

{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}

{% row_text %}

### Firmware
- [Development](/documentation/repository/crazyradio-firmware/master/)


### Projects
{% hackster chathuranga-liyanage/beginner-s-guide-to-autonomous-quadcopters-9b5382 %}
{% hackster krichardsson/light-paint-with-a-drone-d050af %}
{% hackster ataffanel/fixing-crazyradio-usb-bootloader-with-a-raspberry-pi-08796b %}
{% hackster ataffanel/sniffing-crazyflie-s-radio-with-hackrf-blue-4d77df %}
{% hackster ataffanel/crazyfblimp-6a081b %}
{% hackster evoggy/crazycar-3c14b6 %}
{% hackster evoggy/flying-traffic-light-8be87d %}
{% hackster chromebookbob/long-exposure-light-painting-2c4106 %}
{% hackster fredg/crazyflie-2-0-fpv-setup-d2fc25 %}

{% endrow_text %}

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

---
