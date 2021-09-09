---
layout: page-product
title: Prototyping deck
page_id: product-prototyping-deck
redirects:
  - /prototyping-deck/
---

{% datasheet_product_status prototyping_deck %}
{% buy_online https://store.bitcraze.io/collections/decks/products/prototyping-deck %}

{% product_img Prototyping deck; narrow;
/images/prototyping-deck/prototyping_deck_585px_side.JPG
%}

{% product_highlight
fa-wrench;
Add your own hardware;
Build your own expansion deck and add to your Crazyflie 2.X.
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Add a prototyping area to your Crazyflie 2.X and lift your electronics
into the air. Just solder directly on the expansion deck and plug it
into the expansion port. Maybe try to add a few LEDs or a new sensor to detect
properties of the world around the Crazyflie?

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section prototyping_deck; Features %}
{% datasheet_section prototyping_deck; Mechanical specifications %}
{% datasheet_section prototyping_deck; Electrical specification %}


{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/prototyping_deck/prototyping_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/prototyping_deck/prototyping-revb.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}


The {% poplink prototyping-deck %} allows electronic circuits to be attached on Crazyflie 2.0.

Both through holes and SMD components can be soldered to the deck. The shape of the pads makes it possible to solder SMD capacitor and resistor which saves space and weight.

The two pad rows that are closest to the expansion connector are connected to the connectors.

{% img Prototyping board; narrow; /images/prototyping-deck/prototype-board-connection.png %}

## Detection memory
If you want your prototype deck to be detected automatically by the Crazyflie, for example to activate your driver code when the deck is connected, you can solder a one-wire memory DS28E05 in the pads near P1 pin 10.

{% endrow_text %}
{% row_links %}
* [Deck Pin Allocation]({% id_url cf2_expansiondecks %}#deck-pin-allocation)
* [Expansion port pinout]({% id_url cf2_expansiondecks %}#expansion-port-pinout)
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}
The prototype deck is already a development oriented product, so check out the 'Usage' tab for more details!

{% endrow_text %}
{% row_links %}
#### Projects:
* [Crazycar](https://www.hackster.io/evoggy/crazycar-3c14b6)
* [Flying Traffic Light](https://www.hackster.io/evoggy/flying-traffic-light-8be87d)
* [Attaching FPV camera](https://www.hackster.io/fredg/crazyflie-2-0-fpv-setup-d2fc25)
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
- [Datasheet](/documentation/hardware/prototyping_deck/prototyping_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/prototyping_deck/prototyping-revb.pdf)

---

#### Tutorials

{% id_link getting-started-expansion-decks %}
