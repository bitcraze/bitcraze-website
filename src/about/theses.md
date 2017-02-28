---
layout: page
title: Theses
permalink: /theses/
page_id: theses
---

Are you about to do your bachelor or master theses work? Interested in collaborating
with us at Bitcraze? On this page we list a few possible subjects that you might
find interesting or that might give you new ideas. Don't hesitate to contact us
at <a href="mailto:contact@bitcraze.io">contact@bitcraze.io</a> to discuss what 
you want to do.


### Camera drone

Find and add a camera to the Crazyflie (ideally unmodified) for onboard image 
processing. Possible to combine with vision algorithms like Slam or communication
theory to find ways to transfer images/video over the limited radio bandwith
that is available.

Electronics, firmware, signal processing

### Support for swarming
 
When flying bigger swarms of Crazyflies, the infrastructure starts to become a
problems. How do you find a specific copter out of 100? Which batteries need
to be recharged? How do you recharge 100 
batteries? What is the health of the hardware? 

Mechanics, electronics, software

### Safe research quad

One of the key features of the Crazyflie is that it is
safe to fly in a lab since it is light weight and small. The drawback is that 
the lifting capacity is only 27g which is on the low side in some applications. 
Look at how the lifting capacity can be increased while keeping it safe. 
The solution could be hardware, software, mechanics or a combination. 

Electronics, software, mechanics

### Communication with big swarm

Find ways to communicate with 100+ Crazyflies. Look at radio communication, 
protocols, handling of packet/data loss, secure communication to prevent hostile
takeover of a swarm and related issues.

Radio, software

### Failsafe/recovery handling

Identify and handle error states in autonomous flight. If something goes wrong,
for instance loss of position from the positioning system or a sensor that returns
weird values, the copter should identify this and try to handle the situation 
in a controlled way. It could maybe try to return to base using remaining sensors
or do a controlled landing. 
This could also be extended to managing situation when hardware (a motor) is
failing.  

Signal processing, control theory, software