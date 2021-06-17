---
layout: page
title: Debug Adapter
page_id: debug-adapter-info
---


The debug adapter enables users to easily connect JTAG/SWD debuggers to the Crazyflie 2.X platform. For debugging the STM32F4 no soldering is required, but soldering is required for debugging the nRF51.

## Assembly
The Debug adapter kit contains the following:
  * The nRF debug connector for soldering to the Crazyflie 2.X
  * A nylon screw and nut for securely attaching the nRF51 debug connector
  * The debug adapter for connecting the debugger
  * A cable for connecting to the Crazyflie 2.X

Below are two images showing how the nRF51 debug connector should be soldered to the Crazyflie 2.X.

![debug adapter top](/images/documentation/wiki/debug_adapter_top.jpg)
![debug adapter buttom](/images/documentation/wiki/debug_adapter_bottom.jpg)

## Connectors 
![debug adapter parts](/images/documentation/wiki/debug_adapter_parts.png)

All the connectors are connected together, so any combination of debuggers will work. I.e using the STM32 Discovery board for debugging of the nRF51, or a ARM JTAG to Cortex M debug converter.

Here's a short explanation of the connectors:
  * **Cortex M debug**: Pinout compatible with Cortex M debug for SWD/SWO/JTAG
  * **STM32 Discovery debug**: Pinout compatible with SWD/SWO of STM32 Discovery boards (so you can directly use these boards for debugging the Crazyflie)
  * **ARM JTAG**: Pinout compatible with ARM JTAG 20 pin
  * **Reset button**: Used to reset the target you are debugging
  * **Reset selector**
    * Reset btn to <-> SDWIO: For nRF51 debugging (reset done by holding SWD IO line low)
    * Reset btn to <-> NRST: For STM32F debugging (reset done by holding NRST low)
  * **Crazyflie 2.0 SWV**: Connect to Crazyflie 2.X for nRF51 or STM32F4 debugging
  * **nRF51 1:1**: 1:1 match with nRF51 debug pinout on the Crazyflie 2.X, pinout:
    - SWIO
    - GND
    - VCC
    - SWCLK

## Debug instructions 
For some basic debug instructions go to the [instructions for the STM32](/documentation/repository/crazyflie-firmware/master/development/openocd_gdb_debugging/) or [the instructions for the NRF](/documentation/repository/crazyflie2-nrf-firmware/master/development/starting_development/) of the crazyflie.