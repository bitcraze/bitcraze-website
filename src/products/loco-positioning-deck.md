---
layout: page-product
title: Loco Positioning deck
page_id: product-loco-pos-deck
redirects:
  - /loco-pos-deck/
---
{% datasheet_product_status loco_deck  %}


{% buy_online https://store.bitcraze.io/collections/positioning/products/loco-positioning-deck %}


{% product_img Loco Positioning deck; narrow; /images/loco-pos-deck/locoPositioning_deck_585px_side.JPG %}


{% product_highlight
fa-map-marker;
Absolute position;
Let your Crazyflie 2.X know where it is using the Loco Positioning expansion deck
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The {% poplink loco-positioning-deck %} is a Tag in a Loco Positioning system and measures
the distances to Anchors. The distances are used to estimate the
absolute position of the Crazyflie 2.X in the room, which can be used for
autonomous flight. The position is calculated on-board of the Crazyflie and there
is no need for an external computer for position estimation.

[Read more about the Loco Positioning system](/products/loco-positioning-system/)

This product is intended to be used together with
[Loco Positioning Nodes](/products/loco-positioning-node/) and can not be used standalone.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section loco_deck; Features %}
{% datasheet_section loco_deck; Mechanical specifications %}
{% datasheet_section loco_deck; Electrical specification %}
#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/loco_deck/loco_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/loco_deck/loco_deck_revd.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

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
* {% id_link getting-started-with-assisted-flight-position-hold %}
* {% id_link getting-started-expansion-decks %}

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
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/loco_deck/loco_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/loco_deck/loco_deck_revd.pdf)

