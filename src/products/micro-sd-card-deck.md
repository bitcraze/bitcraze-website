---
layout: page-product
title: Micro SD card deck
page_id: product-sd-card-deck
redirects:
  - /sd-card-deck/
---
{% datasheet_product_status sd_card_deck %}
{% buy_online https://store.bitcraze.io/collections/decks/products/sd-card-deck %}
{% product_img Micro SD card deck; narrow; /images/sd-card-deck/SD-deck-585px.JPG %}
{% product_highlight fa-file-text-o; File your data; Read and write data to a micro SD card %}

{% tabgroup %}
{% tab How it Works %}

{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}
The {% poplink sd-card-deck %} adds a Micro SD card reader to the Crazyflie and makes it possible to read and write files to the SD-card.
The standard firmware has support for high speed logging (up to 1 kHz) to the SD-card which can record data at rates
that are higher than what can be transfered via radio in real time. When the recoding is finished the
SD-card can be moved to a computer for data analyses.
It is also possible to access the file system from applications (or any other firmware code) to implement
usecases that requires the use of files.
{% endrow_text %}
{% row_links %}
{% endrow_links %}
{%endrow_icon_text_links%}

{% endtab %}

{% tab Specifications %}


{% row_icon_text_links Specifications; fa-list %}
{% row_text %}
{% datasheet_section sd_card_deck; Features %}
{% datasheet_section sd_card_deck; Mechanical specifications %}
{% datasheet_section sd_card_deck; Electrical specifications %}

#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)
{% endrow_text %}
{% row_links %}
* [Datasheet](/documentation/hardware/sd_card_deck/sd_card_deck-datasheet.pdf)
* [Schematics](/documentation/hardware/sd_card_deck/sdcard_revd.pdf)
* [Compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)

{% endrow_links %}
{%endrow_icon_text_links%}
{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}
#### File system
The SD-card used in the deck must be formatted as a FAT32 file system (exFAT does not work).
#### Data Logging
The firmware contains a data logging functionality out of the box. It can be enabled and configured by placing a config file
on the µSD-Card. The file is a simple text file and an example is available
[config.txt](https://github.com/bitcraze/crazyflie-firmware/blob/master/tools/usdlog/config.txt).
The file format is as follows:
```
1     # version
512   # buffer size in bytes
log   # file name
0     # enable on startup (0/1)
on:fixedFrequency
100     # frequency in Hz
1     # mode (0: disabled, 1: synchronous stabilizer, 2: asynchronous)
log entry 1
log entry 2
log entry 3
...
on:myEvent1
log entry 4
log entry 5
...
on:myEvent2
...
```
The config file supports logging of [log variables](/documentation/repository/crazyflie-firmware/master/userguides/logparam) as well as [event triggers](/documentation/repository/crazyflie-firmware/master/userguides/eventtrigger/).
For the fixed frequency logging, the frequency is an integer value in Hertz, for example 250 means that a data block is written every 4ms. The buffer size is used to decouple the writing to the card and the data logging. Higher frequencies require a larger buffer, otherwise some data might be lost. The Crazyflie console will show how many events had to be discarded due to insufficient buffer size:
```
uSD: Wrote 161378 B to: log00 (2237 of 2237 events)
```
In general, logging 10 variables with 1kHz works well with a buffer of 512 Bytes. But you may have to try around a bit to get feeling on what is possible.
The file name should be 10 characters or less and a running number is appended automatically (e.g., if the file name is log, there will be files log00, log01, log02 etc.). The log entries are the names of logging variables in the firmware.
The `config.txt` file will be read only once on startup, therefore make sure that the µSD-Card is inserted before power up. If everything seems to be fine a µSD-task will be created and buffer space will be allocated. If malloc fails the Crazyflie will be stuck with LED M1 and M4 glowing. Data logging starts automatically after sensor calibration if `enable on startup` in `config.txt` was set to 1. Otherwise, logging can be started by setting the `usd.logging` parameter to 1. The logfiles will be enumerated in ascending order from 00-99 to allow multiple logs without the need of creating new config files. Just reset the Crazyflie to start a new file. Logging needs to be explicitly stopped by setting the `usd.logging` parameter to 0, which protects the logfile data with a CRC32.
#### Data Analysis
For performance reasons the logfile is a binary file, using the following format (version 2):
```
uint8_t 0xBC header
uint16_t version
uint16_t num_event_types
for each event type:
   uint16_t event_id
   eventName<null>
   uint16_t num_variables
   varname1(vartype1)<null>varname2(vartype2)<null>...<null>varnameN(vartypeN)<null>
for each event:
   uint16_t event_id
   uint64_t timestamp (in microseconds)
   data (length defined by TOC event type)
```
Here, the vartype is a singe character and we support a subset of the ones defined [here](https://docs.python.org/3/library/struct.html#format-characters).
We provide a [helper script](https://github.com/bitcraze/crazyflie-firmware/blob/master/tools/usdlog/cfusdlog.py) to decode the data:
```
import cfusdlog
logData = cfusdlog.decode(fileName)
```
where fileName is a file from the µSD-Card. For convenience there is also an [example.py](https://github.com/bitcraze/crazyflie-firmware/blob/master/tools/usdlog/example.py) which shows how to access and plot the data.
{% endrow_text %}
{% row_links %}
* {% id_link getting-started-expansion-decks %}
* [config.txt](https://github.com/bitcraze/crazyflie-firmware/blob/master/tools/usdlog/config.txt)
* [helper script](https://github.com/bitcraze/crazyflie-firmware/blob/master/tools/usdlog/cfusdlog.py)
* [Parameters](/documentation/repository/crazyflie-firmware/master/api/params/#usd)
* [Log variables](/documentation/repository/crazyflie-firmware/master/api/logs/#usd)


{% endrow_links %}
{%endrow_icon_text_links%}

{% endtab %}


{% tab Development %}

{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}
#### File system
[FatFS](http://elm-chan.org/fsw/ff/00index_e.html) is used as file system handler. Have a look at the API and examples on the FatFS site fore usage information.
The FatFS module will be initialized by the micro-SD deck driver when the deck is detected. After that the API calls can be used such as `f_mount`, `f_open`, `f_read`, `f_close` etc.
#### Alternate Pins
The SD-Card is using the SPI bus on the deck port to communicate. In some cases, it might be beneficial to use another SPI bus. One option is to use a “hidden” SPI on the deck port that is multiplexed with TX1, RX1 and IO_4. This SPI port is called SPI3 in the STM32F405 and there is a possibility to switch to this SPI bus.
  - First thing the SD-card deck needs to be patched, CS->RX2(PA3), SCLK->TX1(PC10), MISO->RX1(PC11), MOSI->IO_4(PC12) and this is a quite hard to cut the small lines and solder small patch wires. Easier is to use a sd-card breakout deck such as [this](https://www.sparkfun.com/products/544) and solder wires to e.g. the battery holder board.
  - Configure the firmware with Kbuild with `make menuconfig`, go to `expansion deck configuration`and under `Support for the Micro SDcard deck` include `Use alternate SPI and alternate CS pin`.
  - Clean, recompile and flash the firmware
{% endrow_text %}
{% row_links %}
* [FatFS](http://elm-chan.org/fsw/ff/00index_e.html)
* [Deck pin allocation]({% id_url cf2_expansiondecks %}#deck-pin-allocation)
{% endrow_links %}
{%endrow_icon_text_links%}

{% endtab %}

{% endtabgroup %}

---
#### Resources
- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- {% id_link cf2_expansiondecks %}
- [Datasheet](/documentation/hardware/sd_card_deck/sd_card_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/sd_card_deck/sdcard_revd.pdf)

---

#### Tutorials
{% id_link getting-started-expansion-decks %}
