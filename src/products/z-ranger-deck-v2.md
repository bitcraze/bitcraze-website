---
layout: page-product
title: Z-ranger deck v2
page_id: product-z-ranger-deck-v2
redirects:
  - /z-ranger-deck-v2/
---

{% datasheet_product_status z_ranger_deck_2 %}
{% buy_online https://store.bitcraze.io/collections/decks/products/z-ranger-deck-v2 %}

{% product_img Z-ranger deck v2; narrow;
/images/z-ranger-deck-v2/z-ranger_v2_585px-1.jpg
%}

{% product_highlight
fa-arrows-v;
Laser ranging;
Adds the possibility to fly with precise height control.
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The {% poplink z-ranger-deck %} uses a laser sensor to measure the distance to the ground.
The deck enables the Crazyflie to automatically maintain a constant distance to the objects under it when flying in automatic mode. Over a floor it will stay on the
same height, but will follow the shape of a stair case up or down when going on
adventures.

The maximum range for the ranger is 4 meters.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section z_ranger_deck_2; Features %}
{% datasheet_section z_ranger_deck_2; Mechanical specifications %}
{% datasheet_section z_ranger_deck_2; Electrical specification %}
#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/z_ranger_deck_2/z_ranger_deck_2-datasheet.pdf)
- [Schematics](/documentation/hardware/z_ranger_deck_2/z-ranger_v2_reva.pdf)
- [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Follow the [zranger tutorial]({% id_url getting-started-z-ranger-deck %})
{% youtube 0CwcaiZ79JE; wide; 16by9 %}


{% endrow_text %}
{% row_links %}

* {% id_link getting-started-z-ranger-deck %}
* {% id_link getting-started-expansion-decks %}

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

#### Firmware implementation

The [Z-ranger's driver](https://github.com/bitcraze/crazyflie-firmware/blob/master/src/deck/drivers/src/zranger2.c) is currently implemented in the [crazyflie firmware](https://github.com/bitcraze/crazyflie-firmware).
Its measurement is mostly used for the [Complementary Filter for state estimation](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/state_estimators/#complementary-filter).

{% endrow_text %}
{% row_links %}

- [Logging variables](/documentation/repository/crazyflie-firmware/master/api/logs/#range)
- [Stabilizer module](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/)
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}


---

#### Resources

- {% id_link getting-started-start %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/z_ranger_deck_2/z_ranger_deck_2-datasheet.pdf)
- [Schematics](/documentation/hardware/z_ranger_deck_2/z-ranger_v2_reva.pdf)
