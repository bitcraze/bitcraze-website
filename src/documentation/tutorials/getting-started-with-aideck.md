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
  * The latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases)
  * The latest version of the [Bitcraze toolbelt](/documentation/repository/toolbelt/master/)
{% endsi_step %}

{% si_intro Preparing the AI deck and Crazyflie firmware %}
The first thing to do is to make sure that your firmware is up to date,
this includes both the AI deck firmware (ESP32 and the GAP8) as well as the
Crazyflie (STM32 and nRF51)
{% endsi_intro %}

{% si_step Flash the latest STM32, nRF51 and ESP32 firmware %}
Attach your AI deck and start the Crazyflie python client. Go to the
menu *Connect->Bootloader* and scan/connect to your Crazyflie. Then select
the latest release and press program.
{% endsi_step %}

{% si_step Flash the latest GAP8 bootloader %}
If you do not already have a bootloader on the GAP8, clone, build and
flash the bootloader with an Olimex ARM-USB-TINY-H JTAG using the following commands:

```
$ git clone https://github.com/bitcraze/aideck-gap8-bootloader.git
$ cd aideck-gap8-bootloader
$ docker run --rm -it -v $PWD:/module/ --device /dev/ttyUSB0 --privileged -P bitcraze/aideck:latest /bin/bash -c 'export GAPY_OPENOCD_CABLE=interface/ftdi/olimex-arm-usb-tiny-h.cfg; source /gap_sdk/configs/ai_deck.sh; cd /module/;  make all image flash'
```
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
$ cfloader flash cf2.bin stm32-fw -w radio://0/80/2M
```

{% endsi_step %}

{% si_intro Setup the autotiler in docker %}
In order to be able to use the autotiler in the GAP8 SDK (Facedetection and Mnist examples) you will
have to manually set it up and accept the license.
{% endsi_intro %}

{% si_step Setting up the autotiler%}

```
$ docker run --rm -it bitcraze/aideck /bin/bash
$ cd /gap_sdk
$ source configs/ai_deck.sh
$ make autotiler
```

This will install the autotiler, which requires you to register your email and get a special URL token to download and install the autotiler.

In a second **separate** terminal on your local machine, commit the changes to the image by first looking up the container ID status:
```
$ docker ps
```

Copy and past the container ID and replace the <container id> on the line here below, then run it in the separate terminal (also adapt the SDK version if you did before)
```
$ docker commit <container id> aideck-with-autotiler
```

This will save the install of the autotiler on your image. You can close the container in the other terminal with 'exit'. Remember that this needs to be done every time you pull a new image of the bitcraze/aideck docker image


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
