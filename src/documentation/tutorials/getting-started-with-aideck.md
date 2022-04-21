---
layout: page-left-menu
title: Getting started with the AI deck
page_id: getting-started-with-the-aideck
---

{% si_intro Introduction %}
The {% poplink ai-deck %} enables WiFi communication with the Crazyflie
as well as using the power-efficient GAP8 to run neural networks on board. This tutorial will prepare your {% poplink ai-deck %} to be used together
with the examples in our [GAP8 example repository](https://github.com/bitcraze/aideck-gap8-bootloader) and for you to start developing your own applications.
{% endsi_intro %}

{% si_step  Prerequisites %}
To run this tutorial and set up the AI deck you will need the following:

* Hardware
  * {% id_link product-crazyflie-2-1 %}
  * {% poplink ai-deck %}
  * {% id_link product-crazyradio-pa %}
  * Olimex ARM-USB-TINY-H JTAG
* Software
  * [Docker](https://www.docker.com/)
  * The latest source code of the [Crazyflie lib](https://github.com/bitcraze/crazyflie-lib-python)
  * The latest source of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python)
  * The latest version of the [Bitcraze toolbelt](/documentation/repository/toolbelt/master/)
{% endsi_step %}

{% si_intro Preparing the AI deck and Crazyflie firmware %}
The first thing to do is to make sure that your firmware is up to date,
this includes both the AI deck firmware (ESP32 and the GAP8) as well as the
Crazyflie (STM32 and nRF51)
{% endsi_intro %}


{% si_step Get the latest AI-deck docker image %}
The `bitcraze/aideck` docker image contains various software that is used when working with the GAP8. Get the latest
version of the image

```
$ docker pull bitcraze/aideck
```
{% endsi_step %}


{% si_step Flash the latest nRF51 firmware %}
Build the firmware from source and flash it to the Crazyflie.

```
$ git clone https://github.com/bitcraze/crazyflie2-nrf-firmware.git
$ cd crazyflie2-nrf-firmware
$ tb build
$ cfloader flash cf2_nrf.bin nrf51-fw -w [your radio uri]
```

See the [repository documentation](/documentation/repository/crazyflie2-nrf-firmware/master/build/build/) for more details on how to build and flash.
{% endsi_step %}

{% si_step Setup the WiFi via the Crazyflie firmware%}
The WiFi on the {% poplink ai-deck %} can be set up in a number of ways,
but to keep things simple for this tutorial we will be setting it up
via the Crazyflie firmware as an access point, which means you will be
connecting to the AI deck's WiFi to run the examples. Clone and configure
the Crazyflie firmware by running the following commands:

```
$ git clone https://github.com/bitcraze/crazyflie-firmware.git
$ cd crazyflie-firmware
$ tb make menuconfig
```

Go to the menu *Expansion deck configuration* and make sure *Support AI deck*
is enabled. In the *Support AI deck* sub menu select *WiFi setup at startup* and the option *Act as Access Point*. Now go to the *Credentials for access-point*
menu and set the SSID and KEY as you wish.

Now it's time to flash the firmware. Build and flash with the following command, replacing the address with your own:

```
$ tb make
$ cfloader flash cf2.bin stm32-fw -w [your radio uri]
```

See the [repository documentation](/documentation/repository/crazyflie-firmware/master/building-and-flashing/build/) for more details on how to build and flash.
{% endsi_step %}

{% si_step Flash the latest ESP firmware %}
Build the firmware from source and flash it to the AI-deck.

```
$ git clone https://github.com/bitcraze/aideck-esp-firmware.git
$ cd aideck-esp-firmware
$ tb build
$ cfloader flash build/aideck_esp.bin deck-bcAI:esp-fw -w [your radio uri]
```

See the [repository documentation](https://github.com/bitcraze/aideck-esp-firmware/blob/main/README.md) for more details on how to build and flash.
{% endsi_step %}


{% si_step Flash the latest GAP8 bootloader %}
If you do not already have a bootloader on the GAP8, clone, build and
flash the bootloader with an Olimex ARM-USB-TINY-H JTAG using the following commands:

```
$ git clone https://github.com/bitcraze/aideck-gap8-bootloader.git
$ cd aideck-gap8-bootloader
$ docker run --rm -it -v $PWD:/module/ --device /dev/ttyUSB0 --privileged -P bitcraze/aideck /bin/bash -c 'export GAPY_OPENOCD_CABLE=interface/ftdi/olimex-arm-usb-tiny-h.cfg; source /gap_sdk/configs/ai_deck.sh; cd /module/;  make all image flash'
```

Note: This only works on Linux, unfortunately Windows and Mac currently do not support USB access from docker containers.
{% endsi_step %}


{% si_intro Setup the autotiler in docker %}
In order to be able to use the autotiler in the GAP8 SDK (Facedetection and Mnist examples) you will
have to manually set it up and accept the license.
{% endsi_intro %}

{% si_step Setting up the autotiler%}

```
$ docker run --rm -it --name myAiDeckContainer bitcraze/aideck
$ cd /gap_sdk
$ source configs/ai_deck.sh
$ make autotiler
```

This will install the autotiler, which requires you to register your email and get a special URL token to download and install the autotiler.

In a second **separate** terminal on your local machine, commit the changes to a new image by running:
```
$ docker commit myAiDeckContainer aideck-with-autotiler
```

This will save the state of the container with the installed autotiler to a new image called `aideck-with-autotiler` that you will use later.

You can now go back to the first terminal and close the container

```
$ exit
```

Remember that this needs to be done every time you pull a new image of the bitcraze/aideck docker image


{% endsi_step %}

{% si_intro Next steps %}
Your {% poplink ai-deck %} is now prepared and ready for either your own
applications or to try out some of our examples. To continue the tutorial
jump over to one of the following examples:

* [WiFi image streamer](/documentation/repository/aideck-gap8-examples/master/test-functions/wifi-streamer)
* [Classification example](/documentation/repository/aideck-gap8-examples/master/ai-examples/classification-demo)

{% endsi_intro %}

{% si_intro Further reading %}

* Check out [the CPX documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/cpx/) for more explanation of how to communicate with the {% poplink ai-deck %}
* [The GAP8 repository examples](/documentation/repository/aideck-gap8-examples/master/) to read about what examples we provide and to try them out

{% endsi_intro %}
