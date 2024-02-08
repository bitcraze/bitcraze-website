---
layout: page-product
title: Roadrunner
page_id: product-roadrunner
redirects:
  - /roadrunner/
  - /products/roadrunner/
---

{% datasheet_product_status roadrunner %}

{% product_img Roadrunner; narrow;
/images/roadrunner/roadrunner_585px.jpg
%}

{% product_highlight
fa-map-marker;
Robot positioning;
Enabling robotics and equipment to be integrated with the Loco positioning system
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Using the Roadrunner you can enable other robots and equipment to be integrated
with the Loco positioning system. The Roadrunner uses the same firmware-base
as the Crazyflie and will merge UWB measurements together with the IMU data to
get better positioning precision.

Using the Loco positioning system you will get the position directly in the
Roadrunner, but it's also possible to send it to a central point using a low
latency 2.4 GHz radio.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section roadrunner; Features %}
{% datasheet_section roadrunner; Mechanical specifications %}
{% datasheet_section roadrunner; Microcontroller specification %}
{% datasheet_section roadrunner; Sensor specification %}
{% datasheet_section roadrunner; Ranging specification %}
{% datasheet_section roadrunner; Radio specification %}

{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/roadrunner/roadrunner-datasheet.pdf)
- [Schematics](/documentation/hardware/roadrunner/roadrunner-revb.pdf)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Go to the [Loco positioning system tutorial]({% id_url getting-started-with-the-loco-positioning-system  %}) to set the loco positioning up. Afterwards, you can try out the [loco positioning based flight tutorial]({% id_url getting-started-with-assisted-flight-position-hold  %}). Also for more general information over how the loco positioning system fits in our eco system, go to {% id_link overview_positioning %}.

{% endrow_text %}
{% row_links %}
* {% id_link overview_positioning %}


#### Tutorials
* {% id_link getting-started-with-the-loco-positioning-system %}


{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

#### Implementation Firmware

All the Loco positioning is estimated onboard of the crazyflie. Go the the [technical documentation of the loco positioning system](/documentation/repository/lps-node-firmware/master/) of how it is implemented into the [Crazyflie Firmware](https://github.com/bitcraze/crazyflie-firmware) and the [Loco positioning node firmware](https://github.com/bitcraze/lps-node-firmware)

It is important to have a good feel for the [stabilizer module of the crazyflie](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/), in particular state estimation with the [Extended Kalman Filter](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/state_estimators/#extended-kalman-filter)

{% endrow_text %}
{% row_links %}

- [Technical details](/documentation/repository/lps-node-firmware/master/)
- [Stabilizer Module](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/)
- [Log variables Loco](/documentation/repository/crazyflie-firmware/master/api/logs/#loco)
- [Log variables Ranging](/documentation/repository/crazyflie-firmware/master/api/logs/#ranging)
- [Parameters](/documentation/repository/crazyflie-firmware/master/api/params/#loco)

#### Investigations
* {% id_link accuracy-loco %}
* {% id_link max-range-loco %}

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}



---

#### Resources

- {% id_link loco-pos-system-overview %}
- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- [Datasheet](/documentation/hardware/roadrunner/roadrunner-datasheet.pdf)
- [Schematics](/documentation/hardware/roadrunner/roadrunner-revb.pdf)
- [Store](https://store.bitcraze.io/collections/positioning/products/roadrunner)
