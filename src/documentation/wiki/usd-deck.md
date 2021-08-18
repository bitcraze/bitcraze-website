---
layout: page
title: Micro SD Deck Technical Details
page_id: usd-deck
---
The {% poplink sd-card-deck %} Adds the possibility to read and write files to a micro SD card.

{% img Micro SD deck; small; /images/wiki/usd-deck/microsd-top.png %}

## Specification
* micro-SD card socket connected in SPI mode.
* 1-wire memory for automatic expansion deck detection
* Designed for mounting above or under the Crazyflie 2.0
* Mechanical specification:
* Weight: 1.7g
* Size (WxHxD): 21x28x4mm

## Alternate Pins
The SD-Card is using the SPI bus on the deck port to communicate. In some cases, it might be beneficial to use another SPI bus. One option is to use a "hidden" SPI on the deck port that is multiplexed with TX1, RX1 and IO_4. This SPI port is called SPI3 in the STM32F405 and there is a possibility to switch to this SPI bus.
 * First thing the SD-card deck needs to be patched, CS->RX2(PA3), SCLK->TX1(PC10), MISO->RX1(PC11), MOSI->IO_4(PC12) and this is a quite hard to cut the small lines and solder small patch wires. Easier is to use a sd-card breakout deck such as [this](https://www.sparkfun.com/products/544) and solder wires to e.g. the battery holder board.
 * Compile the firmware with `CFLAGS += -DUSDDECK_USE_ALT_PINS_AND_SPI` in your config.mk file.
 * If you want to use the Loco-deck at the same time, the alternative pins for this must be used. This means cutting GS1 and GS2 underneath the loco-deck and soldering the bridged GS3 and GS4. Then add `CFLAGS += -DLOCODECK_USE_ALT_PINS` to you config.mk as well.
