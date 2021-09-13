---
layout: page
title: Expansion decks of the Crazyflie 2.X
page_id: cf2_expansiondecks
redirects:
  - /docs/cf2_expansiondecks/
---


Here is a list of expansion decks that are available for the Crazyflie 2.X:

| Expansion Deck | Description | Technical doc | Additional instructions |
|---|---|---|---|
| {% poplink led-ring-deck %}|The LED-ring expansion deck |[datasheet](/documentation/hardware/led_ring_deck/led_ring_deck-datasheet.pdf), [schematics](/documentation/hardware/led_ring_deck/led-ring_revb.pdf) | |
| {% poplink buzzer-deck %} |The Buzzer expansion deck | [datasheet](/documentation/hardware/buzzer_deck/buzzer_deck-datasheet.pdf), [schematics](/documentation/hardware/buzzer_deck/buzzer-revc.pdf) | [Changing the sound](/documentation/repository/crazyflie-firmware/master/userguides/decks/buzzer-deck/) |
| {% poplink qi-1-2-wireless-charging-deck %}|Qi 1.2 compatible wireless charging deck| [datasheet](/documentation/hardware/qi_deck_1_2/qi_deck_1_2-datasheet.pdf), [schematics](/documentation/hardware/qi_deck_1_2/qi_1_2-revc.pdf)  | |
| {% poplink prototyping-deck %}|The prototype expansion deck|[datasheet](/documentation/hardware/prototyping_deck/prototyping_deck-datasheet.pdf), [schematics](/documentation/hardware/prototyping_deck/prototyping-revb.pdf)   | |
| {% poplink breakout-deck %}|The breakout expansion deck|[datasheet](/documentation/hardware/breakout_deck/breakout_deck-datasheet.pdf), [schematics](/documentation/hardware/breakout_deck/breakout-revc.pdf)   | |
| {% id_link product-bigquad-deck%}|EARLY ACCESS Expansion deck to build a bigger quad| [datasheet](/documentation/hardware/big_quad_deck/big_quad_deck-datasheet.pdf), [schematics](/documentation/hardware/big_quad_deck/bigquad-rev-c.pdf)   | {% id_link product-bigquad-deck %}|
| {% poplink sd-card-deck %}|Expansion deck to read, write files to SD-card| [datasheet](/documentation/hardware/sd_card_deck/sd_card_deck-datasheet.pdf), [schematics](/documentation/hardware/sd_card_deck/sdcard_revb.pdf)  | [Data Logging](/documentation/repository/crazyflie-firmware/master/userguides/decks/micro-sd-card-deck/) |
| {% poplink z-ranger-deck %}|Expansion deck for precise height control.| [datasheet](/documentation/hardware/z_ranger_deck_2/z_ranger_deck_2-datasheet.pdf), [schematics](/documentation/hardware/z_ranger_deck_2/z-ranger_v2_reva.pdf) | |
| {% poplink lighthouse-deck %}|Expansion deck that supports the SteamVR Lighthouse positioning| [datasheet](/documentation/hardware/lighthouse_deck/lighthouse_deck-datasheet.pdf), [schematics](/documentation/hardware/lighthouse_deck/lighthouse_deck-datasheet.pdf) |  |
| {% poplink motion-capture-marker-deck %}|Expansion deck where motion capture markers can easily be mounted|[datasheet](/documentation/hardware/passive_marker_deck/passive_marker_deck-datasheet.pdf), [schematics](/documentation/hardware/passive_marker_deck/passive-marker-deck-revc.pdf)  | |
| {% poplink active-marker-deck %}|Expansion deck with active IR LED for motion capture markers | [datasheet](/documentation/hardware/active_marker_deck/active_marker_deck-datasheet.pdf), [schematics](/documentation/hardware/active_marker_deck/active-marker-deck_revd.pdf)| |
| {% poplink loco-positioning-deck %}|Expansion deck for the Loco positioning system |  [datasheet](/documentation/hardware/loco_deck/loco_deck-datasheet.pdf), [schematics](/documentation/hardware/loco_deck/loco_deck_revd.pdf) | [Modes explanation](/documentation/repository/crazyflie-firmware/master/userguides/decks/active-marker-deck/)|
| {% poplink multi-ranger-deck %}|Expansion deck for detecting obstacles |  [datasheet](/documentation/hardware/multi_ranger_deck/multi_ranger_deck-datasheet.pdf), schematics [1](/documentation/hardware/multi_ranger_deck/multi-ranger-daughter-board-reve.pdf), [2](/documentation/hardware/multi_ranger_deck/multi-ranger-reve.pdf) | |
| {% poplink flow-deck %}  | Expansion deck for detecting flow and height |  [datasheet](/documentation/hardware/flow_deck_2/flow_deck_2-datasheet.pdf), [schematics](/documentation/hardware/flow_deck_2/flow-deck-v2-reva.pdf)| |

### Additional information

[Expansion board
template](https://github.com/bitcraze/crazyflie2-exp-template-electronics): The Crazyflie
2.0/2.1 expansion port template

 {% id_link solder-deck-pins %}: Instructions to solder pins directly to the deck

Mechanical architecture
-----------------------

Expansion boards can be installed on top, bottom, or both top and bottom
of the Crazyflie 2.X. The Crazyflie 2.X and expansion board have female,
pass-through connectors that can be fitted with male pins. Pins in two
differing lengths exist to permit installation of either one expansion
board on top, one board on bottom and one on top, or two boards on top.
There should always be one expansion board or battery holder on top to
secure the battery, unless the battery is held by other means (ie.
rubber band, sticky pad, etc...).

### Orientation

**WARNING**: It is important to install expansion boards in the right
orientation. Installing a board in the wrong orientation might damage
the expansion board and the Crazyflie 2.X.

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

![Expansion port pinout](/images/documentation/overview/connector_multiplexing2.png){:width="900px"}

-   The Crazyflie 2.X is a 3.0V system, meaning a high output will be
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

| VID  | PID  | ID            | Name                                        | Weight | Consumption                | Mount location |
|------|------|---------------|---------------------------------------------|--------|----------------------------|----------------|
| 0xBC | 0x01 | bcLedRing     | {% poplink led-ring-deck %}                 | 3.3g   | 0 - 700mA                  | Under          |
| 0xBC | 0x02 | bcQi          | {% poplink qi-1-2-wireless-charging-deck %} | 5g     | N/A                        | Under          |
| 0xBC | 0x04 | bcBuzzer      | {% poplink buzzer-deck %}                   | 1.8g   | 10mA                       | Under/Above    |
| 0xBC | 0x05 | bcBigQuad     | {% id_link product-bigquad-deck %}          | 3.8g   | N/A                        | Under/Above    |
| 0xBC | 0x06 | bcDWM         | {% poplink loco-positioning-deck %}         | 3.3g   | 160mA                      | Under/Above    |
| 0xBC | 0x08 | bcUSD         | {% poplink sd-card-deck %}                  | 1.7g   | ~30mA                      | Under/Above    |
| 0xBC | 0x09 | bcZRanger     | {% id_link product-z-ranger-deck %}         | 1.3g   | ~15mA                      | Under          |
| 0xBC | 0x0A | bcFlow        | {% id_link product-flow-deck %}             | 1.6g   | ~40mA                      | Under          |
| 0xBC | 0x0B | bcOA          | Obstacle Avoidance                          | N/A    | ~0.3mA                     | Above          |
| 0xBC | 0x0C | bcMultiranger | {% poplink multi-ranger-deck%}              | 2.3g   | ~90mA (depending on mode)  | Above          |
| 0xBC | 0x0D | bcMocap       | {% poplink motion-capture-marker-deck %}    | 1.6g   | 0mA                        | Above          |
| 0xBC | 0x0E | bcZRanger2    | {% poplink z-ranger-deck %}                 | 1.3g   | ~15mA                      | Under          |
| 0xBC | 0x0F | bcFlow2       | {% poplink flow-deck %}                     | 1.6g   | ~40mA                      | Under          |
| 0xBC | 0x10 | bcLighthouse4 | {% poplink lighthouse-deck %}               | 2.7g   | ~40mA                      | Above          |
| 0xBC | 0x11 | bcActiveM     | {% poplink active-marker-deck %}            | 3.3g   | ~40mA                      | Above          |
| 0xBC | 0x12 | bcAI          | {% id_link product-ai-deck-1-1 %}           | 4.4g   | depending on deck app      | Above          |
|------|------|---------------|---------------------------------------------|--------|----------------------------|----------------|

Deck pin allocation
-------------------

Below is a table showing which pins each deck uses. The table also
contains information about boards that are not released yet, these are
subject to change.

Assignments in parenthesis are unconnected but connectable via solder
bridges or 0 Ohm resistors and are thus alternative connections. The
idea is to make it possible to re-route a connection if you want to use
two decks where the connections collide.

|                           | UART1 | UART1 | I2C   | I2C   | STM32 IO | STM32 IO | STM32 IO | STM32 IO| UART2 | UART2 | SPI   | SPI   | SPI   | nRF51 IO | nRF51 IO |      |
| Name                      | RX1   |  TX1  | SDA   | SCL   | IO1      |  IO2     | IO3      | IO4     | TX2   | RX2   | CLK   | MOSI  | MISO  | NIO1     | NIO2     | PWR  |
|---------------------------|-------|-------|-------|-------|----------|----------|----------|---------|-------|-------|-------|-------|-------|----------|----------|------|
| **{% poplink led-ring-deck %}**             |       |       |       |       |          |  PWM     |  PWM     |         |       |       |       |       |       |          |          | VCOM |
| **{% poplink qi-1-2-wireless-charging-deck %}**                  |       |       |       |       |          |          |          |         |       |       |       |       |       | GHG      |          | N/A  |
| **bcGPS**                 | X     |  X    |       |       | *(PP)S*  |          | *(RST)*  |         | *(X)* | *(X)* |       |       |       |          | *(VBAT)* | VCOM |
| **{% poplink sd-card-deck %}**                 |       |       |       |       | *(CS)*   | *(CS)*   |  *(CS)*  | CS      |       |       |X      | X     |X      |          |          | VCC  |
| **{% poplink loco-positioning-deck %}**                 | IRQ   | RST   |       |       | CS       | *(IRQ)*  | *(RST)*  |         |       |       |X      | X     |X      |          |          | VCOM |
| **bcBigQuad**             | *(X)* | *(X)* | *(X)* | *(X)* |          | **X**    | **X**    | *(X)*   | **X** | **X** | *(X)* | *(X)* | *(X)* |          |          | N/A  |
| **{% poplink buzzer-deck %}**              |       |       |       |       |          |          |          |         | PWM   | PWM   |       |       |       |          |          | N/A  |
| **bcESP**                 |       |       |       |       |          |          |          | *(X)*   | X     | X     |       |       |       |          |          | N/A  |
| **{% poplink z-ranger-deck %}, Z-ranger deck V1** |       |       | X     | X     |          | *(X)*    |          |         |       |       |       |       |       |          |          | VCC  |
| **{% poplink flow-deck %}, Flow deck V1**        |       |       | X     | X     |          | *(X)*    | X        |         |       |       | X     | X     | X     |          |          | VCC  |
| **bcOA**                  |       |       | X     | X     |          |          |          |         |       |       |       |       |       |          |          | VCC  |
| **{% poplink multi-ranger-deck%}**         |       |       | X     | X     |          |          |          |         |       |       |       |       |       |          |          | VCOM |
| **{% poplink motion-capture-marker-deck %}**               |       |       |       |       |          |  *(X)*   | *(X)*    |         |       |       |       |       |       |          |          | N/A  |
| **{% poplink lighthouse-deck %}**         | X     | X     | X     | X     |          |          |          |         |       |       |       |       |       |          |          | N/A  |
| **{% poplink active-marker-deck %}**             |       |       | X     | X     |          |          |          |         |       |       |       |       |       |          |          | N/A  |
| **bcAI**                  | X     | X     | X     | X     | X        |          |          | X       | X     | X     |       |       |       |          |          | VCOM |
|---------------------------|-------|-------|-------|-------|----------|----------|----------|---------|-------|-------|-------|-------|-------|----------|----------|------|

Compatibility matrixes
----------------------

### Platform - deck

This table shows which deck that works on which platform.

|                           | Crazyflie 2.X  | Roadrunner|
|---------------------------|----------------|-----------|
| **{% poplink led-ring-deck %}**              | yes            | yes       |
| **{% poplink qi-1-2-wireless-charging-deck %}**            | yes            | yes       |
| **{% poplink sd-card-deck %}**              | yes            | *1        |
| **{% poplink loco-positioning-deck %}**      | yes            |           |
| **Big quad**              | yes            | yes       |
| **{% poplink buzzer-deck %}**                | yes            |           |
| **bcESP**                 | yes            | yes       |
| **{% poplink z-ranger-deck %}, Z-ranger deck V1** | yes            | yes       |
| **{% poplink flow-deck %}, Flow deck V1**         | yes            | yes       |
| **{% poplink multi-ranger-deck%}**          | yes            | yes       |
| **{% poplink motion-capture-marker-deck %}**     | yes            | yes       |
| **{% poplink lighthouse-deck %}**          | yes            | *2        |
| **{% poplink active-marker-deck %}**         | yes            | yes       |
| **AI deck**               | yes            | yes       |
|---------------------------|----------------|-----------|

### Deck - deck

This table shows which decks that can be used at the same time.

**Note**: This matrix is for unmodified decks and the standard firmware.
Some decks can be modified to use other pins on the expansion port and
thus work with decks that are marked as not compatible. Also decks that
are normally physically blocking each other are marked as not
compatible.


 |                           | LED-ring | Qi charger | Micro-SD | Loco Positioning |Big quad  | Buzzer | bcESP | Z-Ranger | Flow    | Multi-ranger | Mocap marker deck | Lighthouse deck | Active marker | AI deck |
 |---------------------------|----------|------------|----------|------------------|----------|--------|-------|----------|---------|--------------|-------------------|--------------|---------------|---------|
 | **{% poplink led-ring-deck %}**              | -        |            | yes      | yes              |          | yes    | yes   |          |         | yes          | yes               | yes          | yes           | yes     |
 | **{% poplink qi-1-2-wireless-charging-deck %}**            |          | -          | yes      | yes              | yes      | yes    | yes   |          |         | yes          | yes               | yes          | yes           | yes     |
 | **{% poplink sd-card-deck %}**              | yes      | yes        | -        | yes *1           | yes      | yes    | yes   | yes      | yes *1  | yes          | yes               | yes          | yes           | yes     |
 | **{% poplink loco-positioning-deck %}**      | yes      | yes        | yes *1   | -                | yes      | yes    | yes   | yes      | yes     | yes          | yes               | *2           | yes           | *2      |
 | **Big quad**              |          | yes        | yes      | yes              | -        |        |       | yes      |         | yes          | yes               | *2           | yes           | yes     |
 | **{% poplink buzzer-deck %}**                | yes      | yes        | yes      | yes              |          | -      |       | yes      | yes     | yes          | yes               | yes          | yes           | yes     |
 | **bcESP**                 | yes      | yes        | yes      | yes              |          |        | -     | yes      | yes     | yes          | yes               | yes          | yes           | yes     |
 | **{% poplink z-ranger-deck %}, Z-ranger V1** |          |            | yes      | yes              | yes      | yes    | yes   | -        |         | yes          | yes               | yes          | yes           | yes     |
 | **{% poplink flow-deck %}, Flow deck V1**        |          |            | yes *1   | yes              |          | yes    | yes   |          | -       | yes          | yes               | yes          | yes           | yes     |
 | **{% poplink multi-ranger-deck%}**          | yes      | yes        | yes      | yes              | yes      | yes    | yes   | yes      | yes     | -            | yes               | yes          | yes           | yes     |
 | **{% poplink motion-capture-marker-deck %}**     | yes      | yes        | yes      | yes              | yes      | yes    | yes   | yes      | yes     | yes          | -                 | yes          |               | yes     |
 | **{% poplink lighthouse-deck %}**          | yes      | yes        | yes      | *2               | *2       | yes    | yes   | yes      | yes     | yes          | yes               | -            |               | *3      |
 | **{% poplink active-marker-deck %}**         | yes      | yes        | yes      | yes              | yes      | yes    | yes   | yes      | yes     | yes          |                   |              | -             | yes     |
 | **AI deck**               | yes      | yes        | yes      | *2               | yes      | yes    | yes   | yes      | yes     | yes          | yes               | *3           | yes           | -       |
 |---------------------------|----------|------------|----------|------------------|----------|--------|-------|----------|---------|--------------|-------------------|--------------|---------------|---------|

**Notes:**

1.  SPI sharing might limit the logging speed of the uSD-card deck.
2.  Will be supported in the future, SW update
3.  The GAP8 module is connected to UART1, so if that is enabled there will be conflicts
