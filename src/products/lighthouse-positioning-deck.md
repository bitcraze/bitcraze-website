---
layout: page-product
title: Lighthouse positioning deck
page_id: product-lighthouse-deck
redirects:
  - /lighthouse-positioning-deck/
---

{% datasheet_product_status lighthouse_deck %}
{% buy_online https://store.bitcraze.io/products/lighthouse-positioning-deck %}

{% product_img Lighhouse positioning deck; narrow;
/images/lighthouse-deck/lighthouse_deck_585px.jpg
%}

{% product_highlight
fas fa-map-marker;
High precision positioning;
Enabling high precision autonomous flying and swarming
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

With Crazyflie and the {% poplink lighthouse-deck %}, high precision autonomous flight becomes
available for everyone. The Lighthouse deck uses the HTC Vive base stations (aka Lighthouse V1) or SteamVR Base Station 2.0 (aka Lighthouse V2) to achieve high precision positioning. The deck has 4 receivers which gives the full pose of the Crazyflie.

The position and pose is calculated directly in the Crazyflie, which makes it possible to create fully autonomous systems without external communication.


On-board position calculation and low complexity makes
it the ideal choice for everything from big laboratories to small classrooms.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section lighthouse_deck; Features %}
{% datasheet_section lighthouse_deck; Mechanical specifications %}
{% datasheet_section lighthouse_deck; Electrical specification %}
#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/lighthouse_deck/lighthouse_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/lighthouse_deck/lighthouse_deck-revd.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Go to the [getting started tutorial of the lighthouse positioning system]({% id_url getting-started-with-the-lighthouse-system %}). Also for more general information over how the crazyflie fits in our positioning systems in general, go to {% id_link overview_positioning %}.
{% youtube DCEHht72B08; wide; 16by9 %}

{% endrow_text %}
{% row_links %}

#### General Information

* {% id_link overview_positioning %}

#### Tutorials
* {% id_link getting-started-with-the-lighthouse-system %}
* {% id_link getting-started-expansion-decks %}

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

#### Firmware Implementation

All the Lighthouse positioning is estimated onboard of the crazyflie. Go the the [technical documentation of the lighthouse positioning system](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/) of it is implemented into the [Crazyflie Firmware](https://github.com/bitcraze/crazyflie-firmware).

It is important to have a good feel for the [stabilizer module of the crazyflie](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/), in particular state estimation with the [Extended Kalman Filter](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/state_estimators/#extended-kalman-filter)

#### Hardware Hack: Using a LH deck with other hardware

The deck has 4 solder pad on the bottom that are designed to make it possible to use the {% poplink lighthouse-deck %} with other hardware. The 4 pads are labeled and corresponds to the connector P3 in the deck schematic.

The pads GND and VCOM can be used to supply power to the deck. There is a 3.0V LDO regulator on the board which means that VCOM can be in the range of ~3.3V to 5.5V.

RX and TX are connected directly to the iCE40LP5K FPGA. The FPGA is quite sensitive and the maximum voltage that can be applied to these pins is 3.2V, applying more than that will damage the FPGA. This makes the deck incompatible with 3.3V system out of the box, but adding a voltage-divider before RX and making sure there is never a pull-up to TX would be enough to interface the deck with a 3.3V system.

The deck boots in [bootloader mode](/documentation/repository/lighthouse-bootloader/master/) , the external system is responsible to update the bitstream if necessary and boot the board using the serial port.

Note: there is no software support for using the {% poplink lighthouse-deck %} with other hardware.

{% endrow_text %}
{% row_links %}

- [Technical details](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/)
- [Stabilizer Module](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/)
- [Log Variables](/documentation/repository/crazyflie-firmware/master/api/logs/#lighthouse)
- [Parameters](/documentation/repository/crazyflie-firmware/master/api/params/#lighthouse)
- [Dataset](/documentation/system/positioning/positioning-datasets/)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}



---

#### Resources

- [Lighthouse positioning information](/documentation/repository/crazyflie-firmware/master/functional-areas/lighthouse/)
- {% id_link getting-started-start %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/lighthouse_deck/lighthouse_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/lighthouse_deck/lighthouse_deck-revd.pdf)

---
