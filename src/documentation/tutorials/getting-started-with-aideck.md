---
layout: page-left-menu
title: Getting started with the AI deck
page_id: getting-started-with-the-aideck
---

{% si_intro Introduction %}
The {% poplink ai-deck %} enables WiFi communication with the Crazyflie
as well as using the power-efficient GAP8 to run neural networks on board. This tutorial will prepare your {% poplink ai-deck %} to be used together
with the examples in our [GAP8 example repository](https://github.com/bitcraze/aideck-gap8-examples) and for you to start developing your own applications.
{% endsi_intro %}

{% si_step  Prerequisites %}
Make sure that you have gone through the {% id_link getting-started-crazyflie-2 %} tutorial first.

To run this tutorial and set up the AI deck you will need the following:
* Operating System
  * Linux 20.04 or higher

* Hardware
  * {% id_link product-crazyflie-2-1 %}
  * {% poplink ai-deck %}
  * {% poplink crazyradio-2-0 %} or {% id_link product-crazyradio-pa %}
  * Optional: Programmer if you need to install the bootloader.


* Software
  * Latest release of the cfclient
  * [Docker](https://www.docker.com/)
      * Install the docker according to [Ubuntu instructions](https://docs.docker.com/engine/install/ubuntu/)

{% endsi_step %}

{% si_step Attach the AI-deck %}
The AI-deck can be mounted both on top and on the bottom using the provided long header pins. Either position might yield different pros & cons but for development when a JTAG cable needs to be attached the top position works best. Note though that the ESP32 antenna is a bit fragile and can be damaged during crashes. For better resilience during crashes, mount the AI-deck at the bottom, or put a peace of hot-glue as shown in the picture below.

![led deck on crazyflie](/images/tutorials/getting_started_with_aideck/AI-deck-1_1-antenna-hotglue-400.jpg)

{% endsi_step %}


{% si_intro Preparing the AI deck and Crazyflie firmware %}
The first thing to do is to make sure that your firmware is up to date,
this includes both the AI deck firmware (ESP32 and the GAP8) as well as the
Crazyflie (STM32 and nRF51)
{% endsi_intro %}


{% si_step Update Crazyflie and AIdeck firmware %}
1. Open up the cfclient on your computer
1. Make sure that **only** the AI-deck is attached to the Crazyflie, with no other deck.
1. Go to 'Connect'->'bootloader'
1. Type the address of your crazyflie, press 'Scan' and select your crazyflie's URI. Make sure to choose 'radio://...' (not 'usb://'). Now press 'Connect'
1. In the 'Firmware Source' section, select the latest release in 'Available downloads'. Make sure to select the right platform (cf2 is for the crazyflie 2.x ).
1. Press 'Program' and wait for the STM, NRF and ESP MCUs to be re-flashed. The crazyflie will restart a couple of times, and the flashing of the ESP ('bcAI:esp deck memory') takes about 3 minutes.
1. Once the status states 'Idle' and the Crazyflie is disconnected, double check if the flashing has succeded. In the cfclient, connect to the crazyflie and check in the console tab if you see: `ESP32: I (910) SYS: Initialized`. Also LED1 should be flashing with 2 hz.


{% img Flashing; wide; /images/tutorials/getting_started_with_aideck/cfclient_flash_esp.png %}

> NOTE: If you don't see  `ESP32: I (910) SYS: Initialized`, try go through the steps again.

{% endsi_step %}


{% si_step Gap8 bootloader %}

The GAP8 bootloader handles the process of flashing firmware to the GAP8 MCU over-the-air. Due to the production process, some
decks unfortunately have an old bootloader version when leaving the factory, and if this is the case a new bootloader
must be flashed to the deck. The symptom of an old bootloader is that flashing of firmware via the radio **stops at 4% or 99% and does not finish**.

> Continue with the [next step in this tutorial](#flash-wifi-example) to determine if your bootloader is working. If the flashing does not finish,
please go back to this step and flash the bootloader.

You will need to flash the bootloader on the GAP8 separately. This can only be done from a native linux computer or
virtual machine (not WSL) with a jtag enabled programmer (Olimex ARM-USB-TINY-H JTAG or Jlink).

> You only need to do this once and then you can enjoy the benefits of over-the-air flashing.

Clone, build and flash the bootloader with an Olimex ARM-USB-TINY-H JTAG or a Jlink using the following commands:

```
$ git clone https://github.com/bitcraze/aideck-gap8-bootloader.git
$ cd aideck-gap8-bootloader
$ docker run --rm -it -v $PWD:/module/ --device /dev/ttyUSB0 --privileged -P bitcraze/aideck /bin/bash -c 'export GAPY_OPENOCD_CABLE=interface/ftdi/olimex-arm-usb-tiny-h.cfg; source /gap_sdk/configs/ai_deck.sh; cd /module/;  make all image flash'
```

Check out the [aideck flashing documentation](/documentation/repository/aideck-gap8-examples/master/getting-started/flashing/) for more detailed instructions.

Once you see the following it means you were successful
```
--------------------------
flasher is done!
--------------------------
--------------------------
Reset CONFREG to 0
--------------------------
GAP8 examine target
RESET: jtag boot mode=3
DEPRECATED! use 'adapter [de]assert' not 'jtag_reset'
```

> NOTE: if you see `Error: Burst read failed` or something similar, make sure that the 10 pin lint cable is properly attached. The programmer is not able to connect to the aideck properly.

> If flashing hangs at `Initialising GAP8 JTAG TAP`, you probably have to disconnect and reconnect the programmer and restart the Crazyflie.

{% endsi_step %}

{% si_step Flash Wifi Example %}

1. Go to the [aideck example releases page](https://github.com/bitcraze/aideck-gap8-examples/releases) and download  `aideck_gap8_wifi_img_streamer_with_ap.bin` from the latest release.
2. With a crazyradio, replace [CRAZYFLIE_URI] with your crazyflie URI in the same form as `radio://0/80/2M/E7E7E7E7E7` and type the following in your terminal:

```
cfloader flash aideck_gap8_wifi_img_streamer_with_ap.bin deck-bcAI:gap8-fw -w [CRAZYFLIE_URI]
```
Then you will see:
```
Reset to bootloader mode ...
Could not save cache, no writable directory
Could not save cache, no writable directory
Skipping bcAI:esp, not in the target list
Deck bcAI:gap8, reset to bootloader
| 0% Writing to bcAI:gap8 deck memory
/ 1% Writing to bcAI:gap8 deck memory
...
\ 99% Writing to bcAI:gap8 deck memory
| 100% Writing to bcAI:gap8 deck memory
```

This only should take 10 seconds for the wifi example.

> NOTE: If the over air flashing hangs, try to [reflash the firmware and ESP again](/documentation/tutorials/getting-started-with-aideck/#update-crazyflie-and-aideck-firmware) and in case you flashed the gap8 bootloader, also flash that again with a programmer.

In your wifi list you should see 'WiFi streaming example'. If you do, please connect to it.


Clone the [AIdeck example repository](https://github.com/bitcraze/aideck-gap8-examples)

Then run:
```
cd examples/other/wifi-img-streamer
python opencv-viewer.py
```

to see the following:

{% img wide; medium; /images/tutorials/getting_started_with_aideck/viewer.png %}

Note: This viewer needs opencv-python which you can install with `pip install opencv-python`. Be aware that the cfclient has a conflict with this library (see this [issue](https://github.com/bitcraze/crazyflie-clients-python/issues/611)), so please install it in a seperate environment or remember to deinstall this library if you want to use the cfclient again.

{% endsi_step %}


{% si_intro Setup development environment %}
For development of the GAP8 chip, you need to have an environment with [the Gap SDK installed](https://github.com/GreenWaves-Technologies/gap_sdk). To make things easier, we have made a [Docker](https://www.docker.com/) container which should have everything (almost) everything configured.

In order to pull in the GAP8 SDK docker be able to use the autotiler in the GAP8 SDK (Facedetection and Classifcation examples) you will
have to manually set it up and accept the license.
{% endsi_intro %}

{% si_step Setting up docker and the autotiler%}

```
$ docker run --rm -it --name myAiDeckContainer bitcraze/aideck
$ cd /gap_sdk
$ source configs/ai_deck.sh
$ make autotiler
```

Follow the instructions of the autotiler pull script. Press enter immediately at  `Enter URL from email: `, fill in your information, wait for the email with the URL. Once you receive the email, fill the URL at the current `Enter URL from email: `, read the licence and accept if it is all fine to you.

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
applications or to try out some of our examples. To continue the tutorial, clone the
aideck-gap-example repository with
```
$ git clone https://github.com/bitcraze/aideck-gap8-examples.git
```
and jump over to one of the following examples:

* [WiFi image streamer](/documentation/repository/aideck-gap8-examples/master/test-functions/wifi-streamer)
* [Classification example](/documentation/repository/aideck-gap8-examples/master/ai-examples/classification-demo)

{% endsi_intro %}

{% si_intro Further reading %}

* Check out [the CPX documentation](/documentation/repository/crazyflie-firmware/master/functional-areas/cpx/) for more explanation of how to communicate with the {% poplink ai-deck %}
* [The GAP8 repository examples](/documentation/repository/aideck-gap8-examples/master/) to read about what examples we provide and to try them out
* [Greenwaves GAP github repository](https://github.com/GreenWaves-Technologies/gap_sdk) for the gap8 sdk and various examples.

{% endsi_intro %}
