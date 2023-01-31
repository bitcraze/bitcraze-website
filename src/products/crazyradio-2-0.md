---
layout: page-product
title: Crazyradio 2.0
page_id: product-crazyradio-2-0
---

{% datasheet_product_status crazyradio_2_0 %}
{% comment %} TODO {% buy_online https://store.bitcraze.io/products/crazyradio-2-0 %}{% endcomment %}

{% product_img Crazyradio 2.0; narrow; /images/crazyradio2-0/CR 2.0-dongle- 585px.jpg %}

{% product_highlight fa-wifi; Wireless connectivity; Control your robots remotely %}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

**This product is under development and will soon be available!**

Crazyradio 2.0 is a long range open USB radio dongle based on the nRF52840 from Nordic Semiconductor, featuring a
20dBm power amplifier and LNA.

The Crazyradio 2.0 is not only for usage together with the Crazyflie family of devices, since
it's an open project with open firmware and a Python API, it's a great
building block for systems that require more predictable latency compared to WiFi and doesn't have the same
requirements for bandwidth. The hardware comes with a
bootloader that enables firmware upgrades via USB without any additional hardware needed.

The Crazyradio 2.0 is compatible with the Crazyflie eco system.

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
Connect the Crazyradio 2.0 to a USB port on your computer.

More instructions will be available here soon
{% endrow_text %}
{% row_links %}

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
