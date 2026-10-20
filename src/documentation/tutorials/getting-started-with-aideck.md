---
layout: page-left-menu
title: Getting started with the AI deck
page_id: getting-started-with-the-aideck
---

{% si_intro Introduction %}
The {% poplink ai-deck %} enables WiFi communication with the Crazyflie<sup>®</sup>
as well as using the power-efficient GAP8 to run neural networks on board. This tutorial gets your
{% poplink ai-deck %} to stream camera images to your computer with
[NanoCockpit]({% repo_doc_url aideck-gap8-examples; examples/nanocockpit %}), which we recommend
for the AI-deck. Each step links to the documentation in our
[GAP8 example repository]({% repo_doc_url aideck-gap8-examples %}), where you find the details.
{% endsi_intro %}

{% si_step  Prerequisites %}
Make sure that you have gone through the {% id_link getting-started-crazyflie-2 %} tutorial first.

To run this tutorial and set up the AI deck you will need the following:
* Operating System
  * Ubuntu 20.04 or later

* Hardware
  * {% id_link product-crazyflie-2-1-plus %}
  * {% poplink ai-deck %}
  * {% poplink crazyradio-2-0 %} or {% id_link product-crazyradio-pa %}
  * A compatible [JTAG programmer/debugger]({% repo_doc_url aideck-gap8-examples; development/jtag-programmer %}). We recommend the [Olimex ARM-USB-TINY-H](https://store.bitcraze.io/products/olimex-arm-usb-tiny-h-bundle).

* Software
  * Latest release of the cfclient
  * Docker and uv, see the [requirements for NanoCockpit]({% repo_doc_url aideck-gap8-examples; examples/nanocockpit %}#requirements)

{% endsi_step %}

{% si_step Attach the AI-deck %}
The AI-deck can be mounted both on top and on the bottom using the provided long header pins. Either position might yield different pros & cons but for development when a JTAG cable needs to be attached the top position works best. Note though that the ESP32 antenna is a bit fragile and can be damaged during crashes. For better resilience during crashes, mount the AI-deck at the bottom, or put a peace of hot-glue as shown in the picture below.

![led deck on Crazyflie](/images/tutorials/getting_started_with_aideck/AI-deck-1_1-antenna-hotglue-400.jpg)

{% endsi_step %}


{% si_intro Preparing the firmware %}
NanoCockpit needs its own firmware on both chips of the AI-deck: the ESP32 firmware for
NanoCockpit, and a NanoCockpit application on the GAP8.
{% endsi_intro %}


{% si_step Update the Crazyflie firmware %}
With the AI-deck mounted, update the Crazyflie to the latest release, as described in the
[firmware upgrade section]({% repo_doc_url crazyflie-clients-python; userguides/userguide_client %}#firmware-upgrade)
of the cfclient user guide. The release also contains the ESP32 firmware for NanoCockpit, which
is flashed to the AI-deck automatically.

When it runs, the AI-deck creates the WiFi network `aideck-nanocockpit`.
{% endsi_step %}


{% si_step Flash the streamer %}
Flash the NanoCockpit streamer to the GAP8 with the JTAG programmer. It is released as a
ready-made image, so there is nothing to build, see
[flashing the example]({% repo_doc_url aideck-gap8-examples; examples/nanocockpit/streamer %}#flashing-the-example).
{% endsi_step %}


{% si_step Start the viewer %}
The viewer runs from a copy of the GAP8 example repository. If you do not have one yet, clone it:

```bash
git clone https://github.com/bitcraze/aideck-gap8-examples.git
```

Then install the viewer, connect your computer to the `aideck-nanocockpit` network and start the
viewer, as described in
[starting the viewer]({% repo_doc_url aideck-gap8-examples; examples/nanocockpit/streamer %}#starting-the-viewer).
The viewer shows the camera images of the AI-deck.
{% endsi_step %}


{% si_intro Next steps %}
Your {% poplink ai-deck %} is now running NanoCockpit. From here you can

* read the rest of the [streamer documentation]({% repo_doc_url aideck-gap8-examples; examples/nanocockpit/streamer %}),
  for example to change the resolution or exposure of the camera, or to save the state of the
  Crazyflie together with the images
* connect the {% poplink ai-deck %} to an existing WiFi network instead, see the
  [WiFi configuration]({% repo_doc_url aideck-esp-firmware-v2; wifi-configuration %}#connecting-to-an-existing-network)
  of the ESP32 firmware
* try the other [NanoCockpit examples]({% repo_doc_url aideck-gap8-examples; examples/nanocockpit %}),
  for example a neural network running on board, or use them as a starting point for your own
  application

The other examples in the repository use the original ESP32 firmware instead. See
[switching firmware]({% repo_doc_url aideck-gap8-examples; development/switching-firmware %})
for how to go from one to the other.
{% endsi_intro %}

{% si_intro Further reading %}

* [The GAP8 example repository]({% repo_doc_url aideck-gap8-examples %}) to read about what examples we provide and to try them out
* [Upstream NanoCockpit](https://github.com/idsia-robotics/nanocockpit), where NanoCockpit is developed
* Check out [the CPX documentation]({% repo_doc_url crazyflie-firmware; functional-areas/cpx %}) for more explanation of how to communicate with the {% poplink ai-deck %}

{% endsi_intro %}
