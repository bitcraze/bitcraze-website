---
layout: page-left-menu
title: Getting started with development
page_id: getting-started-development
redirects:
  - /getting-started-with-development/
---

{% si_intro Programming the Crazyflie %}
In this tutorial we show the steps needed to change the software running in the
Crazyflie, often called firmware. We will show how to modify the source code ,
how to build it and finally download and flash it to your Crazyflie.
These are the necessary steps to write your own code and change the behaviour
of your Crazyflie.

We assume that you have basic knowledge of the C-programming language.
{% endsi_intro %}

{% si_step preparations %}
For this tutorial you need:

* A Crazyflie
* A {% poplink crazyradio-2-0 %} or Crazyradio PA
* A computer with an IDE installed. In this tutorial we will use [Visual Studio Code](https://code.visualstudio.com/).
* Compile dependencies installed. In this tutorial we will compile the `crazyflie-firmware` repository. For more information on how to install the dependencies, see the [repository documentation](/documentation/repository/crazyflie-firmware/master/building-and-flashing/build/#dependencies). Compiling different projects may require different dependencies.
{% endsi_step %}

{% si_step set-up %}

For details on how to set-up the cfclient and the Crazyradio see
[Getting started with the Crazyflie 2.x]({% id_url getting-started-crazyflie-2; inst-comp %}).

{% endsi_step %}

{% si_step get source code; update %}
In this tutorial we will use the Crazyflie firmware repository. The repository contains the source code that runs on the STM32 microcontroller in the Crazyflie. All public repositories are available on [GitHub](https://github.com/bitcraze). Clone the relevant repository to your computer. For example:

```
$ git clone https://github.com/bitcraze/crazyflie-firmware.git
```

{% endsi_step %}


{% si_intro Modify the source code %}
We will start out by modifying the source code. The update of the code is
minimalistic, we will change the color of the front right LED from red to green.
{% endsi_intro %}

{% si_step start an editor; editor %}
Open your IDE of choice. In this tutorial we use Visual Studio Code.
{% endsi_step %}

{% si_step open the file %}
Use the File menu to select "Open Folder..." and navigate to the cloned "crazyflie-firmware" folder and open it.
{% img Project explorer; medium; /images/getting-started/vscode-open-folder.png %}
Navigate to or search (CTRL + p) for `src/drivers/interface/led.h` and click to open it.
{% endsi_step %}

{% si_step change the code %}
Find the line

```
#define SYS_LED          LED_RED_R
```

and change it to

```
#define SYS_LED          LED_GREEN_R
```

{% endsi_step %}

{% si_step save %}
Save the file through the File menu or by pressing CTRL + S
{% endsi_step %}


{% si_intro Build the source code; make %}
Now it's time to build the source code into binary files that can be
downloaded to the Crazyflie.

For more, and more detailed, information about developing the Crazyflie firmware you can
go to the repository documentation [here.](/documentation/repository/crazyflie-firmware/master/)
{% endsi_intro %}

{% si_step start the build; build %}
If there is no command line terminal at the bottom of the vscode window you can use
the Terminal menu and select "New Terminal" to get access to a `bash` terminal window.

The build system for the Crazyflie firmware is based on `make`.

First navigate to the rootfolder of the crazyflie-firmware repository. Then you will need to create an default configuration file for the firmware:

{% tabgroup %}
{% tab Crazyflie 2.x %}
```
$ make cf2_defconfig
```
{% endtab %}
{% tab Crazyflie 2.1 Brushless %}
```
$ make cf21bl_defconfig
```
{% endtab %}
{% tab Crazyflie Bolt %}
```
$ make bolt_defconfig
```
{% endtab %}
{% endtabgroup %}

If you want to build firmware for a different platform, please checkout the [build instructions of the crazyflie-firmware.](/documentation/repository/crazyflie-firmware/master/building-and-flashing/build/#compiling)

Then you can start a build by issuing the following command in the terminal window in Visual Studio Code:
```
$ make
```
To speed up the build process, utilize all available processing units with:

```
$ make -j$(nproc)
```
You should see something like the below on a successful build:
```
$ make
  CLEAN_VERSION
  CC    sensors_mpu9250_lps25h.o
  CC    sensors_bmi088_bmp388.o
  CC    main.o
  CC    nvic.o
  CC    led.o
  CC    usblink.o
  CC    ledseq.o
  CC    freeRTOSdebug.o
  CC    pm_stm32f4.o
  CC    radiolink.o
  CC    system.o
  CC    usddeck.o
  CC    cfassert.o
  VTMPL version.c
  CC    version.o
  LD    cf2.elf
  COPY  cf2.hex
  COPY  cf2.bin
  DFUse cf2.dfu
Build for the CF2 platform!
Build 11:0864ef92245a (2021.03 +11) MODIFIED
Version extracted from git
Crazyloader build!
Flash |  242184/1032192 (23%),  790008 free | text: 236372, data: 5812, ccmdata: 0
RAM   |   71128/131072  (54%),   59944 free | bss: 65316, data: 5812
CCM   |   58380/65536   (89%),    7156 free | ccmbss: 58380, ccmdata: 0
```
{% endsi_step %}

{% si_intro Flash the Crazyflie; new-fw %}
Now we have the binary files and it is time to download them to the Crazyflie
and save them in the flash memory, often called flashing. Our new modified
version of the firmware will replace what ever version you currently have
installed. If you want to go back to the official firmware just re-flash the
Crazyflie with an [official release](https://github.com/bitcraze/crazyflie-firmware/releases).
{% endsi_intro %}

{% si_step prepare the Crazyflie; bootload %}
Turn your Crazyflie 2.x off.

Start it in bootloader mode by pressing and holding the power button for 3
seconds. Both blue LEDs will blink.
{% endsi_step %}

{% si_step flashing; flash %}
In the terminal window type:
```
$ make cload
```

Printouts in the "Console" window shows the progress and the LEDs on the
Crazyflie flicker.
```
$ make cload
python3 -m cfloader  flash  cf2.bin stm32-fw
Restart the Crazyflie you want to bootload in the next
 10 seconds ...
 done!
Connected to bootloader on the Crazyflie (version=0x10)
Target info: nrf51 (0xFE)
Flash pages: 232 | Page size: 1024 | Buffer pages: 1 | Start page: 88
144 KBytes of flash available for firmware image.
Target info: stm32 (0xFF)
Flash pages: 1024 | Page size: 1024 | Buffer pages: 10 | Start page: 16
1008 KBytes of flash available for firmware image.
Flashing 1 of 1 to stm32 (fw): 242639 bytes (237 pages) ..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10..........10.......7
Reset in firmware mode ...
```

{% endsi_step %}

{% si_step That's it! %}
The Crazyfile should restart when the flashing is complete and the front right LED
of your Crazyflie should now be green instead of the normal red.

Congratulations to your first Crazyflie hack!
{% endsi_step %}

{% si_intro Next steps %}
{% endsi_intro %}

{% si_step Debugging using GDB; debugging %}
For a guide on debugging the Crazyflie firmware using GDB, see the firmware documentation [here.](/documentation/repository/crazyflie-firmware/master/development/openocd_gdb_debugging/)
{% endsi_step %}

{% si_step Alternatives to the VM; alt-to-vm %}
In this tutorial we used the VM, mainly because it is the easiest way to get started. However there two other ways to
compile the code; [installing the toolchain on your machine](/documentation/repository/crazyflie-firmware/master/building-and-flashing/build/)
or using the [Toolbelt](/documentation/repository/toolbelt/master/). All solutions have their pros and
cons but it is probably worth looking into all options if you plan to do some serious development.
{% endsi_step %}
