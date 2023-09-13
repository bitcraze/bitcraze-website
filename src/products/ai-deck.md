---
layout: page-product
title: AI deck 1.1
page_id: product-ai-deck-1-1
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

The {% poplink ai-deck %} 1.1 extends the computational capabilities and will enable complex artificial intelligence-based workloads to run onboard, with the possibility to achieve fully autonomous navigation capabilities. The ESP32 adds WiFi connectivity with the possibility to stream images as well as handling control.

To set up this board a compatible JTAG programmer/debugger is needed, see [GAP8 bootloader](/documentation/tutorials/getting-started-with-aideck/#gap8-bootloader) in getting stated guide and [flashing](/documentation/repository/aideck-gap8-examples/master/infrastructure/flashing/) documentation.

The {% poplink ai-deck %} 1.1 version only has minor updates compared to the {% poplink ai-deck %} 1.0. The Himax camera module is now the greyscale version and the GAP8 is now revision C instead of B. For more details read [this blog post](https://www.bitcraze.io/2021/01/ai-deck-product-update/) and if the Bayer RGB version camera is wanted it can be bought stand alone here.

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

The {% poplink ai-deck %} adds WiFi connectivity to the Crazyflie, which can be used for communication
with the Crazyflie and the {% poplink ai-deck %}. For the camera and the GAP8 no out-of-the-box functionality
is added, instead these resources are left for users to fully use as they see fit.

The {% poplink ai-deck %} can be mounted on top or on the bottom of the Crazyflie 2.X.

The {% poplink ai-deck %} ESP32 antenna is a bit fragile and can be damaged during crashes. For better resilience, mount the AI-deck at the bottom, or put a peace of hot-glue as shown in the picture below.

![led deck on crazyflie](/images/tutorials/getting_started_with_aideck/AI-deck-1_1-antenna-hotglue-400.jpg)

To get up and running with the deck see our [getting started guide](/documentation/tutorials/getting-started-with-aideck/)
after which you will be able to either try out the pre-made examples or start making your
own AI powered applications.

{% endrow_text %}
{% row_links %}
* [Getting started with the AI deck](/documentation/tutorials/getting-started-with-aideck/)
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

The main purpose of the {% poplink ai-deck %} is to be used to try out our examples and to develop
your own AI powered applications. To be able to get going you will need to complete the [Getting started with the AI deck](/documentation/tutorials/getting-started-with-aideck/) tutorial, then you can jump over to our
examples or get started right away developing something of your own.

Although it's possible to flash the GAP8 over-the-air, it's mandatory to first flash the bootloader
onto the GAP8 using a JTAG adapter, see [GAP8 bootloader](/documentation/tutorials/getting-started-with-aideck/#gap8-bootloader) in getting stated guide and [flashing](/documentation/repository/aideck-gap8-examples/master/infrastructure/flashing/) documentation.

Using the [Crazyflie Packet eXchange protocol (CPX)](/documentation/repository/crazyflie-firmware/master/functional-areas/cpx/) you will be able to communicate between your host computer,
the ESP32, the GAP8 and the STM32 on the Crazyflie. This will enable you to easily send data from the GAP8
to your host computer via WiFi or to the STM32 on the Crazyflie, and back again. This is also used for
console printing from the ESP32 and GAP8 which will be sent to the Crazyflie and displayed in the Crazyflie
client.

#### Workshop

Make sure to check out the workshop PULP platform about the {% poplink ai-deck %}! Note that some
of the instructions have been updated, refer to the getting started guide for the latest procedures.

{% youtube o9asYPHxEB4; wide; 16by9 %}

{% endrow_text %}
{% row_links %}
* [AI deck getting started tutorial](/documentation/tutorials/getting-started-with-aideck/)
* [AI deck example documentation](/documentation/repository/aideck-gap8-examples/master/)
* [AI deck examples on Github](https://github.com/bitcraze/aideck-gap8-examples)
* [CPX](/documentation/repository/crazyflie-firmware/master/functional-areas/cpx/)
* [GAP SDK repository](https://github.com/GreenWaves-Technologies/gap_sdk)
* [Bitcraze GAP SDK docker container](https://github.com/bitcraze/docker-aideck)
* [AI deck blogposts](/category/ai-deck/)
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}

---
