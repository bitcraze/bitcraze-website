---
layout: page-product
title: Breakout deck
page_id: product-breakout-deck
redirects:
  - /breakout-deck/
---

{% datasheet_product_status breakout_deck %}
{% buy_online https://store.bitcraze.io/collections/decks/products/breakout-deck %}

{% product_img Breakout deck; narrow;
/images/breakout-deck/breakout_deck_585px-1.JPG
%}

{% product_highlight
fa-share;
Development and test of hardware made simple;
Easily connect to the Crazyflie 2.X expansion port when developing new hardware.
%}


{% tabgroup %}
{% tab How it Works %}

{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}
Test and develop new hardware designs easily without soldering by using
the breakout expansion board. Just build the circuit on a breadboard
and attach the Crazyflie 2.X to it. The board has all the 20 expansion connector
pins available as well as a footprint where a 1-wire memory could be soldered
to make the board auto-detectable by the firmware.
{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}

{% tab Specifications %}
{% datasheet_section breakout_deck; Features %}
{% datasheet_section breakout_deck; Mechanical specifications %}
{% datasheet_section breakout_deck; Mechanical drawing %}
{% datasheet_section breakout_deck; Electrical specification %}

#### Compatibility
Works with the Crazyflie 2.X

{% row_icon_text_links Specifications; fa-list %}
{% row_text %}
{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}


{% tab Development %}

{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}
The deck is designed to be soldered to 100mil breadboard or prototyping board.
The aim is to ease prototyping by connecting breadboard circuits to Crazyflie 2.0 but
it can also be used to make a bigger system using Crazyflie 2.0 as a component.

The deck has all the 20 expansion connector points directly available with a 2.54 mm spacing (100 mil) to make it easy to connect
standard pin headers (not included). By mounting the deck under a Crazyflie and soldering pin headers downwards,
the Crazyflie can be mounted on a breadboard for easy hardware prototyping.

The breakout board is also very useful to measure signals, for example with an
oscilloscope.

{% endrow_text %}
{% row_links %}
* {% id_link getting-started-expansion-decks %}
* {% id_link cf2_expansiondecks %}
* [Datasheet](/documentation/hardware/breakout_deck/breakout_deck-datasheet.pdf)
* [Schematics](/documentation/hardware/breakout_deck/breakout-revc.pdf)
{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}

{% endtabgroup %}

---

{% youtube q5CcfNx1egs; medium; 16by9 %}

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/breakout_deck/breakout_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/breakout_deck/breakout-revc.pdf)
