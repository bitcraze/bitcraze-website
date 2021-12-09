---
layout: page
title: Sniffing nRF24 with GNU Radio and HackRF
page_id: hackrf-nrf
---

Thanks to a software from [Cyber Explorer](http://blog.cyberexplorer.me/2014/01/sniffing-and-decoding-nrf24l01-and.html) it is possible to sniff the NRF24 radio packet using an SDR radio.

Though the original method is using rtl-sdr with the rtl-fm program. This page aims at documenting how to setup an NRF sniffer with the HackRFBlue (which is fully compatible with [HackRF One](https://greatscottgadgets.com/hackrf/)).

The procedure should be very similar with any GnuRadio-compatible SDR receiver.

### Setting-up hackRF

To setup HackRF on Ubuntu the following packages needs to be installed:

    sudo apt-get install gnuradio gr-osmosdr hackrf gqrx

Then you can verify that it works with:

    $ hackrf_info 
    Found HackRF board.
    Board ID Number: 2 (HackRF One)
    Firmware Version: 2014.08.1
    Part ID Number: 0xa000cb3c 0x005c4746
    Serial Number: 0x00000000 0x00000000 0x321864c8 0x3852321d
    $

On my Ubuntu I need to remove a hackrf module for it to actually work:

    $ hackrf_info
    hackrf_open() failed: HACKRF_ERROR_LIBUSB (-1000)
    $ sudo rmmod hackrf
    $ hackrf_info      
    Found HackRF board.
    Board ID Number: 2 (HackRF One)
    Firmware Version: 2014.08.1
    Part ID Number: 0xa000cb3c 0x005c4746
    Serial Number: 0x00000000 0x00000000 0x321864c8 0x3852321d
    $ 

To test that it is working well you can run gqrx:

![gqrx](/images/documentation/wiki/gqrx_fm.png)

### Sniffing
Clone and make the NRF24-BTLE-Decoder program from [Github](https://github.com/omriiluz/NRF24-BTLE-Decoder):

    $ git clone https://github.com/omriiluz/NRF24-BTLE-Decoder
    Cloning into 'NRF24-BTLE-Decoder'...
    remote: Counting objects: 25, done.
    remote: Total 25 (delta 0), reused 0 (delta 0), pack-reused 25
    Unpacking objects: 100% (25/25), done.
    Checking connectivity... done.
    $ cd NRF24-BTLE-Decoder 
    NRF24-BTLE-Decoder $ make
    gcc -std=gnu99 -Wall -O3 -o ./bin/nrf24-btle-decoder nrf24-btle-decoder.c
    nrf24-btle-decoder.c: In function ‘main’:
    nrf24-btle-decoder.c:370:4: warning: implicit declaration of function ‘strcmp’ [-Wimplicit-function-declaration]
        if (strcmp("nrf", optarg) == 0) decode_type = 1;
        ^
    NRF24-BTLE-Decoder $ cd bin 
    bin $ ls
    nrf24-btle-decoder
    bin $

The nrf24-btle-decoder software is designed to get sample at 2Msps via the standard input. To get data from gnuradio instead we create a fifo and cat this fifo in nrf24-btle-decoder:

    bin $ mkfifo /tmp/fifo
    bin $  cat /tmp/fifo | ./nrf24-btle-decoder -d 1

The GNUradio companion receiver is a simple quadrature demodulator:

![grc nrf24 demod](/images/documentation/wiki/grc_nrf24_demod.png)

The source file can be downloaded there: [nrf24_demod.grc.zip](/documentation/tutorials/nrf24_demod.grc.zip)

This GNU Radio program will write the demodulated samples in the fifo, it will then be read by 'cat' and be piped into the decoder. When connected to a Crazyflie the output is:

```
bin $  cat /tmp/fifo | ./nrf24-btle-decoder -d 1
nrf24-btle-decoder, decode NRF24L01+ and Bluetooth Low Energy packets using RTL-SDR v0.4

1433238474.737783 NRF24 Packet start sample 20935, Threshold:5240, Address: 0xE7E7E7E7E7 length:0, pid:0, no_ack:0, CRC:0xD1E4 data:
1433238474.758950 NRF24 Packet start sample 37532, Threshold:5213, Address: 0xE7E7E7E7E7 length:15, pid:1, no_ack:0, CRC:0xFE8C data:3C 00 00 00 00 00 00 00 80 00 00 00 00 00 00 
1433238474.778575 NRF24 Packet start sample 94927, Threshold:5123, Address: 0xE7E7E7E7E7 length:1, pid:2, no_ack:0, CRC:0x64C1 data:FF 
1433238474.778681 NRF24 Packet start sample 95320, Threshold:6176, Address: 0xE7E7E7E7E7 length:0, pid:0, no_ack:0, CRC:0xD1E4 data:
1433238474.819749 NRF24 Packet start sample 186219, Threshold:5007, Address: 0xE7E7E7E7E7 length:15, pid:1, no_ack:0, CRC:0xFE8C data:3C 00 00 00 00 00 00 00 80 00 00 00 00 00 00 
1433238474.853860 NRF24 Packet start sample 249975, Threshold:5108, Address: 0xE7E7E7E7E7 length:15, pid:0, no_ack:0, CRC:0xBEE5 data:3C 00 00 00 00 00 00 00 80 00 00 00 00 00 00 
1433238474.879752 NRF24 Packet start sample 294095, Threshold:5076, Address: 0xE7E7E7E7E7 length:1, pid:3, no_ack:0, CRC:0x02A3 data:FF 
1433238474.881214 NRF24 Packet start sample 298150, Threshold:4770, Address: 0xE7E7E7E7E7 length:1, pid:1, no_ack:0, CRC:0xCE67 data:FF 
1433238474.882156 NRF24 Packet start sample 301571, Threshold:5302, Address: 0xE7E7E7E7E7 length:1, pid:2, no_ack:0, CRC:0x64C1 data:FF 
1433238474.896965 NRF24 Packet start sample 321818, Threshold:5265, Address: 0xE7E7E7E7E7 length:1, pid:0, no_ack:0, CRC:0xA805 data:FF 
1433238474.898889 NRF24 Packet start sample 325754, Threshold:5414, Address: 0xE7E7E7E7E7 length:1, pid:2, no_ack:0, CRC:0x64C1 data:FF 
1433238474.943326 NRF24 Packet start sample 403294, Threshold:5538, Address: 0xE7E7E7E7E7 length:15, pid:3, no_ack:0, CRC:0x7E5E data:3C 00 00 00 00 00 00 00 80 00 00 00 00 00 00 
1433238474.966901 NRF24 Packet start sample 504654, Threshold:4824, Address: 0xE7E7E7E7E7 length:1, pid:3, no_ack:0, CRC:0x02A3 data:FF 
```

To stop sniffing, stop the GNURadio program and to re-run, run the decoder and then the gnuradio program.

