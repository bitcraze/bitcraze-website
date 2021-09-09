---
layout: page-product
title: Flow deck v2
page_id: product-flow-deck-v2
redirects:
  - /flow-deck-v2/
---

{% datasheet_product_status flow_deck_2 %}
{% buy_online https://store.bitcraze.io/collections/decks/products/flow-deck-v2 %}

{% product_img Flow deck; narrow;
/images/flow_deck_v2/flow_deck_v2_585px.jpg
%}


{% product_highlight
fa fa-arrows;
Optical navigation;
Enable positioning in the air with optical motion detection.
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The {% poplink flow-deck %} gives the Crazyflie 2.X the ability to understand when it's moving in any direction.
The VL53L1x ToF sensor measures the distance to the ground with high precision and the PMW3901 optical flow sensor measures movements in relation to the ground.
This creates a flying 3D robot that can be pre-programmed to fly distances in any direction or act as an aid for beginners where it creates a very stable flying platform.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section flow_deck_2; Features %}
{% datasheet_section flow_deck_2; Mechanical specifications %}
{% datasheet_section flow_deck_2; Electrical specification %}

#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_text %}
{% row_links %}

* [Datasheet](/documentation/hardware/flow_deck_2/flow_deck_2-datasheet.pdf)
* [Schematics](/documentation/hardware/flow_deck_2/flow-deck-v2-reva.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)


{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Go to the [getting started tutorial of the flowdeck]({% id_url getting-started-flow-deck %}).
{% youtube 90Eho7ocZfg; wide; 16by9 %}


{% endrow_text %}
{% row_links %}

* {% id_link getting-started-flow-deck %}
* {% id_link getting-started-expansion-decks %}

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

#### Firmware intergration

The flowdeck provides optical flow and height measurements which are fused in the [Extended Kalman Filter](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/state_estimators/#extended-kalman-filter) of the [Crazyflie Firmware](https://github.com/bitcraze/crazyflie-firmware).

#### Hardware Hacks

We did a light painting with the flowdeck together the {% poplink led-ring-deck %}. Check the project on [hackster.io](https://www.hackster.io/krichardsson/light-paint-with-a-drone-d050af)


{% endrow_text %}
{% row_links %}

* [Extended Kalman Filter](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/state_estimators/#extended-kalman-filter)
* {% id_link development-overview %}
* [Parameters](/documentation/repository/crazyflie-firmware/master/api/params/#motion)
* [Logging variables](/documentation/repository/crazyflie-firmware/master/api/logs/#motion)

* [Light painting with flowdeck](https://www.hackster.io/krichardsson/light-paint-with-a-drone-d050af)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}


---

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/flow_deck_2/flow_deck_2-datasheet.pdf)
- [Schematics](/documentation/hardware/flow_deck_2/flow-deck-v2-reva.pdf)

---

#### Tutorials

{% id_link getting-started-flow-deck %}
