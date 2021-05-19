---
layout: page
title: Expansion decks of the Crazyflie 2.X
page_id: cf2_expansiondecks
redirects:
  - /docs/cf2_expansiondecks/
---


Here is a list of expansion decks that are available for the Crazyflie 2.X:
-   [LED-ring expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:ledring): The LED-ring
    expansion deck
-   [Buzzer expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:buzzer): The Buzzer
    expansion deck
-   [Qi expansion deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:qi): The Qi
    inductive charging expansion deck
-   [Qi 1.2 deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:qi1_2): Qi 1.2
    compatible wireless charging deck
-   [Prototype expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:proto): The prototype
    expansion deck
-   [Breakout expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:breakout): The breakout
    expansion deck
-   [BigQuad expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:bigquad): Expansion deck
    to build a bigger quad
-   [Micro SD expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:microsd): Expansion deck
    to read, write files to SD-card.
-   [Z-ranger expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:zranger): Expansion deck
    for precise height control.
-   [Bosch Sensortec expansion
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:bosch): Expansion deck
    with a variety of Bosch Sensortec sensors
-   [Lighthouse positioning
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:lighthouse): Expansion
    deck that supports the SteamVR Lighthouse positioning
-   [Motion capture marker
    deck](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:mocapmarker): Expansion
    deck where motion capture markers can easily be mounted

[Expansion board
template](https://wiki.bitcraze.io/projects:crazyflie2:expansionboards:template): The Crazyflie
2.0 expansion port template explained

Mechanical architecture
-----------------------

Expansion boards can be installed on top, bottom, or both top and bottom
of the Crazyflie 2.X. The Crazyflie 2.X and expansion board have female,
pass-through connectors that can be fitted with male pins. Pins in two
differing lengths exist to permit installation of either one expansion
board on top, one board on bottom and one on top, or two boards on top.
There should always be one expansion board or battery holder on top to
secure the battery, unless the battery is held by other means (ie.
rubber band, sticky pad, etc\...).

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

![Two expancions decks on top](/images/documentation/overview/exp_squetch_2top.png){:width="800px"}

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

| VID  | PID  | ID            | Name               | Weight | Consumption                | Mount location | Details page                                                             |
|------|------|---------------|--------------------|--------|----------------------------|----------------|--------------------------------------------------------------------------|
| 0xBC | 0x01 | bcLedRing     | LED-ring           | 3.3g   | 0 - 700mA                  | Under          | [link](https://store.bitcraze.io/products/led-ring-deck)                 |
| 0xBC | 0x02 | bcQi          | Qi charger         | 5g     | N/A                        | Under          | [link](https://store.bitcraze.io/products/qi-1-2-wireless-charging-deck) |
| 0xBC | 0x04 | bcBuzzer      | Buzzer             | 1.8g   | 10mA                       | Under/Above    | [link](https://store.bitcraze.io/products/buzzer-deck)                   |
| 0xBC | 0x05 | bcBigQuad     | Big quad           | 3.8g   | N/A                        | Under/Above    | [link](https://store.bitcraze.io/products/bigquad-deck)                  |
| 0xBC | 0x06 | bcDWM         | Loco Positioning   | 3.3g   | 160mA                      | Under/Above    | [link](https://store.bitcraze.io/products/loco-positioning-deck)         |
| 0xBC | 0x08 | bcUSD         | Micro-SD           | 1.7g   | \~30mA                     | Under/Above    | [link](https://store.bitcraze.io/products/sd-card-deck)                  |
| 0xBC | 0x09 | bcZRanger     | Z-Ranger           | 1.3g   | \~15mA                     | Under          | [link](https://store.bitcraze.io/products/z-ranger-deck)                 |
| 0xBC | 0x0A | bcFlow        | Flow               | 1.6g   | \~40mA                     | Under          | [link](https://store.bitcraze.io/products/flow-deck)                     |
| 0xBC | 0x0B | bcOA          | Obstacle Avoidance | N/A    | \~0.3mA                    | Above          | N/A                                                                      |
| 0xBC | 0x0C | bcMultiranger | Multi-ranger       | 2.3g   | \~90mA (depending on mode) | Above          | [link](https://store.bitcraze.io/products/multi-ranger-deck)             |
| 0xBC | 0x0D | bcMocap       | Mocap marker deck  | 1.6g   | 0mA                        | Above          | [link](https://store.bitcraze.io/products/motion-capture-marker-deck)    |
| 0xBC | 0x0E | bcZRanger2    | Z-Ranger v2        | 1.3g   | \~15mA                     | Under          | [link](https://store.bitcraze.io/products/z-ranger-deck-v2)              |
| 0xBC | 0x0F | bcFlow2       | Flow v2            | 1.6g   | \~40mA                     | Under          | [link](https://store.bitcraze.io/products/flow-deck-v2)                  |
| 0xBC | 0x10 | bcLighthouse4 | Lighthouse-4       | 2.7g   | \~40mA                     | Above          | [link](https://store.bitcraze.io/products/lighthouse-positioning-deck)   |
| 0xBC | 0x11 | bcActiveM     | Active marker deck | 3.3g   | \~40mA                     | Above          | [link](https://store.bitcraze.io/products/active-marker-deck)            |
| 0xBC | 0x12 | bcAI          | AI deck            | 4.4g   | depending on deck app      | Above          | [link](https://store.bitcraze.io/products/ai-deck-1-1)                   |
|------|------|---------------|--------------------|--------|----------------------------|----------------|--------------------------------------------------------------------------|

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
| **bcLedRing**             |       |       |       |       |          |  PWM     |  PWM     |         |       |       |       |       |       |          |          | VCOM |
| **bcQi**                  |       |       |       |       |          |          |          |         |       |       |       |       |       | GHG      |          | N/A  |
| **bcGPS**                 | X     |  X    |       |       | *(PP)S*  |          | *(RST)*  |         | *(X)* | *(X)* |       |       |       |          | *(VBAT)* | VCOM |
| **bcUSD**                 |       |       |       |       | *(CS)*   | *(CS)*   |  *(CS)*  | CS      |       |       |X      | X     |X      |          |          | VCC  |
| **bcDWM**                 | IRQ   | RST   |       |       | CS       | *(IRQ)*  | *(RST)*  |         |       |       |X      | X     |X      |          |          | VCOM |
| **bcBigQuad**             | *(X)* | *(X)* | *(X)* | *(X)* |          | **X**    | **X**    | *(X)*   | **X** | **X** | *(X)* | *(X)* | *(X)* |          |          | N/A  |
| **bcBuzzer**              |       |       |       |       |          |          |          |         | PWM   | PWM   |       |       |       |          |          | N/A  |
| **bcESP**                 |       |       |       |       |          |          |          | *(X)*   | X     | X     |       |       |       |          |          | N/A  |
| **bcZRanger, bcZRanger2** |       |       | X     | X     |          | *(X)*    |          |         |       |       |       |       |       |          |          | VCC  |
| **bcFlow, bcFlow2**       |       |       | X     | X     |          | *(X)*    | X        |         |       |       | X     | X     | X     |          |          | VCC  |
| **bcOA**                  |       |       | X     | X     |          |          |          |         |       |       |       |       |       |          |          | VCC  |
| **bcMultiranger**         |       |       | X     | X     |          |          |          |         |       |       |       |       |       |          |          | VCOM |
| **bcMocap**               |       |       |       |       |          |  *(X)*   | *(X)*    |         |       |       |       |       |       |          |          | N/A  |
| **bcLighthouse4**         | X     | X     | X     | X     |          |          |          |         |       |       |       |       |       |          |          | N/A  |
| **bcActiveM**             |       |       | X     | X     |          |          |          |         |       |       |       |       |       |          |          | N/A  |
| **bcAI**                  | X     | X     | X     | X     | X        |          |          | X       | X     | X     |       |       |       |          |          | VCOM |
|---------------------------|-------|-------|-------|-------|----------|----------|----------|---------|-------|-------|-------|-------|-------|----------|----------|------|

Compatibility matrixes
----------------------

### Platform - deck

This table shows which deck that works on which platform.

|                           | Crazyflie 2.X  | Roadrunner|
|---------------------------|----------------|-----------|
| **LED-ring**              | yes            | yes       |
| **Qi charger**            | yes            | yes       |
| **Micro-SD**              | yes            | \*1       |
| **Loco Positioning**      | yes            |           |
| **Big quad**              | yes            | yes       |
| **Buzzer**                | yes            |           |
| **bcESP**                 | yes            | yes       |
| **Z-Ranger, Z-Ranger V2** | yes            | yes       |
| **Flow, Flow V2**         | yes            | yes       |
| **Multi-ranger**          | yes            | yes       |
| **Mocap marker deck**     | yes            | yes       |
| **Lighthouse-4**          | yes            | \*2       |
| **Active marker**         | yes            | yes       |
| **AI deck**               | yes            | yes       |
|---------------------------|----------------|-----------|

### Deck - deck

This table shows which decks that can be used at the same time.

**Note**: This matrix is for unmodified decks and the standard firmware.
Some decks can be modified to use other pins on the expansion port and
thus work with decks that are marked as not compatible. Also decks that
are normally physically blocking each other are marked as not
compatible.


 |                           | LED-ring | Qi charger | Micro-SD | Loco Positioning |Big quad  | Buzzer | bcESP | Z-Ranger | Flow    | Multi-ranger | Mocap marker deck | Lighthouse-4 | Active marker | AI deck |
 |---------------------------|----------|------------|----------|------------------|----------|--------|-------|----------|---------|--------------|-------------------|--------------|---------------|---------|
 | **LED-ring**              | -        |            | yes      | yes              |          | yes    | yes   |          |         | yes          | yes               | yes          | yes           | yes     |
 | **Qi charger**            |          | -          | yes      | yes              | yes      | yes    | yes   |          |         | yes          | yes               | yes          | yes           | yes     |
 | **Micro-SD**              | yes      | yes        | -        | yes \*1          | yes      | yes    | yes   | yes      | yes \*1 | yes          | yes               | yes          | yes           | yes     |
 | **Loco Positioning**      | yes      | yes        | yes \*1  | -                | yes      | yes    | yes   | yes      | yes     | yes          | yes               | \*2          | yes           | \*2     |
 | **Big quad**              |          | yes        | yes      | yes              | -        |        |       | yes      |         | yes          | yes               | \*2          | yes           | yes     |
 | **Buzzer**                | yes      | yes        | yes      | yes              |          | -      |       | yes      | yes     | yes          | yes               | yes          | yes           | yes     |
 | **bcESP**                 | yes      | yes        | yes      | yes              |          |        | -     | yes      | yes     | yes          | yes               | yes          | yes           | yes     |
 | **Z-Ranger, Z-Ranger V2** |          |            | yes      | yes              | yes      | yes    | yes   | -        |         | yes          | yes               | yes          | yes           | yes     |
 | **Flow, Flow V2**         |          |            | yes \*1  | yes              |          | yes    | yes   |          | -       | yes          | yes               | yes          | yes           | yes     |
 | **Multi-ranger**          | yes      | yes        | yes      | yes              | yes      | yes    | yes   | yes      | yes     | -            | yes               | yes          | yes           | yes     |
 | **Mocap marker deck**     | yes      | yes        | yes      | yes              | yes      | yes    | yes   | yes      | yes     | yes          | -                 | yes          |               | yes     |
 | **Lighthouse-4**          | yes      | yes        | yes      | \*2              | \*2      | yes    | yes   | yes      | yes     | yes          | yes               | -            |               | \*3     |
 | **Active marker**         | yes      | yes        | yes      | yes              | yes      | yes    | yes   | yes      | yes     | yes          |                   |              | -             | yes     |
 | **AI deck**               | yes      | yes        | yes      | \*2              | yes      | yes    | yes   | yes      | yes     | yes          | yes               | \*3          | yes           | -       |
 |---------------------------|----------|------------|----------|------------------|----------|--------|-------|----------|---------|--------------|-------------------|--------------|---------------|---------|

**Notes:**

1.  SPI sharing might limit the logging speed of the uSD-card deck.
2.  Will be supported in the future, SW update
3.  The GAP8 module is connected to UART1, so if that is enabled there will be conflicts
