---
layout: page-product
title: Loco Positioning system
permalink: /loco-pos-system/
page_id: product-loco-pos-system
---

{% product_highlight
fa-location-arrow;
Position awarenes;
Add absolute position to your Crazyflie 2.0 using the Loco Positioning system.
%}

The Crazyflie 2.0 (as most other quadcopters and robots) has no real notion of 
its position in space. The on board sensors (accelerometers and gyros) can be
used to give a rough idea of its movements but lacks the accuracy for long term
position awareness. The solution is to use an external system that can provide
information of the current position. Outside GPS can be used, but indoor the 
options are limited, often complex, expensive or both. That is why we have
created the Loco Positioning system.

#### The system

The Loco Positioning system is a local positioning system that is used to find
the absolute 3D position of objects in space. It is in many ways similar to a
miniature GPS system. 
The base of the system is a set of Anchors that are positioned in the room 
(compare to the satellites in GPS), they are the reference. The other part of
the system is one or more Tags (compare to the GPS receiver) that are fixed to the 
object(s) that are to be tracked. By sending short high frequency radio 
messages between the Anchors and Tags, the system measures the distance from 
each Anchor to the Tags and calculates the position of the Tags from that 
information.
By adding knowledge of its position to a Crazyflie 2.0 it is capable of flying
autonomously without manual control. This opens up an array of exciting use 
cases and applications.

#### The Loco Positioning Deck 

The Loco Positioning Deck is a Crazyflie 2.0 expansion deck with the Loco 
Positioning Tag functionality. Read more on the [Loco Positioning Deck page.](/loco-pos-deck/)

#### The Loco Positioning Node

The Loco Positioning Node is a multi functional node in a Loco Positioning system,
it can act either as an Anchor or Tag. As an Anchor it is part of the reference base for
the system while running in Tag mode it can be attached to an object to track,
for instance a robot. Read more on the [Loco Positioning Node page.](/loco-pos-node/)

#### Performance

The Loco Positioning system is based on the Decawave DWM1000 chip and has an
accuracy in the 10 cm range. 

A theoretical minimum of 4 Anchors are required to 
calculate the 3D position of a Tag, but a more realistic number is 6 to add
redundancy.

The Loco Positioning system has mainly been designed for indoor use.

