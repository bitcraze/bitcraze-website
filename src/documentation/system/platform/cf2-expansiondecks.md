---
layout: page
title: Expansion decks of the Crazyflie 2.x
page_id: cf2_expansiondecks
redirects:
  - /docs/cf2_expansiondecks/
---


Here is a list of expansion decks that are available for the Crazyflie 2.x:

| Expansion Deck | Description |
|---|---|---|
| {% poplink led-ring-deck %}|The LED-ring expansion deck |
| {% poplink buzzer-deck %} |The Buzzer expansion deck |
| {% poplink qi-1-2-wireless-charging-deck %}|Qi 1.2 compatible wireless charging deck |
| {% poplink prototyping-deck %}|The prototype expansion deck |
| {% poplink breakout-deck %}|The breakout expansion deck |
| {% poplink bigquad-deck %}|EARLY ACCESS Expansion deck to build a bigger quad |
| {% poplink sd-card-deck %}|Expansion deck to read, write files to SD-card |
| {% poplink z-ranger-deck %}|Expansion deck for precise height control. |
| {% poplink lighthouse-deck %}|Expansion deck that supports the SteamVR Lighthouse positioning |
| {% poplink motion-capture-marker-deck %}|Expansion deck where motion capture markers can easily be mounted |
| {% poplink active-marker-deck %}|Expansion deck with active IR LED for motion capture markers |
| {% poplink loco-positioning-deck %}|Expansion deck for the Loco positioning system |
| {% poplink multi-ranger-deck %}|Expansion deck for detecting obstacles |
| {% poplink flow-deck %}  | Expansion deck for detecting flow and height |
| {% poplink ai-deck %}  | AI expansion deck |
| {% poplink color-led-deck %}  | Color LED expansion deck |

### Additional information

[Expansion board
template](https://github.com/bitcraze/crazyflie2-exp-template-electronics): The Crazyflie
2.0/2.1 expansion port template

 {% id_link solder-deck-pins %}: Instructions to solder pins directly to the deck

Mechanical architecture
-----------------------

Expansion boards can be installed on top, bottom, or both top and bottom
of the Crazyflie 2.x. The Crazyflie 2.x and expansion board has 
pass-through connectors that can be fitted with pins. Pins in two
four different versions exist to permit installation of either one or two expansion
boards on the top of the Crazyflie, and one or two expansion boards on the bottom.
There should always be one expansion board or battery holder on top to
secure the battery, unless the battery is held by other means (ie.
rubber band, sticky pad, etc). The pins can be inserted from either the top or the bottom of the Crazyflie 2.x.

### Pins

| Pins | Name | Description | Suitable Set Up | Dimensions (Pin length x Plastic spacer x Pin length) | Datasheet |
|---|---|---|---|---|
| ![Short pins](/images/documentation/overview/short_pins.webp){:width="200px"} | Short Pins | Included with the Crazyflie 2.x.<br>[Availablie in store (combined with medium pins)](https://store.bitcraze.io/products/short-and-medium-pins) | Best suited for manual flight with only the **Battery Holder Deck** mounted on top. | 9mm x 2 mm x 2mm | [Datasheet](/documentation/hardware/short_and_medium_pins/short_and_medium_pins-datasheet.pdf) |
| ![Medium pins](/images/documentation/overview/medium_pins.webp){:width="200px"} | Medium Pins | Included with the Crazyflie 2.x.<br>[Availablie in store (combined with short pins)](https://store.bitcraze.io/products/short-and-medium-pins) | Designed for **two decks** total, **one deck on top and one deck on the bottom**. | 15mm x 2 mm x 2mm | [Datasheet](/documentation/hardware/short_and_medium_pins/short_and_medium_pins-datasheet.pdf) |
| ![Long pins (19+2+4mm)](/images/documentation/overview/long_pins_1924.webp){:width="200px"} | Long Pins (19+2+4mm) | [Available in store](https://store.bitcraze.io/products/long-pins-1924) | Designed for **three decks** total, optimized for **two decks on top and one deck on the bottom**. | 19mm x 2mm x 4 mm | [Datasheet](/documentation/hardware/long_pins_19_2_4mm/long_pins_19_2_4mm-datasheet.pdf) |
| ![Long pins (15+4+6mm)](/images/documentation/overview/long_pins_1546.webp){:width="200px"} | Long Pins (15+4+6mm) | Included with the AI deck.<br>[Available in store](https://store.bitcraze.io/products/long-pins-1546) | Designed for **three decks** total, optimized for **one deck on top and two decks on the bottom**. The wider plastic spacer provides extra support for the AI-deck when mounted underneath, helping keep it level. | 15 mm x 4mm x 6mm | [Datasheet](/documentation/hardware/long_pins_15_4_6mm/long_pins_15_4_6mm-datasheet.pdf) |

### Orientation

**WARNING**: It is important to install expansion boards in the right
orientation. Installing a board in the wrong orientation might damage
the expansion board and the Crazyflie 2.x.

All expansion boards display a logo describing the correct orientation:

![orientation symbols, overview](/images/documentation/overview/orientation-symbols.png){:width="800px"}

### One expansion board on top

![One expansion deck on top](/images/documentation/overview/exp_schetch_1top.png){:width="800px"}

### One expansion board on top, one on bottom

![One expansion deck on top and one under](/images/documentation/overview/exp_squetch_1top1bottom.png){:width="800px"}

### Two expansion board on top

![Two expansions decks on top](/images/documentation/overview/exp_squetch_2top.png){:width="800px"}

Expansion port pinout
---------------------

![Expansion port pinout](/documentation/hardware/crazyflie_2_1/crazyflie_2_1-deck-connector-multiplex.png){:width="900px"}

-   The Crazyflie 2.x is a 3.0V system, meaning a high output will be
    3.0V but still compatible with a 3.3V system.
-   VCC can supply max 100mA
-   VCOM can supply max 1.0A
-   All IO pins are 5V tolerant except PA5 and the NRF51 pins
-   The NRF51 pins can be multiplexed with any of the available NRF51
    peripheral.
-   The STM32F405RG pins can be multiplexed with more functions.

For full specification see the datasheets of the NRF51 and the STM32F405

Expansion board detection
-------------------------

Expansion boards are detected by having a one-wire memory cabled on the
OW pin. At startup memories are detected and read by the power
management MCU, the nRF51822. If no incompatibility is detected the
nRF51 starts the system and makes available the memories content to the
application processor, the STM32F4, where the application code is
running.

Deck info
---------

| VID  | PID  | ID            | Name                                          | Weight | Consumption                | Mount location |
|------|------|---------------|-----------------------------------------------|--------|----------------------------|----------------|
| 0xBC | 0x01 | bcLedRing     | {% poplink led-ring-deck %}                   | 3.3g   | 0 - 700mA                  | Under          |
| 0xBC | 0x02 | bcQi          | {% poplink qi-1-2-wireless-charging-deck %}   | 5g     | N/A                        | Under          |
| 0xBC | 0x04 | bcBuzzer      | {% poplink buzzer-deck %}                     | 1.8g   | 10mA                       | Under/Above    |
| 0xBC | 0x05 | bcBigQuad     | {% poplink bigquad-deck %}                    | 3.8g   | N/A                        | Under/Above    |
| 0xBC | 0x06 | bcLoco        | {% poplink loco-positioning-deck %}           | 3.3g   | 160mA                      | Under/Above    |
| 0xBC | 0x08 | bcUSD         | {% poplink sd-card-deck %}                    | 1.7g   | ~30mA                      | Under/Above    |
| 0xBC | 0x09 | bcZRanger     | {% id_link product-z-ranger-deck %}           | 1.3g   | ~15mA                      | Under          |
| 0xBC | 0x0A | bcFlow        | {% id_link product-flow-deck %}               | 1.6g   | ~40mA                      | Under          |
| 0xBC | 0x0B | bcOA          | Obstacle Avoidance                            | N/A    | ~0.3mA                     | Above          |
| 0xBC | 0x0C | bcMultiranger | {% poplink multi-ranger-deck%}                | 2.3g   | ~90mA (depending on mode)  | Above          |
| 0xBC | 0x0D | bcMocap       | {% poplink motion-capture-marker-deck %}      | 1.6g   | 0mA                        | Above          |
| 0xBC | 0x0E | bcZRanger2    | {% poplink z-ranger-deck %}                   | 1.3g   | ~15mA                      | Under          |
| 0xBC | 0x0F | bcFlow2       | {% poplink flow-deck %}                       | 1.6g   | ~40mA                      | Under          |
| 0xBC | 0x10 | bcLighthouse4 | {% poplink lighthouse-deck %}                 | 2.7g   | ~40mA                      | Above          |
| 0xBC | 0x11 | bcActiveM     | {% poplink active-marker-deck %}              | 3.3g   | ~40mA                      | Above          |
| 0xBC | 0x12 | bcAI          | {% poplink ai-deck %}                         | 4.4g   | depending on deck app      | Under/Above    |
| 0xBC | 0x13 | bcHPLedDown   | {% poplink color-led-deck %} (bottom-mounted) | 3.5g   | up to 300mA per channel    | Under          |
| 0xBC | 0x14 | bcHPLedUp     | {% poplink color-led-deck %} (top-mounted)    | 3.5g   | up to 300mA per channel    | Above          |
|------|------|---------------|-----------------------------------------------|--------|----------------------------|----------------|

Deck pin allocation
-------------------

Below is a table showing which pins each deck uses. The table also
contains information about boards that are not released yet, these are
subject to change.

Assignments in parenthesis are unconnected but connectable via solder
bridges or 0 Ohm resistors and are thus alternative connections. The
idea is to make it possible to re-route a connection if you want to use
two decks where the connections collide.

|                                                   | UART1  | UART1 | I2C   | I2C   | STM32 IO | STM32 IO     | STM32 IO | STM32 IO   | UART2 | UART2 | SPI   | SPI   | SPI   | nRF51 IO | nRF51 IO |      |
| Name                                              | RX1    |  TX1  | SDA   | SCL   | IO1      |  IO2         | IO3      | IO4        | TX2   | RX2   | SCK   | MOSI  | MISO  | NIO1     | NIO2     | PWR  |
|---------------------------------------------------|--------|-------|-------|-------|----------|--------------|----------|------------|-------|-------|-------|-------|-------|----------|----------|------|
| **{% poplink led-ring-deck %}**                   |        |       |       |       |          |  PWM         |  PWM     |            |       |       |       |       |       |          |          | VCOM |
| **{% poplink qi-1-2-wireless-charging-deck %}**   |        |       |       |       |          |              |          |            |       |       |       |       |       | CHG      |          | N/A  |
| **{% poplink sd-card-deck %}**                    |*(MISO)*|*(SCK)*|       |       | *(CS)*   | *(CS)*       |  *(CS)*  | CS/*(MOSI)*|       |       | SCK   | MOSI  | MISO  |          |          | VCC  |
| **{% poplink loco-positioning-deck %}**           | IRQ    | RST   |       |       | CS       | *(IRQ)*      | *(RST)*  |            |       |       | SCK   | MOSI  | MISO  |          |          | VCOM |
| **{% poplink bigquad-deck %}**                    |*(RX1)* |*(TX1)*|*(SDA)*|*(SCL)*|          | PWM          | PWM      | *(IO)*     | PWM   | PWM   |*(ADC)*|*(ADC)*| *(IO)*|          |          | N/A  |
| **{% poplink buzzer-deck %}**                     |        |       |       |       |          |              |          |            | PWM   | PWM   |       |       |       |          |          | N/A  |
| **{% poplink z-ranger-deck %}, Z-ranger deck V1** |        |       | SDA   | SCL   |          |*(VL53_IO)*   |          |            |       |       |       |       |       |          |          | VCC  |
| **{% poplink flow-deck %}, Flow deck V1**         |        |       | SDA   | SCL   |          |*(RST/MOT/IO)*| CS       |            |*(RST)*|*(MOT)*| SCK   | MOSI  | MISO  |          |          | VCC  |
| **{% poplink multi-ranger-deck%}**                |        |       | SDA   | SCL   |          |              |          |            |       |       |       |       |       |          |          | VCOM |
| **{% poplink motion-capture-marker-deck %}**      |        |       |       |       |          |*(BTN/IO)*    |*(BTN/IO)*|            |       |       |       |       |       |          |          | N/A  |
| **{% poplink lighthouse-deck %}**                 | RX1    | TX1   |*(SDA)*|*(SCL)*|          |              |          |            |       |       |       |       |       |          |          | N/A  |
| **{% poplink active-marker-deck %}**              |        |       | SDA   | SCL   |          |              |          |            |       |       |       |       |       |          |          | N/A  |
| **{% poplink ai-deck %}**                         | RX1    | TX1   | SDA   | SCL   | BOOT     |              |          | RST        | TX2   | RX2   |       |       |       |          |          | VCOM |
| **{% poplink color-led-deck %}**                  |        |       | SDA   | SCL   |          |              |          |            |       |       |       |       |       |          |          | VCOM |
|---------------------------------------------------|--------|-------|-------|-------|----------|--------------|----------|------------|-------|-------|-------|-------|-------|----------|----------|------|

Compatibility matrixes
----------------------

### Platform - deck

This table shows which deck that works on which platform.

|                                                   | Crazyflie 2.0, 2.1(+)| Crazyflie 2.1 Brushless|
|---------------------------------------------------|----------------------|------------------------|
| **{% poplink led-ring-deck %}**                   | yes                  | no                     |
| **{% poplink qi-1-2-wireless-charging-deck %}**   | yes                  | yes                    |
| **{% poplink sd-card-deck %}**                    | yes                  | yes                    |
| **{% poplink loco-positioning-deck %}**           | yes                  | yes                    |
| **{% poplink bigquad-deck %}**                    | yes                  | yes                    |
| **{% poplink buzzer-deck %}**                     | yes                  | yes                    |
| **{% poplink z-ranger-deck %}, Z-ranger deck V1** | yes                  | yes                    |
| **{% poplink flow-deck %}, Flow deck V1**         | yes                  | yes                    |
| **{% poplink multi-ranger-deck%}**                | yes                  | yes                    |
| **{% poplink motion-capture-marker-deck %}**      | yes                  | yes                    |
| **{% poplink lighthouse-deck %}**                 | yes                  | yes                    |
| **{% poplink active-marker-deck %}**              | yes                  | yes                    |
| **{% poplink ai-deck %}**                         | yes                  | yes                    |
| **{% poplink color-led-deck %}**                  | yes                  | yes                    |
|---------------------------------------------------|----------------------|------------------------|

### Deck - deck

This table shows which decks that can be used at the same time.

**Note**: This matrix is for unmodified decks and the standard firmware.
Some decks can be modified to use other pins on the expansion port and
thus work with decks that are marked as not compatible. Also decks that
are normally physically blocking each other are marked as not
compatible.


 |                           | {% poplink led-ring-deck %} | {% poplink qi-1-2-wireless-charging-deck %} | {% poplink sd-card-deck %} | {% poplink loco-positioning-deck %} | {% poplink bigquad-deck %} | {% poplink buzzer-deck %} | {% poplink z-ranger-deck %}, Z-ranger V1 | {% poplink flow-deck %}, Flow deck V1 | {% poplink multi-ranger-deck%} | {% poplink motion-capture-marker-deck %} | {% poplink lighthouse-deck %} | {% poplink active-marker-deck %} | {% poplink ai-deck %} | {% poplink color-led-deck %} |
 |----------------------------------------------------|----------|----------|----------|------------------|---------|--------|----------|--------|--------------|--------------|------------|---------------|---------|-----------|
 | **{% poplink led-ring-deck %}**                    | -        |          | yes      | yes              |         | yes    |          |        | yes          | yes          | yes        | yes           | yes     | yes       |
 | **{% poplink qi-1-2-wireless-charging-deck %}**    |          | -        | yes      | yes              | yes     | yes    |          |        | yes          | yes          | yes        | yes           | yes     | yes       |
 | **{% poplink sd-card-deck %}**                     | yes      | yes      | -        | yes *1           | yes     | yes    | yes      | yes *1 | yes          | yes          | yes        | yes           | *4      | yes       |
 | **{% poplink loco-positioning-deck %}**            | yes      | yes      | yes *1   | -                | yes     | yes    | yes      | yes    | yes          | yes          | *2         | yes           | *5      | yes       |
 | **{% poplink bigquad-deck %}**                     |          | yes      | yes      | yes              | -       |        | yes      |        | yes          | yes          | *2         | yes           | *6      | yes       |
 | **{% poplink buzzer-deck %}**                      | yes      | yes      | yes      | yes              |         | -      | yes      | yes    | yes          | yes          | yes        | yes           | *6      | yes       |
 | **{% poplink z-ranger-deck %}, Z-ranger V1**       |          |          | yes      | yes              | yes     | yes    | -        |        | yes          | yes          | yes        | yes           | yes     | yes       |
 | **{% poplink flow-deck %}, Flow deck V1**          |          |          | yes *1   | yes              |         | yes    |          | -      | yes          | yes          | yes        | yes           | yes     | yes       |
 | **{% poplink multi-ranger-deck%}**                 | yes      | yes      | yes      | yes              | yes     | yes    | yes      | yes    | -            | yes          | yes        | yes           | yes     | yes       |
 | **{% poplink motion-capture-marker-deck %}**       | yes      | yes      | yes      | yes              | yes     | yes    | yes      | yes    | yes          | -            | yes        |               | yes     | yes       |
 | **{% poplink lighthouse-deck %}**                  | yes      | yes      | yes      | *2               | *2      | yes    | yes      | yes    | yes          | yes          | -          |               | *3      | yes       |
 | **{% poplink active-marker-deck %}**               | yes      | yes      | yes      | yes              | yes     | yes    | yes      | yes    | yes          |              |            | -             | yes     | yes       |
 | **{% poplink ai-deck %}**                          | yes      | yes      | *4       | *5               | *6      | *6     | yes      | yes    | yes          | yes          | *3         | yes           | -       | yes       |
 | **{% poplink color-led-deck %}**                   | yes      | yes      | yes      | yes              | yes     | yes    | yes      | yes    | yes          | yes          | yes        | yes           | yes     | -         |
 |----------------------------------------------------|----------|----------|----------|------------------|---------|--------|----------|--------|--------------|--------------|------------|---------------|---------|-----------|

<!--                                                  | led-ring | qi charg | sd-card  | loco-positioning | bigquad | buzzer | z-ranger | flow   | multi-ranger | mocap marker | lighthouse | active marker | ai-deck | color-LED |-->
**Notes:**

1.  SPI sharing might limit the logging speed of the uSD-card deck.
2.  Could be patched using soldering bridges or can be supported in the future, SW update
3.  The GAP8 module is connected to UART1, so if that is enabled there will be conflicts
4.  The Micro-SD deck and AI deck both use IO4, the Micro-SD deck needs to be patched to use another IO for Chip Select
5.  With a patch or workaround it is possible
6.  CPX uses UART2 to communicate with the ESP32 by default, if that is enabled there will be conflicts.
