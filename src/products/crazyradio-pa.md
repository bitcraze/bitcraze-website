---
layout: page-product
title: Crazyradio PA
permalink: /crazyradio-pa/
page_id: product-crazyradio-pa
---

{% buy_online http://www.seeedstudio.com/Crazyradio-PA-long-range-24Ghz-USB-radio-dongle-with-antenna-p-2104.html %}

{% product_img Crazyradio PA; medium;
/images/crazyradio-pa/CrazyRadioSide.jpg;
/images/crazyradio-pa/CrazyRadioFront.jpg;
/images/crazyradio-pa/CrazyRadioBack.jpg

%}

{% product_highlight
fa-wifi;
The longer the merrier;
Range of up to 1km
%}

Crazyradio PA is a long range open USB radio dongle based on the
nRF24LU1+ from Nordic Semiconductor. It features a 20dBm power
amplifier, LNA and comes pre-programmed with Crazyflie compatible
firmware. The power amplifier boosts the range, giving a range of up to
1km (line of sight) together with the Crazyflie 2.0 and up to 2km
Crazyradio PA to Crazyradio PA (line of sight).

{% product_highlight
fa-unlock;
Open project;
The Crazyradio PA is not only for the Crazyflie 2.0.
%}

Since it's an open project with firmware written from scratch and
a Python API to control it, it's a great building block for systems
that require longer range than WiFi and doesn't have the same
requirements for bandwidth. The hardware comes shipped with the latest
firmware as well as a bootloader that enables firmware upgrades via USB
without any additional hardware needed. The Crazyflie PA is compatible
with the first generation of the Crazyflie, but will not give the same
range increase as with the Crazyflie 2.0.

---

{% collapse_section Features %}
* Radio power amplifier giving 20dBm output power
* Up to 1km range LOS with Crazyflie 2.0
* 2&#215;5 2.54mm header for prototyping (not mounted)
* Hardware support for PPM
* Same mechanical footprint as the first generation Crazyradio
* Open source firmware
* Firmware upgrade via USB
* Low latency
{% endcollapse_section %}

{% collapse_section Specification %}
##### General specification

* Based on nRF24LU1+ chip from Nordic Semiconductor
* 8051 MCU at up to 16MHz with 32Kb flash and 2Kb SRAM
* 2.4GHz ISM band radio
* USB device peripheral
* 125 radio channels
* 2Mbps, 1Mbps and 250Kps communication data-rate
* Sends and receives data packets of up to 32 bytes payload
* Automatically handles addresses and packet ack
* Hardware SPI and UART
* Compatible with Enhanced ShockBurst protocol from Nordic Semiconductor

##### Radio specification

* 20dBm output power (100mW)
* Low Noise Amplifier (LNA)
* RP-SMA connector
* Hardware support for PPM input
* Can be powered with up to 13V via expansion header

##### 2&#215;5 2.54mm expansion header with following signals (not mounted)

* Up to 13V input power
* GND
* PPM
* SPI/UART
* Standard USB-A connector

##### Mechanical specification

* Weight: 6g
* Size (WxHxD): 58x16x6.5mm (including connectors)
{% endcollapse_section %}

{% collapse_section Package contents %}
* 1 x Crazyradio PA
* 1 x Duck antenna 2dBi
{% endcollapse_section %}

{% collapse_section Resources %}
* [Wiki](//wiki.bitcraze.io)
* [Forum](//forum.bitcraze.io)
{% endcollapse_section %}
