---
layout: page-product
title: Flow breakout
page_id: product-flow-breakout
redirects:
  - /flow-breakout/
---

{% buy_online https://store.bitcraze.io/collections/decks/products/flow-breakout %}

{% product_img Flow breakout; medium;
/images/flow_breakout/flow_breakout_585px-1.jpg
%}

{% product_highlight
fa fa-arrows;
Motion tracking;
Optical flow breakout board for motion detection
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The Flow breakout board is used for motion tracking and can easily be connected to any robotics project or other design.

The motion of a surface, usually the ground, is measured and is reported as
delta X and delta Y by the optical flow sensor. The absolute distance (Z) is measured
by the Time of Flight ranging sensor. It comes with an Arduino library to easily
read the movement data and has a large voltage range for IO and power supply.

The Flow breakout features the VL53L0x ToF sensor and the PMW3901 optical flow sensor.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section flow_breakout; Features %}
{% datasheet_section flow_breakout; Mechanical specifications %}
{% datasheet_section flow_breakout; Electrical specification %}
{% datasheet_section flow_breakout; Interface specification %}

{% endrow_text %}
{% row_links %}

* [Datasheet](/documentation/hardware/flow_breakout/flow_breakout-datasheet.pdf)
* [Schematics](/documentation/hardware/flow_breakout/flow-breakout-revb.pdf)



{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

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


{% si_intro Getting started %}
This getting started will walk you through the process of getting sensor values
from the Flow breakout board using an Arduino UNO. The process should be
applicable to any arduino-compatible board that has I2C and SPI support.
{% endsi_intro %}

{% si_step Hardware requirements %}
To follow this getting started guide you will need:

 * A flow breakout deck with pin header soldered
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

{% endrow_text %}

{% row_links %}
{% hackster 57245/touchless-mouse-e3053e %}

{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}
{% endtabgroup %}

---

#### Resources

- {% id_link support-getting-help %}
- {% id_link flow-breakout-info %}
- [Datasheet](/documentation/hardware/flow_breakout/flow_breakout-datasheet.pdf)
- [Schematics](/documentation/hardware/flow_breakout/flow_breakout_revb.pdf)
- [Store](https://store.bitcraze.io/products/flow-breakout-board)

{% comment %}
{% endcomment %}


---


#### Tutorials

{% id_link getting-started-flow-breakout %}
