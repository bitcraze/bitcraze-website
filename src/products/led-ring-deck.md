---
layout: page-product
title: LED-ring deck
page_id: product-led-ring-deck
redirects:
  - /led-ring-deck/
---

{% datasheet_product_status led_ring_deck %}
{% buy_online https://store.bitcraze.io/collections/decks/products/led-ring-deck %}

{% product_img LED-ring deck; narrow;
/images/led-ring/ledring-side.jpg
%}

{% product_highlight
fa-lightbulb-o;
Add lights to your Crazyflie 2.x;
Light up the dark with custom patterns using the Crazyflie 2.x LED-ring expansion deck.
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Light up the dark with custom patterns using the Crazyflie 2.x LED-ring expansion board. Featuring 12 strong RGB LEDs facing downwards, you can create custom patterns in firmware that you control from your computer. Two additional strong front facing LEDs that can be switched on and off, act as headlights.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section led_ring_deck; Features %}
{% datasheet_section led_ring_deck; Mechanical specifications %}
{% datasheet_section led_ring_deck; Electrical specification %}

#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/led_ring_deck/led_ring_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/led_ring_deck/led-ring_revb.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

The different LED patterns can selected from [CFclient's Flight tab](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/flightcontrol_tab/).

Once you have selected the right pattern, go ahead and fly!
{% youtube 1xtvRCmk3qY; wide; 16by9 %}



{% endrow_text %}
{% row_links %}
- [CFclient's Flight tab](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/flightcontrol_tab/).

#### Tutorials:

* {% id_link getting-started-expansion-decks %}


{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

#### Firmware implementation

All the LED-ring deck's effects are implemented in the [led-ring driver](https://github.com/bitcraze/crazyflie-firmware/blob/master/src/deck/drivers/src/ledring12.c).

#### Hardware Hack: LED-ring on top

In case you want to have the LED-ring on top in combination with the {% poplink flow-deck %}!

What do you need for this:

* A soldering station with solder
* Couple of wires
* Battery holder deck
* LED deck
* Hotglue or tape

What we are essentially doing, is that we are flipping the pin-layout of the LED deck so that it is compatible to be put on the top of the Crazyflie.

The image below shows how you should solder the wiring. The Gnd (ground), IO2, OW (deck single wire memory), and VCOM (power supply). Please check out this page to familiarize yourself with the pin-outs of the expansion decks.

![led deck on top](/images/led-ring/topleddeck.png)

_We did not connect IO3 on purpose since the Flow deck v2 is already using this, or else the LED deck and {% poplink flow-deck %} will conflict with each other's communication with the Crazyflie. However, the LED deck should work as well without the IO3 connected._

The battery holder deck can be glued on the LED-deck or attached with some tape. The wiring and soldering are done a bit crude for now to clearly show how to do this, however if you would like the wiring not to be shown as clearly as it is here, this should be easy to fix with thinner wires and basic soldering skills. =)

_Please pay attention to that the orientation of the LED deck is now different._ We put the battery holder on the side to prevent any connections to short with the LED deck, but now you would need to indicate the new 'front' of the LED deck. On the bottom left picture we show it with a sticker.

![led deck on crazyflie](/images/led-ring/leddecktopcrazyflie.png)

The final step is to modify the firmware. The GPIO pins used by a deck are registered in the deck driver to enable the system to detect conflicts. As the LED-ring is not using IO3 in this configuration,
it should be removed from the deck driver to enable it to be used with the Flow deck (that is using IO3). Open the `ledring12.c` file and modify [this line in the deck driver](https://github.com/bitcraze/crazyflie-firmware/blob/41a9c97569e565e927a0fe3b8f032dbcdb03aa1b/src/deck/drivers/src/ledring12.c#L1250) by removing `| DECK_USING_IO_3`. Re-compile the firmware and flash it to the Crazyflie (see the {% id_link getting-started-development %}).

We tested the converted LED deck with the {% poplink flow-deck %} with the CFclient and we are still receiving the values and parameters from both the deck drivers.

{% endrow_text %}
{% row_links %}

* [Logging Variables](/documentation/repository/crazyflie-firmware/master/api/logs/#ring)
* [Parameters](/documentation/repository/crazyflie-firmware/master/api/params/#ring)


#### Projects

* [Light paint with flowdeck](https://www.hackster.io/krichardsson/light-paint-with-a-drone-d050af)
* [Bike turning Signal](https://www.hackster.io/krichardsson/bike-turning-signal-75d988)
* [Long Exposure](https://www.hackster.io/chromebookbob/long-exposure-light-painting-2c4106)

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
- [Datasheet](/documentation/hardware/led_ring_deck/led_ring_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/led_ring_deck/led-ring_revb.pdf)
