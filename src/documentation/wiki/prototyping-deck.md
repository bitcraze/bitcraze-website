---
layout: page
title: Prototyping Deck Technical Details
page_id: prototyping-deck
---

The {% poplink prototyping-deck %} allows electronic circuits to be attached on Crazyflie 2.0.

Both through holes and SMD components can be soldered to the deck. The shape of the pads makes it possible to solder SMD capacitor and resistor which saves space and weight.

The two pad rows that are closest to the expansion connector are connected to the connectors.

{% img Prototyping board; small; /images/wiki/prototyping-deck/prototype-board-connection.png %}

## Specifications
* Makes all 20 pins in the Crazyflie 2.0 expansion port available
* 40 pads for prototyping (supporting both through hole and SMD components)
* Footprint for optional 1-wire memory (not mounted)
* Mechanical specification:
* Weight: 1.5 g
* Size (BxHxW): 28x28x4mm

## Detection memory
If you want your prototype deck to be detected automatically by the Crazyflie, for example to activate your driver code when the deck is connected, you can solder a one-wire memory DS28E05 in the pads near P1 pin 10.
