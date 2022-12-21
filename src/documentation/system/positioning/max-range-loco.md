---
layout: page
title: Maximum range for loco positioning
page_id: max-range-loco
---
# Measurements of maximum ranges for the Loco Positioning system

To establish a basic knowledge of the maximum ranges that the Loco Positioning system can cover, we have made some simple measurements. The measurements are in no way scientific or exact, but at least gives a hint of the performance with a few different power settings. We were also interested in finding out differences in the orientation of the antenna as well as if there is a difference inside compared to outdoors conditions.

## Background

The Loco Positioning system is based on the [DecaWave](https://www.decawave.com/) DWM1000 module. Specifications can be found on the Decawave website. There are a lot of possible configurations to try out as well as unlimited ways of measurements to do on the system, but we picked a few parameters that are described below.

## The setup

We used one anchor and one Crazyflie with a Loco Position Deck mounted. The system was set up in the Two way ranging mode, that is each ranging is actually 4 packets sent back and forth between the Crazyflie and Anchor. The ranging operation is initiated by the Crazyflie deck and is complete when the fourth packed is received by the deck.

The LEDs on the deck and anchor indicates when the module is in transmit and receive mode as well as when a ranging operation is completed. Our measurement method was simply to walk away from the anchor with the Crazyflie and watch the LEDs and observe when we stared to loose packets.

The radios are setup on *channel 2* with preamble rate of *64MHz*, preamble lenght of 128 and datarate of *6.8Mbps*. Higher range can be expected with different settings like longer preamble and slower datarate, though this would also reduce the ranging speed of the system and it has not been tested in this experiment.

### Power settings

The DW1000 chip can be configured in many ways and there is an almost limitless number of permutations to use. To limit the scope we tested three settings based on the standard configuration described in the technical documentation from Decawave.

  * The standard configuration
  * The standard configuration with the "Smart Power" option
  * The standard configuration with full transmit power

Note: there are regulations that controls the allowed transmit power in different parts of the world. The maximum power setting is not OK to use in most countries.

### Inside VS outdoors

Indoors there are walls, the floor and other objects that bounces and echoes the radio waves sent out by the system. Outside there are usually fewer obstacles and typically only the ground that effects the transmitted energy. Obviously this makes a difference and we wanted to see if we could measure it.

Note that for an ultra-wideband system echo and multipath can actually help decoding the packet: the receiver will be able to use the energy from the first direct path and from the echoes to decode the packet.

The "longest" space that was available to us is a corridor in our office building. It is not optimal since it is very narrow and probably enhances the signal strength, we expect it to show better results than in an big open room. The corridor is 16 meters long why this is the maximum distance we could measure inside.

For outdoors measurements we used the street outside the office. It is fairly open but the buildings on the sides are probably affecting the results somewhat.

### Antenna orientation

The radiation pattern of the antenna on the DWM1000 module is not uniform in all directions. It radiates more power up and down compared to the X-Y plane and we should expect better performance in the Z-direction.

The anchor was mounted vertically with the top of the antenna pointing in the direction of the Crazyflie to get maximum antenna gain. This is a pretty likely orientation in a "normal" setup.

We measured with the Crazyflie in two different positions:
  * "In plane": that is the normal position for the Crazyflie
  * "Perpendicular": the Crazyflie was tilted 90 degrees to get maximum antenna gain.

## Results

### Standard configuration

| Location | Antenna orientation | Measured max distance (meters) |
|---|---|---|
| Inside | In plane | 8-10 |
| Inside | Perpendicular | 15-16 |
| Outside | In plane | 3-4 |
| Outside | Perpendicular | 9 |

### Standard configuration with the "Smart Power" option

| Location | Antenna orientation | Measured max distance (m) |
|---|---|---|
| Inside | In plane | 16 |
| Outside | In plane | 15 |

### Standard configuration with full transmit power

| Location | Antenna orientation | Measured max distance (m) |
|---|---|---|
| Outside | In plane | 50 |
| Outside | Perpendicular | 70 |
