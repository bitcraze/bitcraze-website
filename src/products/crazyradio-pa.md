---
layout: page-product
title: Crazyradio PA
permalink: /crazyradio-pa/
page_id: product-crazyradio-pa
---

<img class="pp-main-image-wide"
     src="/images/crazyradio-pa.png" alt="Crazyradio PA"/>
     
{% product_highlight 
fa-wifi;
The longer the merrier;
Range of more than 1km
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

<div class="pp-specs">

{% collapse_section Features %}
            <ul>
                <li>Radio power amplifier giving 20dBm output power</li>
                <li>Up to 1km range LOS with Crazyflie 2.0</li>
                <li>2&#215;5 2.54mm header for prototyping (not mounted)</li>
                <li>Hardware support for PPM</li>
                <li>Same mechanical footprint as the first generation
                    Crazyradio
                </li>
                <li>Open source firmware</li>
                <li>Firmware upgrade via USB</li>
                <li>Low latency</li>
            </ul>
{% endcollapse_section %}

{% collapse_section Specification %}
            <strong>General specification:</strong>
            <ul>
                <li>Based on nRF24LU1+ chip from Nordic Semiconductor</li>
                <li>8051 MCU at up to 16MHz with 32Kb flash and 2Kb SRAM</li>
                <li>2.4GHz ISM band radio</li>
                <li>USB device peripheral</li>
                <li>125 radio channels</li>
                <li>2Mbps, 1Mbps and 250Kps communication data-rate</li>
                <li>Sends and receives data packets of up to 32 bytes payload
                </li>
                <li>Automatically handles addresses and packet ack</li>
                <li>Hardware SPI and UART</li>
                <li>Compatible with Enhanced ShockBurst protocol from Nordic
                    Semiconductor
                </li>
            </ul>
            <strong>Radio specification:</strong>
            <ul>
                <li>20dBm output power (100mW)</li>
                <li>Low Noise Amplifier (LNA)</li>
                <li>RP-SMA connector</li>
                <li>Hardware support for PPM input</li>
                <li>Can be powered with up to 13V via expansion header</li>
            </ul>
            <strong>2&#215;5 2.54mm expansion header with following signals
                (not mounted):</strong>
            <ul>
                <li>Up to 13V input power</li>
                <li>GND</li>
                <li>PPM</li>
                <li>SPI/UART</li>
                <li>Standard USB-A connector</li>
            </ul>
            <strong>Mechanical specification:</strong>
            <ul>
                <li>Weight: 6g</li>
                <li>Size (WxHxD): 58x16x6.5mm (including connectors)</li>
            </ul>
{% endcollapse_section %}

{% collapse_section Package contents %}
            <ul>
                <li>1 x Crazyradio PA</li>
                <li>1 x Duck antenna 2dBi</li>
            </ul>
{% endcollapse_section %}

{% collapse_section Resources %}
            <ul>
                <li><a class="reference external"
                       href="https://wiki.bitcraze.io">Wiki</a></li>
                <li><a href="https://forum.bitcraze.io">Forum</a></li>
            </ul>
{% endcollapse_section %}

</div>

{% buy_online http://www.seeedstudio.com/depot/Crazyradio-PA-long-range-24Ghz-USB-radio-dongle-with-antenna-p-2104.html %}
