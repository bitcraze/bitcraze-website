---
layout: page
title: Raspberry Pi as a ground station
page_id: rasp-pi-ground-station
---
**Warning: these instructions are old and might need updating**

## Using the Raspberry Pi as a ground station for flying

In order to make it easy for users that have a Raspberry Pi to test out our headless client we prepared an SD-card image that is ready to use out of the box.

The full SD-card image, and instructions on how to install it are located [here](/documentation/repository/crazyflie-clients-python/master/userguides/raspberrypi/).

Instead of the official Python headless client, there is also a working Ruby version of the headless client, developed by a user. This version, called Crubyflie, can be installed on top of the SD-card image described above or on a standalone version of Linux/Debian/Raspbian. It allows you to adjust control variables (like X-mode or max thrust) by changing the values in a configuration file. For more information visit [the Crubyflie installation page](https://github.com/hsanjuan/crubyflie).

## Manual Installation
As an alternative to a full SD-card image, you can manually install the headless Python client as a program on your Pi. You should setup the CF Headless client (see below) instead of the regular PC client on your Pi, since the UI seems to a bit too heavyweight for the Pi (controlling got very laggy during tests).

For the following installation instructions it is assumed that you are running the popular [Raspbian](http://www.raspbian.org/) distrubution on your Pi.

### Setup the Crazyradio dongle
In order for the client to be able to access the dongle, you'll have to setup these [udev rules](/documentation/repository/crazyflie-lib-python/master/installation/usb_permissions/).

### Install the headless client
Execute the following commands as your user of choice (for example the default user `pi`):

```
cd
sudo apt-get install mercurial python2.7 python-usb python-pygame python-qt4
hg clone https://bitbucket.org/bitcraze/crazyflie-pc-client
cd crazyflie-pc-client
hg up dev-headless
```


This installs the necessary dependencies for running the client, checks out the current development version from BitBucket and then switches to the branch containing the headless client.

If you are using an XBox Controller w/ Wireless Gaming Receiver, you might need to also install the userspace driver:

```
sudo apt-get install xboxdrv
```

and start it: `sudo xboxdrv`

**NOTE: All modern Linux distribution now have a kernel driver for the x-box gamepad. Thus it is unlikely the xboxdrv user-space driver is needed.**

Plugin your Crazyradio and your controller, power up the Crazyflie and start the client (via SSH and Ethernet or by using an USB hub to connect Crazyradio, controller and keyboard):

```
python ~/crazyflie-pc-client/bin/cfheadless -u radio://0/10/250K -i <your input config (without the .json suffix)>
```
If you get an error message that `python2` could not be found, edit `~/crazyflie-pc-client/bin/cfheadless` and change the `python2` in the first line to `python`

The client should start up, hopefully find your Crazyradio dongle, your Crazyflie and your controller and start accepting commands:

```
pi@raspberrypi ~ $ ~/crazyflie-pc-client/bin/cfheadless -u radio://0/10/250K -i <your input config>
Info: Using config path:  /home/pi/crazyflie-pc-client/lib/../conf
Info: sys.path= ['/home/pi/crazyflie-pc-client/lib', '/home/pi/crazyflie-pc-client/lib/../conf', '/home/pi/crazyflie-pc-client/bin', '/usr/lib/python2.7', '/usr/lib/python2.7/plat-linux2', '/usr/lib/python2.7/lib-tk', '/usr/lib/python2.7/lib-old', '/usr/lib/python2.7/lib-dynload', '/usr/local/lib/python2.7/dist-packages', '/usr/lib/python2.7/dist-packages', '/usr/lib/python2.7/dist-packages/gtk-2.0', '/usr/lib/pymodules/python2.7']
Disabling standard output for libraries!
INFO:cfclient.utils.config:Dist config read from /home/pi/crazyflie-pc-client/lib/cfclient/configs/config.json
INFO:cfclient.utils.input:Parsing [PS3_Mode_1.json]
INFO:cfclient.utils.input:Parsing [xbox360_mode1.json]
INFO:cfclient.utils.input:Parsing [PS3_Mode_2.json]
INFO:cfclient.utils.input:Parsing [Generic_OS_X.json]
INFO:cfclient.utils.input:Parsing [<your input config>.json]
DEBUG:cflib.crazyflie:Adding callback on port [5] to [<bound method Log._new_packet_cb of <cflib.crazyflie.log.Log instance at 0x82ff08>>]
DEBUG:cflib.crazyflie:Adding callback on port [0] to [<bound method Console.incoming of <cflib.crazyflie.console.Console instance at 0x90f0f8>>]
DEBUG:cflib.crazyflie:Adding callback on port [2] to [<bound method _ParamUpdater._new_packet_cb of <_ParamUpdater(Thread-2, initial daemon)>>]
INFO:cflib.crazyflie:Callback->Connection initialized[radio://0/10/250K]
INFO:cflib.crazyflie:We are connected[radio://0/10/250K], request connection setup
DEBUG:cflib.crazyflie.toc:[5]: Start fetching...
DEBUG:cflib.crazyflie:Adding callback on port [5] to [<bound method TocFetcher._new_packet_cb of <cflib.crazyflie.toc.TocFetcher instance at 0x90fad0>>]
DEBUG:cflib.crazyflie:ExpectAnswer: Will expect answer on port [5]
Found [Xbox Gamepad (userspace driver)]
Will use [Xbox Gamepad (userspace driver)] for input
DEBUG:cflib.crazyflie:ExpectAnswer: No answer on [5], do retry
DEBUG:cflib.crazyflie:ExpectAnswer: Will expect answer on port [5]
WARNING:cflib.crazyflie:ExpectAnswer: ERROR! Older timer whas running while scheduling new one on [5]
DEBUG:cflib.crazyflie:ExpectAnswer: No answer on [5], do retry
DEBUG:cflib.crazyflie:ExpectAnswer: Will expect answer on port [5]
WARNING:cflib.crazyflie:ExpectAnswer: ERROR! Older timer whas running while scheduling new one on [5]
DEBUG:cflib.crazyflie:ExpectAnswer: No answer on [5], do retry
DEBUG:cflib.crazyflie:ExpectAnswer: Will expect answer on port [5]
WARNING:cflib.crazyflie:ExpectAnswer: ERROR! Older timer whas running while scheduling new one on [5]
INFO:cflib.crazyflie:Callback->Connected to [radio://0/10/250K]
ERROR:cflib.crazyflie.toc:Got packet that was not on TOC channel, TOC fetch will probably not succeed
DEBUG:cflib.crazyflie:ExpectAnswer: Got answer back on port [5], cancelling timer
DEBUG:cflib.crazyflie.toc:[5]: Got TOC CRC, 9 items and crc=0x892049D2
INFO:cflib.crazyflie.toc:TOC for port [5] found in cache
DEBUG:cflib.crazyflie:Removing callback on port [5] to [<bound method TocFetcher._new_packet_cb of <cflib.crazyflie.toc.TocFetcher instance at 0x90fad0>>]
DEBUG:cflib.crazyflie.toc:[5]: Done!
INFO:cflib.crazyflie:Log TOC finished updating
DEBUG:cflib.crazyflie.toc:[2]: Start fetching...
DEBUG:cflib.crazyflie:Adding callback on port [2] to [<bound method TocFetcher._new_packet_cb of <cflib.crazyflie.toc.TocFetcher instance at 0x926968>>]
DEBUG:cflib.crazyflie:ExpectAnswer: Will expect answer on port [2]
DEBUG:cflib.crazyflie:ExpectAnswer: Got answer back on port [2], cancelling timer
DEBUG:cflib.crazyflie.toc:[2]: Got TOC CRC, 27 items and crc=0x27A2C4BA
INFO:cflib.crazyflie.toc:TOC for port [2] found in cache
DEBUG:cflib.crazyflie:Removing callback on port [2] to [<bound method TocFetcher._new_packet_cb of <cflib.crazyflie.toc.TocFetcher instance at 0x926968>>]
DEBUG:cflib.crazyflie.toc:[2]: Done!
INFO:cflib.crazyflie:Param TOC finished updating
INFO:cflib.crazyflie:Callback->Connection setup finished [radio://0/10/250K]
```

### Manually Customizing Your .json Configuration File
If you created a customized .json file for your xbox controller using a Windows PC and the cfclient GUI and are planning to copy it over to your Raspberry Pi, here is some advice:

-save the new .json file as something different than the default, so you can recognize it easily. e.g. xbox360new.json

-the new .json file is not located in the Program Files(x64)/cfclient/input folder along with all the other default .json files; it's actually located in a hidden folder in your home directory. Use the run… command from the start menu to get to it. Type C:\Users\<your user name>\AppData\Roaming\cfclient\input\ to get to the right location of your new .json file

-copy your new .json file into the correct RPi folder: /crazyflie-pc-client/conf/input/ Getting your customized .json file from your windows pc to your raspberry pi can be tricky. Emailing it to yourself and accessing it using a RPi internet browser (like Midori) won't work because most email sites (hotmail, Gmail, etc.) require Java to access and RPi can't use Java. USB flash drives need to be formatted correctly and that's a pain. Try using [WinSCP](http://winscp.net/eng/index.php) to move files from your Windows PC to the RPi. I also found [a solution](http://gettingstartedwithraspberrypi.tumblr.com/post/24398167109/file-sharing-with-afp-and-auto-discovery-with-bonjour) if you have access to a Mac– install Netatalk on your Mac  and your RPi will show up magically in the finder window on your Mac.

    sudo apt-get install netatalk

Verify netatalk was installed successfully on your RPi by checking the Finder window on your Mac for a “Raspberry Pi” shared drive. On your windows machine, copy your new .json file to a flash drive and plug it into your Mac. Then you can just drag/drop your new .json file from the flash drive into the /crazyflie-pc-client/conf/input/ folder using your Mac (thanks to Netatalk).

-the cfheadless client on RPi may not recognize the same controller channel “id” numbers that were correct for your .json file when it worked on your Windows machine. Mine didn't recognize the roll command, so when I flew, the CF just had pitch, yaw, and thrust using the controller sticks–no roll, but the right trigger would roll the CF hard to the right. Using nano <my xbox config file>.json, I viewed/edited my .json file to identify which “id” was associated with the Right trigger and swapped it with the roll “id” number: Had to change the roll “id” from 4 to 0 and whatever input was associated with 4, I changed the “id” of that one to 0. Bottom line: If your .json file isn't controlling your CF correctly, experiment with the “id” numbers in your .json file. Just remember not to duplicate any “id” numbers. A number can only be used once in the file. Here's what worked for me:

* Xbox Controller Input = id#

*  Left stick vertical = 1

*  Left stick horizontal = 0

*  Right stick vertical = 3

* Right stick horizontal = 2

* Right trigger = 4

Customize your flying configuration anyway you like using the inputs/id's above as a reference.

**Note:** If you have more than one controller attached, you can select the one to use using the commandline parameter -c. See cfheadless -h for available command line options:

```
usage: cfheadless [-h] [-u URI] [-i INPUT] [-d] [-c CONTROLLER]
                  [--controllers]

optional arguments:
  -h, --help            show this help message and exit
  -u URI, --uri URI     URI to use for connection to the Crazyradio dongle,
                        defaults to radio://0/10/250K
  -i INPUT, --input INPUT
                        Input mapping to use for the controller, defaults to
                        PS3_Mode_1
  -d, --debug           Enable debug output
  -c CONTROLLER, --controller CONTROLLER
                        Use controller with specified id, id defaults to 0
  --controllers         Only display available controllers and exit
  ```

**Note:** If you still have an old version of the headless client you'll need to manually change the URI of your Crazyradio from the default 1M to 250K (make sure the K is uppercase). If you want to use a custom configuration (other than PS3_Mode_1) for the controller or mapping of your choice, copy the .json configuration file to ~/crazyflie-pc-client/conf/input and edit the file ~/crazyflie-pc-client/lib/cfheadless.py (at the end of the file) with the corresponding filename:

  ```
    app = HeadlessClient(sys.argv,link_uri="radio://0/10/250K",
                         input_config="<your input config>")
  ```
You can then startup the client without any command line arguments and it should hopefully work as well:` ~/crazyflie-pc-client/bin/cfheadless`


### Make the client startup automatically on Crazyradio plug in

Starting (and killing) the client automatically upon Crazyradio insertion/removal can be done via udev.

Adjust your Crazyradio udev rule (e.g. `/etc/udev/rules.d/99-crazyradio.rules`) to look like the following:

```
SUBSYSTEM=="usb", ATTRS{idVendor}=="1915", ATTRS{idProduct}=="7777", MODE=="0664", GROUP="plugdev", RUN+="/root/bin/cfheadless"
```

and (as root) you will create a file `/root/bin/cfheadless` using the instructions below, with the following contents:

```
#!/bin/sh
if test "$ACTION" = "add"
then
        /usr/bin/sudo -u pi /home/pi/crazyflie-pc-client/bin/cfheadless -u radio://0/10/250K -i <your input config without the .json extension> > /tmp/cfheadless.log 2>&1 &
        echo $! > /tmp/cfheadless.pid
else
        killall -9 cfheadless
        if test -f /tmp/cfheadless.pid
        then
                PID=`cat /tmp/cfheadless.pid`
                kill -9 $PID
        fi
fi
```

You can only create the cfheadless file above in the /root/bin/ folder by being root–not pi or any other user name. Switch to root: sudo -i and then navigate to the /root/bin/ folder: cd /bin/. Create the cfheadless file by typing:

    touch cfheadless

to create the file. Then

    nano cfheadless

to edit the file, adding the code shown above ('sudo' prefix not needed because you're already root). Remember to substitute your desired config file in the appropriate place in the code above (replace: <your input config…>). Use the same method for the xbox360 file described in the section below if using a xbox360 controller:

For the XBox360 Controller (after an `apt-get install xboxdrv`):

Create a udev file `/etc/udev/rules.d/99-xbox360.rules` with contents (if using a Microsoft wireless gaming receiver):

```
SUBSYSTEM=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="0719", RUN+="/root/bin/xbox360"
```

and (as root) create a file `/root/bin/xbox360` with the following contents:

```
#!/bin/sh
if test "$ACTION" = "add"
then
        /usr/bin/xboxdrv &
else
        killall -9 xboxdrv
fi
```

Don't forget to make your files executable after you've created them: `chmod +x /bin/cfheadless` and `chmod +x /bin/xbox360`. Once you've created the cfheadless file (and xbox360 file, if needed), exit the root mode by typing Ctl + D. You may have to restart your RPi in order for all new udev rules to take effect. Rather than unplug/replug your RPi, consider the following command:

    sudo shutdown -h now -r

The -h halts all processes, the -r is the command to reboot after shutdown.

This should now take care to startup the headless client when you plug in the dongle and (hopefully ;-)) kill it again when you unplug. If you need any additional setup to get your controller working, you can add a similar udev-rule for that to take care of everything upon plugging in the controller as well.

**Important!** Due to the current state of the client, you must make sure to first connect your controller and power up the Crazyflie before connecting the Crazyradio dongle and thus starting the client. If the client can't find either controller or Crazyflie, it will just hang and you'll have to re-plug the dongle again.

**Troubleshooting** If it still doesn't appear to work, try looking at the logs in the each of the following areas:

* /tmp/cfheadless.log (If this log indicates that there's no reference to Python2, edit crazyflie-pc-client/bin/cfheadless in order to change the 'python2' to 'python' in the beginning lines of the code.)
* /var/log/syslog

Also, if xboxdrv can't be run without the sudo command, or there are other permissions issues with the xbox wireless usb controller, try adding the the xbox360 wireless receiver to a group you created that has root privileges, like 'plugdev'. This can be done by adding: GROUP=“plugdev”, to the 99-xbox360.rules udev rule (similar to the code in the crazyradio udev rule):

```
SUBSYSTEM=="usb", ATTRS{idVendor}=="045e", ATTRS{idProduct}=="0719", GROUP="plugdev", RUN+="/root/bin/xbox360"
```

Also, if running the xboxdrv command from a terminal window gives you the following error:

```
Error couldn't claim the USB interface: LIBUSB_ERROR_BUSY
```

…your controller may very well have already started automatically per the udev rule you created above and could be working correctly and currently is in use. Make sure your wireless xbox controller is powered on and connected (green arc showing), turn on your crazyflie and then plug in your crazyradio. Once the green light on your crazyflie flashes on, you have a connection and are ready to fly!

## Make your base station portable
If you want to you can make your base station completely portable simply by using a portable USB power supply (e.g. the Anker3 10.000mAh) for powering the Pi. Putting everything into some case and attaching it somewhere on yourself (e.g. your belt) makes you completely mobile while piloting your Crazyflie :-)


