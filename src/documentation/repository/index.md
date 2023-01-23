---
layout: page
title: Repository overview
page_id: repository-overview
redirects:
  - /docs/overview_repositories/
---

Check out the {% id_link doc-nav %} if you want to have a tree like structure of the documentation or the {% id_link system-overview %} to have an overview of the eco-system.

## Python

 |Category| GitHub repository | Documentation | Explanation |
|---| -----------------  |--------------| ----------------|
|![pc with crazyflie radio PA](/images/documentation/overview/pc.png){:width="50px"}| [crazyflie-clients-python](https://github.com/bitcraze/crazyflie-clients-python) | [Docs](/documentation/repository/crazyflie-clients-python/master/) | This GitHub repository contains the source code for the python-based client for on the PC. This repository relies on the [crazyflie-lib-python](https://github.com/bitcraze/crazyflie-lib-python). The documentation also includes several user guides. |
|![pc with crazyflie radio PA](/images/documentation/overview/pc.png){:width="50px"}|  [crazyflie-lib-python](https://github.com/bitcraze/crazyflie-lib-python) | [Docs](/documentation/repository/crazyflie-lib-python/master/) | This GitHub repository contains the source code for the python library client to control the Crazyflie from the PC. The documentation also includes the instructions to handle the USB access rights for the {% id_link product-crazyradio-pa %}|
|![pc with crazyflie radio PA](/images/documentation/overview/pc.png){:width="50px"}|  [crazyflie-testing](https://github.com/bitcraze/crazyflie-testing) | [Docs](/documentation/repository/crazyflie-testing/main/) | This GitHub repository contains the infrastructure for defining tests and test sites for Bitcraze devices |
|![Loco Positioning System](/images/documentation/overview/lpssystem.png){:width="100px"}|[lps-tools](https://github.com/bitcraze/lps-tools ) | | This GitHub repository contains the source code for the the loco positioning Node configuration tool.|


## C-based Firmware

|Category| GitHub repository | Documentation | Explanation |
|----| -----------------  |--------------| ----------------|
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie-firmware](https://github.com/bitcraze/crazyflie-firmware) | [Docs](/documentation/repository/crazyflie-firmware/master/) | The firmware that handles the main autopilot on the STM32F4. The documentation also explains about the CTRP protocol between the PC and mobile clients and the Crazyflie. |
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie2-nrf-firmware](https://github.com/bitcraze/crazyflie2-nrf-firmware)| [Docs](/documentation/repository/crazyflie2-nrf-firmware/master/) |  The firmware that runs on the NRF51, which handles the radio and power management. The documentation also explains about the ST link protocol for communication between the STM32 and the NRF51. |
|![Crazyradio](/images/documentation/overview/crazyradiopa.png){:width="50px"}|  [crazyradio-firmware](https://github.com/bitcraze/crazyradio-firmware) | [Docs](/documentation/repository/crazyradio-firmware/master/) | This GitHub repository contains the source code for the firmware of the {% id_link product-crazyradio-pa %}.|
|![Crazyradio 2.0](/images/documentation/overview/crazyradio20.png){:width="50px"}|  [crazyradio-2-0-firmware](https://github.com/bitcraze/crazyradio2-firmware) | [Docs](/documentation/repository/crazyradio2-firmware/master/) | This GitHub repository contains the source code for the firmware of the {% id_link product-crazyradio-2-0 %}.|
![Loco Positioning System](/images/documentation/overview/lpssystem.png){:width="100px"}| [lps-node-firmware](https://github.com/bitcraze/lps-node-firmware) | [Docs](/documentation/repository/lps-node-firmware/master/) | This GitHub repository contains the source code for the {% id_link product-loco-pos-node %}. The documentation also includes several user guides how to set the system up and also explains the interaction with the {% poplink loco-positioning-deck %} of the Crazyflie. |
||[aideck-gap8-examples](https://github.com/bitcraze/aideck-gap8-examples ) | [Docs](/documentation/repository/aideck-gap8-examples/master/) | This repository contains examples for the {% id_link product-ai-deck-1-1 %}. |

## Other languages

|Category| GitHub repository | Documentation | Explanation |
|---| -----------------  |--------------| ----------------|
|![Mobile Devices](/images/documentation/overview/phone.png){:width="50px"}| [crazyflie-android-client](https://github.com/bitcraze/crazyflie-android-client) | [Docs](/documentation/repository/crazyflie-android-client/master/)| The repository contains the source code of the [Android client app](https://play.google.com/store/apps/details?id=se.bitcraze.crazyfliecontrol2). The documentation also include instructions on how to use it.|
|![Mobile Devices](/images/documentation/overview/phone.png){:width="50px"}| [crazyflie-ios-client](https://github.com/bitcraze/crazyflie2-ios-client) | [Docs](/documentation/repository/crazyflie2-ios-client/master/)| The repository contains the source code of the [IOS client app](https://apps.apple.com/us/app/crazyflie-2-0/id946151480). The documentation also include instructions on how to use it.|
|![lighthouse system](/images/documentation/overview/lighthouse.png){:width="100px"}|[lighthouse-fpga](https://github.com/bitcraze/lighthouse-fpga ) |  | This repository contains the FPGA source code for calculating position with the {% poplink lighthouse-deck %}. |

## Bootloaders

 |Category| GitHub repository | Documentation | Explanation |
|---| -----------------  |--------------| ----------------|
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie2-stm-bootloader](https://github.com/bitcraze/crazyflie2-stm-bootloader)| |  The bootloader of the STM32. |
|![crazyflie](/images/documentation/overview/crazyflie.png){:width="100px"}| [crazyflie2-nrf-bootloader](https://github.com/bitcraze/crazyflie2-nrf-bootloader)|  |  The bootloader of the NRF51. |
|![Loco Positioning System](/images/documentation/overview/lpssystem.png){:width="100px"}| [lps-node-bootloader](https://github.com/bitcraze/lps-node-bootloader) |  | This repository contains the source code for the bootloader of the {% id_link product-loco-pos-node %}. |
|![lighthouse system](/images/documentation/overview/lighthouse.png){:width="100px"}| [lighthouse-bootloader](https://github.com/bitcraze/lighthouse-bootloader ) | [Docs](/documentation/repository/lighthouse-bootloader/master/) | This repository contains the source code for the bootloader of the {% poplink lighthouse-deck %}. |
| | [aideck-gap8-bootloader](https://github.com/bitcraze/aideck-gap8-bootloader)|  |  The AI deck GAP8 bootloader |

## Tooling

|Category| GitHub repository | Documentation | Explanation |
|----| -----------------  |--------------| ----------------|
|![crazyflie](/images/documentation/overview/docker.png){:width="50px"}| [Toolbelt](https://github.com/bitcraze/toolbelt) | [Docs](/documentation/repository/toolbelt/master/) | The toolbelt is a utility to run tools for testing and building of software modules.|
|![crazyflie](/images/documentation/repository/vm_logo.png){:width="50px"}| [Virtual Machiine](https://github.com/bitcraze/bitcraze-vm) | | The virtual machine is a preprepared development environment.|
