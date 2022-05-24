---
layout: page
title: Betaflight for Crazyflie 2.0
page_id: betaflight
---

[Betaflight](https://github.com/betaflight/betaflight/wiki) was originally an R&D fork from [Cleanflight](https://github.com/cleanflight/cleanflight/wiki) focused on bleeding edge performance improvements/experiments but has since become one of the most popular flight controller firmwares in use today.

One of the hallmark features of the Betaflight/Cleanflight/Baseflight ecosystem is support for an extensible “target” framework which allows the firmware to run on a wide variety of ARM chips/boards. This wiki details the CRAZYFLIE2 target.

### What's Supported
This target currently supports basic functionality required to fly - motors, accel/gyro, LEDs, and handling of the syslink/crtp protocols (though, limited to commander packets) from the NRF51.

The NRF51 code was intentionally left unchanged so all existing crazyflie clients ought to continue working without modification (including Bluetooth clients). However, currently only DeviationTx and the Android mobile app have been tested. Mileage on the other clients may vary – please report findings in discussions.

The target currently doesn't support the magnetometer, the barometer, or any expansion decks. It also doesn't support many of the crazyflie core features like the logging framework, the parameter framework, etc.

## Setup Instructions
**WARNING: Running Betaflight on the Crazyflie 2.0 is still experimental and in development. There's very low risk of bricking or damaging your hardware (the main STM bootloader is in ROM and can't be erased), but it's recommended you only try this out if you know what you're doing and can accept a bit of risk. Access to JTAG or SWD is highly recommended and may be necessary to re-provision with the stock Crazyflie firmware/bootloader.**

Building
Execute the following from a bash shell (uses the same toolchain as the crazyflie-firmware project – this can be done on the Bitcraze VM for example)

* git clone https://github.com/betaflight/betaflight
* export TARGET=CRAZYFLIE2
* make

You should see “betaflight_3.2.0_CRAZYFLIE2.hex” (version number may be newer) appear in the obj directory of the project.

### Flashing
To flash the board, follow the [Betaflight flashing instructions](https://github.com/betaflight/betaflight/wiki/Installing-Betaflight). Be sure to choose 'full chip erase' for the first flash.

These instructions call for booting with the BOOT0 pin held high to boot the chip into DFU mode. The Crazyflie can be booted in to DFU mode without needing to short this pin. Note that the Betaflight configurator will reboot the STM32 after flashing but it will not reset the NRF51 – the whole board must be power cycled after flashing in order to restore the NRF51's Rx functionality.

Note: If you've previously installed the libusb-win32 driver on the Crazyflie 2.0 device node using Zadig in Windows, the driver must be changed before it will enumerate as a COM device after flashing. To change the driver, follow these steps:

* Open device manager
* Navigate to the 'libusb-win32' device node
* Right click on Crazyflie 2.0 and choose 'update drivers'
* select 'browse my computer for driver software'
* select 'let me pick from a list of available drivers on my computer'
* select 'USB Serial Device'

## Configuring Betaflight
The defaults after flashing should be sufficient for flight.

Some things of note:

* It's suggested to change the brushed motor PWM to something higher to reduce audible noise - 24khz works well.
* Configured to use a TARGET_CUSTOM serial Rx protocol - this is a new feature in betaflight for the crazyflie so that the NRF51 firmware does not need to change. This option was very recently added to the betaflight/cleanflight configurators, so make sure you're using the latest version of the configurators (or just don't change the serialRx protocol drop down – it will be a blank white box on earlier configurators
* PIDs have not been tuned for the crazyflie – the stock PIDs seem to be doing quite well though.

## Configuring Transmitter
The NRF51 defaults to 2mbps, channel 2.

To use a client that uses the legacy commander packet type (cfclient, mobile apps, older versions of DeviationTx) ensure the max roll/pitch angles are set to 50.0 degrees and the max yaw rate is set to 400deg/s. The handler for this packet type rescales the degree setpoint into a PWM-style value (range of 1000-2000) and assumes these values as max values when making the conversion. Using other values should work but might produce unexpected results.

Using the new CPPM Emulation commander type (supported in [Deviation](https://github.com/DeviationTX/deviation/commit/3d61a2b6c0968db2b83878c44266293386c2bc18)) is recommended because it allows up to 10 additional auxiliary channels.