---
layout: page-product
title: BigQuad deck
permalink: /bigquad-deck/
page_id: product-bigquad-deck
---

{% product_img BigQuad deck; medium;
/images/bigquad-deck-early-access/big-quad-early-access-4.jpg;
/images/bigquad-deck-early-access/big-quad-early-access-2.jpg;
/images/bigquad-deck-early-access/big-quad-early-access-3.jpg;
/images/bigquad-deck-early-access/big-quad-early-access-1.jpg;
/images/bigquad-deck-early-access/big-quad-early-access-5.jpg;
/images/bigquad-deck-early-access/big-quad-early-access-6.jpg;
/images/bigquad-deck-early-access/big-quad-early-access-7.jpg
%}

{% product_highlight 
fa-expand;
Go big!;
Build a quadcopter the size you need, while still running the same code.
%}
With the BigQuad deck you can transform your Crazyflie 2.0 to a bigger quad by connecting external ESCs to the breakout connectors on the deck. The autodetection of the deck makes this transformation possible to do in seconds. The deck also contains breakout header connectors for additional accessories such as external receiver (CPPM input) and GPS. It can also monitor battery voltage and current.

---

{% collapse_section Features %}
* 4 x ESC connectors
* 0.1” header mounting holes for additional connectivity:
   * CPPM input (3 pin)
   * GPS input (4 pin)
   * I2C expansion  (4 pin)
   * Battery and current monitoring input (3 pin)
   * Buzzer output (2 pin)
* Connect one or two additional decks
* Automatic detection of expansion deck
{% endcollapse_section %}

{% collapse_section Specifications %}
##### Electrical specification:

* Power Crazyflie 2.0 with 4.5V - 5.5V from ESC.
* BiqQuad deck inputs are 5V tolerant.
* Battery voltage monitoring divider scaled for input up to 23V.
* Current monitoring input 0V - 3V.
* BiqQuad deck and Crazyflie 2.0 current consumption: 
   * ~120mA without any additional decks.
   * Up to 500mA if Crazyflie 2.0 battery is connected and charging.
* 1-wire memory for automatic expansion deck detection.

##### Mechanical specification:

* Weight: 3.8g
* Size (WxHxD): 36x40x5mm
* M3 Mounting holes placed 30.5mm square.
* Designed for mounting above or under the Crazyflie 2.0

##### Compatibility:

* Works with the Crazyflie 2.0

##### Package contents:

* 1 x BigQuad deck
* 4 x M2x4 nylon screw
* 2 x M2x6 hex spacer

{% endcollapse_section %}

---

[Getting started with expansion decks](/getting-started-with-expansion-decks/)

[Learn more about our Early access program](/early-access/)

{% buy_online http://www.seeedstudio.com/depot/Crazyflie-20-BigQuad-deck-p-2626.html %}
