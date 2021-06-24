---
layout: page
title: Flow breakout additional info
page_id: flow-breakout-info
---

## Functional description 

The signal names are marked on the board:

![flow breakout back](/images/documentation/wiki/flowbreakout_back.png)

Both sensors are powered by the VCC and GND pins. The board accepts from 3V to 5V, two voltage regulators are generating the required voltage for the sensors and the board has voltage translator for the data signals.

### VL53L0 ranging sensor

The VL53L0 ranging sensor is facing front on the board. It is accessible on the I2C pins SCL and SDA.

## PMW3901 optical flow sensor

The PMW3901 optical flow sensor is facing front on the board. Is is accessible on the SPI pins CS, MISO, MOSI, CLK. The pins MOTION and /RESET are also connected to the PMW3901. The reset pin can be left floating if not needed.

The optical flow sensor will output motion count. Assuming the board is moving above a flat surface the X/Y orientation is as follow:

![front with arrow](/images/documentation/wiki/front_with_arrow.png)

### Arduino drivers 

You can install Arduino libraries using the [Arduino library manager](https://www.arduino.cc/en/Guide/Libraries#toc3).

The VL53L0x has been succesfully tested with the following drivers:
  * [Adafruit](https://github.com/adafruit/Adafruit_VL53L0X)
  * [Arduino](https://github.com/pololu/vl53l0x-arduino)

The PMW3901 arduino driver can be found on [github](https://github.com/bitcraze/Bitcraze_PMW3901).
