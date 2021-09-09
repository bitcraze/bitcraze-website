---
layout: page-product
title: AI deck 1.1
page_id: product-ai-deck
redirects:
  - /ai-deck/
---

{% datasheet_product_status ai_deck_1_1  %}

{% buy_online https://store.bitcraze.io/products/ai-deck-1-1 %}

{% product_img AI deck; narrow; /images/products/ai-deck-side-585px.jpg %}

{% product_highlight
fa fa-lightbulb-o;
Brain Boost;
Artificial Intelligence in a Nutshell
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}
Super-edge-computing on a 30 gram flying platform is now available!

Thanks to the [GAP8 IoT application processor](https://greenwaves-technologies.com/ai_processor_gap8/) from [GreenWaves Technologies](https://greenwaves-technologies.com/ai_processor_gap8/) and the ULP camera, the Crazyflie is able to capture, analyze and classify its environment, as previously presented by [ETH Zurich](https://ethz.ch/en.html) on the initial [PULP-Shield PCB design from IIS-ETHZ](https://arxiv.org/abs/1905.04166). This lightweight and low-power combination opens up many research and development areas for the micro-sized Crazyflie 2.X UAV.

The AI-deck 1.1 extends the computational capabilities and will enable complex artificial intelligence-based workloads to run onboard, with the possibility to achieve fully autonomous navigation capabilities. The ESP32 adds WiFi connectivity with the possibility to stream images as well as handling control. 

This product is in the early access stage so documentation and amount of examples are limited. To program this board a compatible JTAG programmer/debugger is needed, see resources.

The AI-deck 1.1 version only has minor updates compared to the AI-deck 1.0. The Himax camera module is now the greyscale version and the GAP8 is now revision C instead of B. For more details read [this blog post](https://www.bitcraze.io/2021/01/ai-deck-product-update/) and if the Bayer RGB version camera is wanted it can be bought stand alone here.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section ai_deck_1_1; Features %}
{% datasheet_section ai_deck_1_1; Mechanical specifications %}
{% datasheet_section ai_deck_1_1; Electrical specification %}

{% endrow_text %}
{% row_links %}
- [Datasheet](/documentation/hardware/ai_deck_1_1/ai_deck_1_1-datasheet.pdf)
- [Schematics](/documentation/hardware/ai_deck_1_1/ai-deck-revc.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Check out [this page for first trying out time out of the AIdeck](/documentation/repository/AIdeck_examples/master/getting-started/tryout/)

{% endrow_text %}
{% row_links %}

* [First time try out](/documentation/repository/AIdeck_examples/master/getting-started/tryout/)
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

As the AIdeck is still in early access, there is still a lot of development to be done. The firmware of the AIdeck's microprocessors can be found in [its Github repository](https://github.com/bitcraze/AIdeck_examples) with the [accomendating documentation](/documentation/repository/AIdeck_examples/master/). The GAP8 chip relies on the [GAP SDK from greenwave technologies](https://github.com/GreenWaves-Technologies/gap_sdk)

#### Programmer

Note that you need to have [a jtag enabled programmer ](/documentation/repository/AIdeck_examples/master/getting-started/jtag-programming/) in order to flash firmware to the AIdeck.


#### Workshop

Make sure to check out the workshop PULP platform gave about the AIdeck!

{% youtube o9asYPHxEB4; wide; 16by9 %}


{% endrow_text %}
{% row_links %}
* [AIdeck examples repository](https://github.com/bitcraze/AIdeck_examples) 
* [GAP SDK repo](https://github.com/GreenWaves-Technologies/gap_sdk)
* [AIdeck documentation](/documentation/repository/AIdeck_examples/master/)
* [AIdeck blogposts](/category/ai-deck/)
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}

---