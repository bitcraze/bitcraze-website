---
layout: page
title: LED deck on top 
page_id: led-deck-on-top
---

With the LED deck and a Crazyflie 2.x, we are able to make real pieces of art.. However, these fun projects do require an external positioning system, since we used the {% poplink lighthouse-deck %} (but you can also use the LPS or MoCap system)

How about using the LED-deck in the combination with the Flow deck v2? A while ago we managed to do this by drilling a couple of holes in the LED deck in this hackster project. However, if you are fine with putting the LED deck on the top, there might be an easier way to achieve this combination.

What do you need for this:

* A soldering station with solder
* Couple of wires
* Battery holder deck
* LED deck
* Hotglue or tape

What we are essentially doing, is that we are flipping the pin-layout of the LED deck so that it is compatible to be put on the top of the Crazyflie.

The image below shows how you should solder the wiring. The Gnd (ground), IO2, OW (deck single wire memory), and VCOM (power supply). Please check out this page to familiarize yourself with the pin-outs of the expansion decks.

![led deck on top](/images/documentation/wiki/topleddeck.png)

_We did not connect IO3 on purpose since the Flow deck v2 is already using this, or else the LED deck and {% poplink flow-deck %} will conflict with each other's communication with the Crazyflie. However, the LED deck should work as well without the IO3 connected_

The battery holder deck can be glued on the LED-deck or attached with some tape.The wiring and soldering are done a bit crude for now to clearly show how to do this, however if you would like the wiring not to be shown as clearly as it is here, this should be easy to fix with thinner wires and basic soldering skills. =)

_Please pay attention to that the orientation of the LED deck is now different._ We put the battery holder on the side to prevent any connections to short with the LED deck, but now you would need to indicate the new 'front' of the LED deck. On the bottom left picture we show it with a sticker.

![led deck on crazyflie](/images/documentation/wiki/leddecktopcrazyflie.png)


We tested the converted LED deck with the {% poplink flow-deck %} with the CFclient and we are still receiving the values and parameters from both the deck drivers. At the moment of writing we haven't test-flown this configuration yet, but we hope to do it soon for another long exposure light painting!