---
layout: page-left-menu
title: Getting started with Flow breakout board
permalink: /getting-started-flow-breakout/
page_id: getting-started-flow-breakout
---

{% si_intro Flow breakout board %}
This getting started will walk you through the process of getting sensor values
from the Flow breakout board using an Arduino UNO. The process should be
applicable to any arduino-compatible board that has I2C and SPI support.
{% endsi_intro %}

{% si_step Hardware requirements %}
To follow this getting started guide you will need:

 * A [Flow breakout board](/flow-breakout) with pin header soldered
 * An [Arduino UNO](https://store.arduino.cc/arduino-uno-rev3) or compatible
 * 8 Female/Male jumper cable
{% endsi_step %}

{% si_step Electrical cabling %}
The flow breakout board contains two sensors: the PMW3901 optical flow sensor which has
an SPI interface and the VL53L0x ToF ranging sensor which has an I2C interface. To use both
sensors, both interfaces have to be connected to the Arduino:
{% img Flow breakout Arduino uno cabling ; wide; /images/flow_breakout/flow_breakout_arduino.png %}

{% endsi_step %}

{% si_step Code %}
Start the Arduino IDE and create a new sketch. Load the following libraries
using the [library manager](https://www.arduino.cc/en/Guide/Libraries#toc3):

  * VL53L0X
  * Bitcraze_PMW3901

Then copy-paste the following code into the sketch and execute it.

``` c++
#include "Bitcraze_PMW3901.h"
#include <Wire.h>
#include <VL53L0X.h>

VL53L0X rangeSensor;

// Using digital pin 10 for chip select
Bitcraze_PMW3901 flow(10);

void setup() {
  Serial.begin(9600);

  // Initialize flow sensor
  if (!flow.begin()) {
    Serial.println("Initialization of the flow sensor failed");
    while(1) { }
  }

  // Initialize range sensor
  Wire.begin();

  rangeSensor.init();
  rangeSensor.setTimeout(500);
}

int16_t deltaX,deltaY;

void loop() {
  // Get motion count since last call
  flow.readMotionCount(&deltaX, &deltaY);

  // Get single range measurement
  float range = rangeSensor.readRangeSingleMillimeters();

  Serial.print("X: ");
  Serial.print(deltaX);
  Serial.print(", Y: ");
  Serial.print(deltaY);
  Serial.print(", Range: ");
  if (range > 5000) {
    Serial.print("N/A");
  } else {
    Serial.print(range);
  }
  Serial.print("\n");

  delay(100);
}
```

{% endsi_step %}



{% si_step Output %}
Open the serial console to see the output from the sensors. If nothing is
moving in front of the sensor and the closest object is far away you should
see the output below:

```
X: 0, Y: 0, Range: N/A
X: 0, Y: 0, Range: N/A
X: 0, Y: 0, Range: N/A
X: 0, Y: 0, Range: N/A
X: 0, Y: 0, Range: N/A
X: 0, Y: 0, Range: N/A
X: 0, Y: 0, Range: N/A
```

If you point the sensor upwards and wave your hand above it you should see
something similar to the output below:

```
X: -1, Y: 0, Range: 123
X: 43, Y: 64, Range: 134
X: 71, Y: 121, Range: 137
X: -1, Y: 39, Range: 123
X: -96, Y: -64, Range: 120
X: -96, Y: -161, Range: 110
X: 32, Y: 0, Range: 123
X: 0, Y: 0, Range: 122
X: 53, Y: 45, Range: 122
X: 21, Y: 133, Range: 118
```

{% endsi_step %}
