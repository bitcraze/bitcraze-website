---
layout: page-product
title: Debug adapter kit
page_id: product-debug-adapter-kit
redirects:
  - /debug-adapter-kit/
---

{% buy_online https://store.bitcraze.io/collections/accessories/products/debug-adapter %}

{% product_img Debug adapter kit; narrow;
/images/debug-adapter/Debug-adapter-kit-585px.JPG
%}

{% product_highlight
fa-eye;
Debug firmware with ease;
Connect a standard JTAG and SWD debugger to the Crazyflie 2.X.
%}

{% tabgroup %}
{% tab How it Works %}

{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}
One of our goals is to make development with the Crazyflie 2.X as easy
as possible. Due to the small size of the platform there are limitations
in what connectors we can have and therefore we designed a debug-adapter
kit that makes connecting a debugger to either of the MCUs a lot
easier, by converting the connector pinouts to standard JTAG and SWD
pinouts.
{% endrow_text %}
{% row_links %}
{% endrow_links %}
{%endrow_icon_text_links%}

{% endtab %}

{% tab Specifications %}

{% row_icon_text_links Specifications; fa-list %}
{% row_text %}
{% datasheet_section debug_adapter; Features %}
{% datasheet_section debug_adapter; Electrical specification %}
{% endrow_text %}

{% endrow_icon_text_links %}

{% endtab %}

{% tab Usage %}

{% row_icon_text_links Usage; fa-book %}
{% row_text %}
## Assembly
The Debug adapter kit contains the following:
  * The nRF debug connector for soldering to the Crazyflie 2.X
  * A nylon screw and nut for securely attaching the nRF51 debug connector
  * The debug adapter for connecting the debugger
  * A cable for connecting to the Crazyflie 2.X

Below are two images showing how the nRF51 debug connector should be soldered to the Crazyflie 2.X.

![debug adapter top](/images/documentation/wiki/debug_adapter_top.jpg)
![debug adapter buttom](/images/documentation/wiki/debug_adapter_bottom.jpg)

## Connectors 
![debug adapter parts](/images/documentation/wiki/debug_adapter_parts.png)

All the connectors are connected together, so any combination of debuggers will work. I.e using the STM32 Discovery board for debugging of the nRF51, or a ARM JTAG to Cortex M debug converter.

Here's a short explanation of the connectors:
  * **Cortex M debug**: Pinout compatible with Cortex M debug for SWD/SWO/JTAG
  * **STM32 Discovery debug**: Pinout compatible with SWD/SWO of STM32 Discovery boards (so you can directly use these boards for debugging the Crazyflie)
  * **ARM JTAG**: Pinout compatible with ARM JTAG 20 pin
  * **Reset button**: Used to reset the target you are debugging
  * **Reset selector**
    * Reset btn to <-> SDWIO: For nRF51 debugging (reset done by holding SWD IO line low)
    * Reset btn to <-> NRST: For STM32F debugging (reset done by holding NRST low)
  * **Crazyflie 2.0 SWV**: Connect to Crazyflie 2.X for nRF51 or STM32F4 debugging
  * **nRF51 1:1**: 1:1 match with nRF51 debug pinout on the Crazyflie 2.X, pinout:
    - SWIO
    - GND
    - VCC
    - SWCLK

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{%endrow_icon_text_links%}

{% endtab %}

{% tab Development %}

{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}
## Debug instructions 
For some basic debug instructions go to the [instructions for the STM32](/documentation/repository/crazyflie-firmware/master/development/openocd_gdb_debugging/) or [the instructions for the NRF](/documentation/repository/crazyflie2-nrf-firmware/master/development/starting_development/) of the crazyflie.

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
- [Datasheet](/documentation/hardware/debug_adapter/debug_adapter-datasheet.pdf)
- [Schematics](/documentation/hardware/debug_adapter/debug-adapter_revc.pdf)
- [Store](https://store.bitcraze.io/products/debug-adapter)

---

#### Tutorials

{% id_link getting-started-development %}
