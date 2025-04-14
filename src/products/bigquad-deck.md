---
layout: page-product
title: BigQuad deck
page_id: product-bigquad-deck
redirects:
  - /bigquad-deck/
---

{% datasheet_product_status big_quad_deck %}
{% buy_online https://store.bitcraze.io/collections/decks/products/bigquad-deck %}

{% product_img BigQuad deck; narrow; /images/bigquad-deck/big-quad-deck-585px.jpg %}

{% product_highlight
fa-expand;
Go big!;
Build a quadcopter the size you need, while still running the same code.
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

With the BigQuad deck you can transform your Crazyflie 2.x to a bigger quad by connecting external Electronic speed controllers (ESCs) to the breakout connectors on the deck. The autodetection of the deck makes this transformation possible to do in seconds. The deck also contains breakout header connectors for additional accessories such as external receiver (CPPM input) and GPS. It can also monitor battery voltage and current.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}

{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section big_quad_deck; Features %}
{% datasheet_section big_quad_deck; Mechanical specifications %}
{% datasheet_section big_quad_deck; Mechanical drawing %}
{% datasheet_section big_quad_deck; Electrical specification %}
{% datasheet_section big_quad_deck; Pinout %}

{% endrow_text %}

{% row_links %}

* [Datasheet](/documentation/hardware/big_quad_deck/big_quad_deck-datasheet.pdf)
* [Schematics](/documentation/hardware/big_quad_deck/bigquad-rev-c1.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}

{% endrow_icon_text_links %}
{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

#### Caution

**A big quad is dangerous so make sure to be SAFE!**

#### Assembly

Currently there is only a basic setup but as the development advances so will the documentation.
Start by mounting the big quad deck on the frame. After that connect the ESCs according to the diagrams below. **Note** that the 5V is needed for the motor signals and is not optional.


#### Basic connection diagram

![ESC basic setup](/images/documentation/wiki/esc-basic-setup.png)

#### Basic connection picture

![Bigquad basic connection](/images/documentation/wiki/bigquad-basic-connection.png)

#### Attaching the Crazyflie 2.x

The front of the Crazyflie 2.x should be pointing in the direction of the arrows (front) on the BigQuad deck.

If the frame allows it, the Crazyflie 2.x motors can be kept mounted but it is fine to remove them as well. Attach and connect the Crazyflie 2.x using either the long or short deck pins. Use the included nylon spacer and screws to secure the Crazyflie 2.x in place and to keep it level.

![Crazyflie with bigquad deck](/images/documentation/wiki/bigquaddeck-2.jpg)

#### Building Firmware

The BigQuad deck contains a 1-wire memory so it can be automatically detected and functions initialized. However as this currently is an ongoing development and a bigger quads ads a new level of caution we have decided to not enable the functionality by default. Therefore the firmware needs to be compiled with the BigQuad deck enabled in **menuconfig**.

##### Enable BigQuad features

Make sure to have the crazyflie-firmware code updated to a later version then this [commit](https://github.com/bitcraze/crazyflie-firmware/commit/dbaaa914a54bf31a6bf155b26b09c472dc684086). Then check the **Support the BigQuad deck** box in **menuconfig** under the **expansion deck configuration** group.

![BigQuad in menuconfig](/images/documentation/wiki/BigQuad_in_menuconfig.png)

We also suggest enabling the required arming of the motors, which serves as an indication that the drone is ready to fly. This can be done in **menuconfig** under the **motor configuration** group.

![Enable arming in menuconfig](/images/documentation/wiki/Enable_arming_in_menuconfig.png)

Build the firmware and flash it using your preferred method. Now when the Crazyflie 2.x is started and it is connected to the BigQuad deck it will start outputting PWM signals to the ESC connectors. The motors [will not spin during the Crazyflie 2.x power on self-test (POST)](https://forum.bitcraze.io/viewtopic.php?f=6&t=2069#p10502).

#### Early access notes (2021)
* CPPM input is working but calibration and dynamic channel setup is not implemented yet. Doing the first tests with cfclient and gamepad is wise but might not be as reliable as a RC transmitter and receiver, yet.
* When the BQ-Deck is detected it will automatically switch to brushless motor drivers. It will be noted in the cfclient console if it is detected or not.
* 1mbit or 2mbit datarate seem to be more stable when communicating with the BigQuad deck attached. It is wise to do a range test before flying far away.
* Different PID tuning parameters might be needed for it to fly well. Currently this has to be hard coded. Later this will be saved in the EEPROM or in the 1-wire memory.
* External battery voltage/current reading is implemented but no logic behind it, so don't run out of battery. * You can connect the cable (MON port) and watch the log variable.
* The PWM output is set to 400Hz. Use ESCs which can handle this or compile with new value. There is also the possibility to enable OneShot125 output.
* Be safe, it is experimental software. Run all testing without props!

{% endrow_text %}
{% endrow_icon_text_links %}
{% endtab %}

{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}
{% datasheet_section big_quad_deck; Errata %}

{% endrow_text %}
{% endrow_icon_text_links %}
{% endtab %}

{% endtabgroup %}
#### Resources

- {% id_link getting-started-start %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/big_quad_deck/big_quad_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/big_quad_deck/bigquad-rev-c1.pdf)
