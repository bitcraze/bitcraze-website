---
layout: page-product
title: Color LED Deck
page_id: product-color-led-deck
redirects:
  - /color-led-deck/
---

{% datasheet_product_status color_led_deck_bottom %}
{% buy_online_top https://store.bitcraze.io/products/color-led-deck?variant=58838312616285 %} 
<br><br><br>
{% buy_online_bottom https://store.bitcraze.io/collections/decks/products/color-led-deck-copy?variant=62615266722141 %}

{% product_img Color LED deck; medium;
/images/color-led-deck/Color-LED-top-and-bottom.jpg
%}

{% product_highlight
fas fa-sun;
Powerful illumination;
Light up your flights with vivid, customizable effects using the Crazyflie Color LED deck.
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Add vibrant illumination and visual feedback to your flights with the Crazyflie Color LED Deck. Equipped with one powerful WRGB LED, it allows you to create bright, full-color lighting effects or status indicators directly from your Crazyflie firmware. Available in top- and bottom-mounted versions, the Color LED Deck is visible from the sides and perfect for experimentation, signaling, or simply lighting up your drone in style.

Follow the {% id_link getting-started-color-led-deck %} user guide to set up and test your Color LED deck. 

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

#### Features
* One highly efficient high powered WRGB LED for maximum brightness
* DC/DC driving circuitry for improved efficiency and consistent performance
* A light diffuser for smooth, even illumination and wide visibility
* Temperature protection
* Automatic board detection
* Compatible with the Crazyflie firmware to create custom patterns

#### Mechanical specifications
##### Bottom-mounted version
{% datasheet_section color_led_deck_bottom; Mechanical specifications; no-title %}

##### Top-mounted version
{% datasheet_section color_led_deck_top; Mechanical specifications; no-title %}

{% datasheet_section color_led_deck_bottom; Electrical specification %}

#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_text %}
{% row_links %}

- {% poplink color-led-deck-datasheet; Datasheet %}
- {% poplink color-led-deck-schematics; Schematics %}
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

The different LED colors can selected from [CFclient's Color LED tab](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/colorled_tab/).

Once you have selected the right color, go ahead and fly!

{% demoVideo /videos/color_led_demo.mp4 %}



{% endrow_text %}
{% row_links %}

#### Documentation:
- [CFclient's Color LED tab](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/colorled_tab/)

#### Tutorials:
* {% id_link getting-started-color-led-deck %}
* {% id_link getting-started-expansion-decks %}


{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

#### Firmware implementation

All the Color LED deck's effects are implemented in the [color LED deck driver](https://github.com/bitcraze/crazyflie-firmware/blob/master/src/deck/drivers/src/color_led_deck.c).


{% endrow_text %}
{% row_links %}

* {% poplink color-led-deck-logging; Logging Variables %}
* {% poplink color-led-deck-parameters; Parameters %}

{% endrow_links %}


{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}


---

#### Resources

- {% id_link getting-started-color-led-deck %}
- {% id_link getting-started-start %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- {% poplink color-led-deck-datasheet; Datasheet %}
- {% poplink color-led-deck-schematics; Schematics %}