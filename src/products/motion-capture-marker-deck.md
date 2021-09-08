---
layout: page-product
title: Motion capture marker deck
page_id: product-motion-capture-marker-deck
redirects:
  - /motion-capture-marker-deck/
---

{% buy_online https://store.bitcraze.io/products/motion-capture-marker-deck %}

{% product_img Prototyping deck; medium;
/images/motion-capture-marker-deck/mocap_marker_deck_585px.jpg
%}

{% product_highlight
fa-video-camera;
Add motion capture markers;
Add reflective markers with ease
%}

{% tabgroup %}
{% tab How it Works %}

{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The {% poplink motion-capture-marker-deck %} makes it easy to attach reflective markers to a
Crazyflie for tracking in a motion capture system. The markers are tracked by
cameras in the motion capture system and the system uses the information to calculate
the current position of the Crazyflie. The position can be used for precise
measurements or can be fed back to the Crazyflie for autonomous flight.

This deck is developed in collaboration with [Qualisys](https://www.qualisys.com)

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{%endrow_icon_text_links%}

{% endtab %}

{% tab Specifications %}

{% row_icon_text_links Specifications; fa-list %}

{% row_text %}
{% datasheet_section passive_marker_deck; Features %}
{% datasheet_section passive_marker_deck; Mechanical specifications %}
{% datasheet_section passive_marker_deck; Mechanical drawing %}
{% endrow_text %}

{% row_links %}
* [Datasheet](/documentation/hardware/passive_marker_deck/passive_marker_deck-datasheet.pdf)
* [Schematics](/documentation/hardware/passive_marker_deck/passive-marker-deck-revc.pdf)
{% endrow_links %}

{%endrow_icon_text_links%}

{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Designed to be used with the [Reflective marker kit 6.5mm](https://store.bitcraze.io/collections/positioning/products/reflective-markers). Can be used with any similar markers that can be attached through the M3 mount holes.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{%endrow_icon_text_links%}

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
- [Datasheet](/documentation/hardware/passive_marker_deck/passive_marker_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/passive_marker_deck/passive-marker-deck-revc.pdf)

---

#### Tutorials

{% id_link getting-started-expansion-decks %}
