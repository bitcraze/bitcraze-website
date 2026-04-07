---
layout: page-product
title: Multi-ranger deck
page_id: product-multi-ranger-deck
redirects:
  - /multi-ranger-deck/
---

{% datasheet_product_status multi_ranger_deck %}
{% buy_online https://store.bitcraze.io/products/multi-ranger-deck %}

{% product_img Multi-ranger deck; narrow;
/images/multi-ranger/multi-ranger_deck_585px-1.jpg
%}

{% product_highlight
fa-arrows;
Laser ranging;
Measure distances to objects all round
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The {% poplink multi-ranger-deck%} gives the Crazyflie 2.x the ability to detect objects around it. This is done by measuring the distance to objects in the following 5 directions: front/back/left/right/up with mm precision up to 4 meters.


The Multi-ranger can also be used as a starting point for experimenting with mapping and exploration.

**Note:** The deck provides sensor data only. No collision avoidance or obstacle reaction is enabled by default. For examples of how to use the sensor data, see the [Crazyflie Python library examples for the Multi-ranger](https://github.com/bitcraze/crazyflie-lib-python/tree/master/examples/multiranger).


{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section multi_ranger_deck; Features %}
{% datasheet_section multi_ranger_deck; Mechanical specifications %}
{% datasheet_section multi_ranger_deck; Electrical specification %}
#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/multi_ranger_deck/multi_ranger_deck-datasheet.pdf)
- [Schematics, deck](/documentation/hardware/multi_ranger_deck/multi-ranger-reve.pdf)
- [Schematics, daughter board](/documentation/hardware/multi_ranger_deck/multi-ranger-daughter-board-reve.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Follow the [STEM bundle tutorial]({% id_url getting-started-stem-ranging-bundle %}) to see how to work with the {% poplink multi-ranger-deck%} and {% poplink flow-deck %}.

{% youtube pIBM6RPggcs; wide; 16by9 %}

{% endrow_text %}
{% row_links %}

#### Tutorials

 - {% id_link getting-started-stem-ranging-bundle %}
 - {% id_link getting-started-expansion-decks %}

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

#### Firmware implementation
The Multi-ranger deck is being handled in [its driver in the crazyflie firmware](https://github.com/bitcraze/crazyflie-firmware/blob/master/src/deck/drivers/src/multiranger.c).

#### Examples
Check out the multi-ranger based python demos in the [Crazyflie Python Library](https://github.com/bitcraze/crazyflie-lib-python/tree/master/) example folder.

Here is the video of the point cloud example

{% youtube -P_GfMqpRFw; wide; 16by9 %}


And here from the push demo (also featured in Usage tab)
{% youtube tQ9ygfUFOz8; wide; 16by9 %}

{% endrow_text %}
{% row_links %}

- [Logging variables](/documentation/repository/crazyflie-firmware/master/api/logs/#range)

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
- [Datasheet](/documentation/hardware/multi_ranger_deck/multi_ranger_deck-datasheet.pdf)
- [Schematics, deck](/documentation/hardware/multi_ranger_deck/multi-ranger-reve.pdf)
- [Schematics, daughter board](/documentation/hardware/multi_ranger_deck/multi-ranger-daughter-board-reve.pdf)

---
