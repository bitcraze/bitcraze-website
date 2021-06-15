---
layout: page
title: Lighthouse deck with other hardware
page_id: lh-deck-other-hardware
---

## Using the deck with other hardware

The deck has 4 solder pad on the bottom that are designed to allow using the lighthouse deck with other hardware. The 4 pads are labeled and corresponds to the connector P3 in the deck schematic.

The pads GND and VCOM can be used to supply power to the deck. There is a 3.0V LDO regulator on the board which means that VCOM can be in the range of ~3.3V to 5.5V.

RX and TX are connected directly to the iCE40LP5K FPGA. The FPGA is quite sensitive and the maximum voltage that can be applied to these pins is 3.2V, applying more than that will damage the FPGA. This makes the deck incompatible with 3.3V system out of the box, but adding a voltage-divider before RX and making sure there is never a pull-up to TX would be enough to interface the deck with a 3.3V system.

The deck boots in [bootloader mode](/documentation/repository/lighthouse-bootloader/master/) , the external system is responsible to update the bitstream if necessary and boot the board using the serial port.

