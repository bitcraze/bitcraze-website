---
layout: page
title: Documentation navigation overview
page_id: doc-nav
redirects:
  - /docs/doc-nav
---
<script src="https://cdn.jsdelivr.net/npm/mermaid/dist/mermaid.min.js"></script>


This page shows different ways on how to navigate the documentation, based on either the hardware or the programming languages used.

### Legend

<div class="mermaid">
graph LR
clickable[Clickable]:::bc --> notclickable(Not Clickable):::bc 
click clickable "/documentation/system/doc_nav/"
classDef bc fill:#95C941,stroke:#666666,stroke-width:2px,color:#222222;
</div>


## Hardware-based Docs Navigation

This graph shows the structure of the documentation from a hardware perspective, starting from the eco system to the individual hardware components. This is mostly useful if you are **beginner with crazyflie development**. 

Don't forget to also check out the [tutorials](/documentation/tutorials/)!

<div class="mermaid">
graph LR
ecosystem[Ecosystem Overview]:::bc --> platform[Crazyflie Platform]:::bc 
ecosystem--> clients[Crazyradio and clients]:::bc 
ecosystem--> positioning[Positioning Technologies]:::bc 

platform--> tree(Family Tree):::bc 
platform--> decks(Expansion Decks):::bc 
platform--> components(Hardware components):::bc 

clients --> pcclients(Python clients & lib):::bc 
clients --> crpa(Crazyradio PA):::bc 
clients --> mobile(Mobile clients):::bc 

positioning--> lighthouse(Lighthouse):::bc 
positioning--> loco(Loco positioning):::bc 
positioning--> mocap(Motion Capture):::bc 

click ecosystem href "/documentation/system/"
click platform href "/documentation/system/platform/"
click clients href "/documentation/system/client-and-library/"
click positioning href "/documentation/system/positioning/"
click lighthouse href "/documentation/system/positioning/ligthouse-positioning-system/"
click loco href "/documentation/system/positioning/loco-positioning-system/"
click mocap href "/documentation/system/positioning/mocap-positioning/"
classDef bc fill:#95C941,stroke:#666666,stroke-width:2px,color:#222222;
</div>

## Software-Based Docs Navigation

This graph shows the documentation structure from a repostioriy/language based perspective. It sorts the github repositories we have based on the type of code. This is useful if you are **advanced crazyflie user and developer**. 

<div class="mermaid">
graph LR
repos[Repositories]:::bc --> python(Python Software):::bc 
repos--> c(C-based Firmware):::bc 
repos--> other(Other code):::bc 
repos--> bootloaders(Bootloaders):::bc 

python-->cfclient(Crazyflie Client):::bc 
python-->cflib(Crazyflie Python Library):::bc 
python-->lpstools(LPS Tools):::bc 

c --> crazyfliestm(Crazyflie STM Firmware):::bc 
c --> crazyflienrf(Crazyflie NRF Firmware):::bc 
c --> crpa(Crazyradio PA Firmware):::bc 
c --> lpsnode(LPS node firmware):::bc 

other --> android(Android App):::bc 
other --> ios(IOS App):::bc 
other --> LHfpga(Lighthouse FPGA):::bc 

click repos "https://www.bitcraze.io/documentation/repository/"
classDef bc fill:#95C941,stroke:#666666,stroke-width:2px,color:#222222;
</div>



