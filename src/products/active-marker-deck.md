---
layout: page-product
title: Active marker deck
page_id: product-active-marker-deck
redirects:
  - /active-marker-deck/
---

{% datasheet_product_status active_marker_deck %}
{% buy_online https://store.bitcraze.io/products/active-marker-deck %}

{% product_img Active marker deck; narrow;
/images/active-marker-deck/active-maker-front-585px.jpg
%}

{% product_highlight
fas fa-map-marker;
Long distance and solid tracking;
Compatible with Qualisys tracking systems and QTM
%}

{% tabgroup %}
{% tab How it Works %}

{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The {% poplink active-marker-deck %} together with Qualisys QTM gives you long distance and solid tracking. Thanks to the 4 high-power LEDs you can set up to 4
different IDs giving you the possibility to uniqly identify a large number of rigid bodies, without the need of many reflective markers.

The hardware comes pre-programmed for Qualisys tracking systems, but can be re-programmed for other applications.
{% endrow_text %}


{%endrow_icon_text_links%}
{% endtab %}


{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}


{% datasheet_section active_marker_deck; Features %}
{% datasheet_section active_marker_deck; Mechanical specifications %}
{% datasheet_section active_marker_deck; Electrical specification %}
{% endrow_text %}
{% row_links %}
* [Datasheet](/documentation/hardware/active_marker_deck/active_marker_deck-datasheet.pdf)
* [Schematics](/documentation/hardware/active_marker_deck/active-marker-deck_revd.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{%endrow_icon_text_links%}
{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

The Active Marker deck is mainly designed for [Qualisys mocap systems](https://www.qualisys.com/) and supports Qualisys Active markers, but it can also be used with other systems in a simplified mode. The deck has 4 arms with one IR LED on the tip of each arm and a light sensor in the center of the deck.

The deck is configured using the [parameter sub system](/documentation/repository/crazyflie-firmware/master/userguides/logparam/), for details on which parameter to use, see below.

## Modes

The deck mode is set with the ```activeMarker.mode``` parameter.

| Mode      | value       | comment                      |
| --------- | ----------- | ---------------------------- |
| OFF       | 0           | Always off                   |
| PWM       | 1           | Always on, PWM modulated     |
| MODULATED | 2           | Switching                    |
| QUALISYS  | 3 (default) | Qualisys Active Marker mode  |

### Off mode

All marker LEDs are turned off.

### PWM mode

The marker LEDs are turned on and PWM modulated. The brightness of each LED is controlled by the [marker parameters](#marker-parameters) below, in the range 0 - 255.

### Modulated mode

The LEDs are switched on and off at around 42 kHz (24 micro seconds cycle). The brightness of the LEDs during the "on" part of the cycle is controlled by the [marker parameters](#marker-parameters) below, in the range 0 - 255.

### Qualisys mode

In this mode the LEDs act as Active markers with IDs that are identified by the Qualisys system and used for better 6-dof identification and tracking. The IDs are controlled by the [marker parameters](#marker-parameters) below. The Qualisys systems and the deck currently supports IDs in the range [0 - 170]

## Marker parameters

Each marker is associated with a parameters that is used to set brightness or id. Please check out the parameter documentation for ['activeMarker'](/documentation/repository/crazyflie-firmware/master/api/params/#activemarker)
{% endrow_text %}

{% row_links %}
* {% id_link getting-started-expansion-decks %}
* [Parameters](/documentation/repository/crazyflie-firmware/master/api/params/#activemarker)
* [Logging Variables](/documentation/repository/crazyflie-firmware/master/api/logs/#activemarker)
{% endrow_links %}




{%endrow_icon_text_links%}


{% endtab %}


{% endtabgroup %}

---

#### Resources

- {% id_link getting-started-start %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/active_marker_deck/active_marker_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/active_marker_deck/active-marker-deck_revd.pdf)

---

#### Tutorials

{% id_link getting-started-expansion-decks %}
