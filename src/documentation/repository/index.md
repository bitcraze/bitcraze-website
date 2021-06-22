---
layout: page
title: Repositories
page_id: repository-overview
redirects:
  - /docs/overview_repositories/
---

## Python

 |Category| GitHub repository | Documentation | Explanation |
|---| -----------------  |--------------| ----------------|
|![pc with crazyflie radio PA](/images/documentation/overview/pc.png){:width="50px"}| [crazyflie-clients-python](https://github.com/bitcraze/crazyflie-clients-python) | [Docs](/documentation/repository/crazyflie-clients-python/master/) | This GitHub repository contains the source code for the python-based client for on the PC. This repository relies on the [crazyflie-lib-python](https://github.com/bitcraze/crazyflie-lib-python). The documentation also includes several user guides. |
|![pc with crazyflie radio PA](/images/documentation/overview/pc.png){:width="50px"}|  [crazyflie-lib-python](https://github.com/bitcraze/crazyflie-lib-python) | [Docs](/documentation/repository/crazyflie-lib-python/master/) | This GitHub repository contains the source code for the python library client to control the Crazyflie from the PC. The documentation also includes the instructions to handle the USB access rights for the [Crazyradio PA](https://store.bitcraze.io/collections/accessories/products/crazyradio-pa)|
|![Mobile Devices](/images/documentation/overview/phone.png){:width="50px"}| [crazyflie-android-client](https://github.com/bitcraze/crazyflie-android-client) | [Wiki](https://wiki.bitcraze.io/doc:crazyflie:client:cfandroid:index)| The repository contains the source code of the [Android client app](https://play.google.com/store/apps/details?id=se.bitcraze.crazyfliecontrol2). The documentation also include instructions on how to use it.|
|![Mobile Devices](/images/documentation/overview/phone.png){:width="50px"}| [crazyflie-ios-client](https://github.com/bitcraze/crazyflie-ios-client) | [Docs](/documentation/repository/crazyflie2-ios-client/master/)| The repository contains the source code of the [IOS client app](https://apps.apple.com/us/app/crazyflie-2-0/id946151480). The documentation also include instructions on how to use it.|
|![Loco Positioning System](/images/documentation/overview/lpssystem.png){:width="100px"}|[lps-tools](https://github.com/bitcraze/lps-tools ) | [Docs](/documentation/repository/lps-node-firmware/master/) | This GitHub repository contains the source code for the configuration of the loco positioning firmware. The documentation of the lps-node-firmware contains the instructions|


## C-based Firmware

|Category| GitHub repository | Documentation | Explanation |
|----| -----------------  |--------------| ----------------|
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie-firmware](https://github.com/bitcraze/crazyflie-firmware) | [Docs](/documentation/repository/crazyflie-firmware/master/) | The firmware that handles the main autopilot on the STM32F4. The documentation also explains about the CTRP protocol between the PC and mobile clients and the Crazyflie. |
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie2-nrf-firmware](https://github.com/bitcraze/crazyflie2-nrf-firmware)| [Docs](/documentation/repository/crazyflie2-nrf-firmware/master/) |  The firmware that runs on the NRF51, which handles the radio and power management. The documentation also explains about the ST link protocol for communication between the STM32 and the NRF51. |
|![Crazyradio](/images/documentation/overview/crazyradiopa.png){:width="50px"}|  [crazyradio-firmware](https://github.com/bitcraze/crazyradio-firmware) | [Docs](/documentation/repository/crazyradio-firmware/master/) | This GitHub repository contains the source code for the firmware of the [Crazyradio PA](https://store.bitcraze.io/collections/accessories/products/crazyradio-pa).|
![Loco Positioning System](/images/documentation/overview/lpssystem.png){:width="100px"}| [lps-node-firmware](https://github.com/bitcraze/lps-node-firmware) | [Docs](/documentation/repository/lps-node-firmware/master/) | This GitHub repository contains the source code for the [loco positioning node](https://store.bitcraze.io/collections/positioning/products/loco-positioning-node). The documentation also includes several user guides how to set the system up and also explains the interaction with the [Loco Positioning expansion deck](https://store.bitcraze.io/collections/positioning/products/loco-positioning-deck) of the Crazyflie. |
|![lighthouse system](/images/documentation/overview/lighthouse.png){:width="100px"}|[lighthouse-fpga](https://github.com/bitcraze/lighthouse-fpga ) |  | This repository contains the FPGA source code for calculating position with the [lighthouse deck](https://store.bitcraze.io/collections/positioning/products/lighthouse-positioning-deck). |
||[AIdeck_examples](https://github.com/bitcraze/AIdeck_examples ) | [Docs](/documentation/repository/AIdeck_examples/master/) | This repository contains examples for the [AI deck](https://store.bitcraze.io/collections/decks/products/ai-deck-1-1). |

## Bootloaders

 |Category| GitHub repository | Documentation | Explanation |
|---| -----------------  |--------------| ----------------|
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie2-stm-bootloader](https://github.com/bitcraze/crazyflie2-stm-bootloader)| [Wiki](https://wiki.bitcraze.io/doc:crazyflie:bootloader:index) |  The bootloader of the STM32. |
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie2-nrf-bootloader](https://github.com/bitcraze/crazyflie2-nrf-bootloader)| [Wiki](https://wiki.bitcraze.io/doc:crazyflie:bootloader:index) |  The bootloader of the NRF51. |
|![Loco Positioning System](/images/documentation/overview/lpssystem.png){:width="100px"}| [lps-node-bootloader](https://github.com/bitcraze/lps-node-bootloader) |  | This repository contains the source code for the bootloader of the [lps node](https://store.bitcraze.io/collections/positioning/products/loco-positioning-node). |
|![lighthouse system](/images/documentation/overview/lighthouse.png){:width="100px"}| [lighthouse-bootloader](https://github.com/bitcraze/lighthouse-bootloader ) | [Docs](/documentation/repository/lighthouse-bootloader/master/) | This repository contains the source code for the bootloader of the [lighthouse deck](https://store.bitcraze.io/collections/positioning/products/lighthouse-positioning-deck). |
