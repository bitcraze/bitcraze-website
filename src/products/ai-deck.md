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
{% row_text %} Edge AI computing for the Crazyflie is now available!

Thanks to the GAP8 IoT application processor from GreenWaves Technologies and a camera, the AI-deck provides the essential hardware for capturing, analyzing, and classifying its environment. Originally presented by [ETH Zurich](https://ethz.ch/en.html) as the [PULP-Shield PCB design from IIS-ETHZ](https://arxiv.org/abs/1905.04166), this lightweight, low-power combination is ideal for embedded AI research and development on the micro-sized Crazyflie 2.x.

The {% poplink ai-deck %} 1.1 expands onboard computational capabilities, enabling experimentation with custom artificial intelligence workloads, including potential autonomous navigation implementations. The ESP32 provides WiFi connectivity and can be programmed to handle custom communication tasks.

The {% poplink ai-deck %} 1.1 version only has minor updates compared to the {% poplink ai-deck %} 1.0. The Himax camera module is now the greyscale version and the GAP8 is now revision C instead of B. For more details read [this blog post](https://www.bitcraze.io/2021/01/ai-deck-product-update/) and if the Bayer RGB version camera is wanted it can be bought stand alone here.

> **Note:** A compatible [JTAG programmer/debugger](/documentation/repository/aideck-gap8-examples/master/development/jtag-programmer/) is required for flashing, debugging, and restoring the bootloader. For detailed instructions, please refer to the [GAP8 bootloader](/documentation/tutorials/getting-started-with-aideck/#gap8-bootloader) in the getting-started guide and the [flashing documentation](/documentation/repository/aideck-gap8-examples/master/development/flashing/). We recommend the [Olimex ARM-USB-TINY-H](https://store.bitcraze.io/products/olimex-arm-usb-tiny-h-bundle). Familiarity with embedded system development is recommended for effective use of this platform.

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

The {% poplink ai-deck %} can be mounted on top or on the bottom of the Crazyflie 2.x.

The {% poplink ai-deck %} ESP32 antenna is a bit fragile and can be damaged during crashes. For better resilience, mount the AI-deck at the bottom, or put a peace of hot-glue as shown in the picture below.

![AI deck wifi antenna](/images/tutorials/getting_started_with_aideck/AI-deck-1_1-antenna-hotglue-400.jpg)

To get up and running with the deck see our [getting started guide](/documentation/tutorials/getting-started-with-aideck/)
after which you will be able to either try out the pre-made examples or start making your
own AI powered applications.

> **Note:** A compatible [JTAG programmer/debugger](/documentation/repository/aideck-gap8-examples/master/development/jtag-programmer/) is required for flashing, debugging, and restoring the bootloader. For detailed instructions, please refer to the [GAP8 bootloader](/documentation/tutorials/getting-started-with-aideck/#gap8-bootloader) in the getting-started guide and the [flashing documentation](/documentation/repository/aideck-gap8-examples/master/development/flashing/). We recommend the [Olimex ARM-USB-TINY-H](https://store.bitcraze.io/products/olimex-arm-usb-tiny-h-bundle). Familiarity with embedded system development is recommended for effective use of this platform.

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
onto the GAP8 using a JTAG adapter, see [GAP8 bootloader](/documentation/tutorials/getting-started-with-aideck/#gap8-bootloader) in getting stated guide and [flashing](/documentation/repository/aideck-gap8-examples/master/development/flashing/) documentation.

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
