---
layout: page
title: Overview Client Software
page_id: overview_clients
redirects:
  - /docs/overview_clients/
---

{% row_full %}

The main client for controling the Crazyflie device family is the python client that runs on a PC and communicates via the Crazyradio PA USB dongle. The client uses a python library, which also is the main connection point for programs and scripts that communicate with the devices.

Swarms of Crazyflies can be controlled through the python library, the external CrazySwarm project or other software.

There are mobile phone apps for Android and IOS that connects via BLE, mainly for manual flight.


![System overview](/images/documentation/overview/overview_clientsoftware.jpg)

---

{% endrow_full %}


{% row_image_text_links PC clients; /images/documentation/overview/pc_thumbnail.jpg %}
{% row_text %}
We have a Crazyflie 2.X python-based client for the PC, of which all the documentation can be found [here](/documentation/repository/crazyflie-clients-python/master/). The PC client runs on the Crazyflie library (CFlib), of which all the documentation can be found [here](/documentation/repository/crazyflie-lib-python/master/).

{% endrow_text %}
{% row_links %}
* [Crazyflie Python-based client documentation](/documentation/repository/crazyflie-clients-python/master/)
* [Crazyflie Python library documentation](/documentation/repository/crazyflie-lib-python/master/)
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Crazyradio PA; /images/documentation/overview/crazyradioPA_thumbnail.jpg %}
{% row_text %}
The PC needs a Crazyradio PA in order to communicate with the Crazyflie 2.X. This relays the CTRP protocol from the PC client or the Crazyflie library to and from the CF2. The documentation also explains how to setup the USB permissions on your specific OS or machine.
{% endrow_text %}
{% row_links %}
* [Crazyradio PA documentation](/documentation/repository/crazyradio-firmware/master/).
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Components; /images/documentation/overview/mobile_thumbnail.jpg %}
{% row_text %}
There are apps existing for controlling the Crazyflie 2.X on both [IOS](https://apps.apple.com/us/app/crazyflie-2-0/id946151480) and [Android](https://play.google.com/store/apps/details?id=se.bitcraze.crazyfliecontrol2) with Bluetooth LE communication.
{% endrow_text %}
{% row_links %}
* [Android Client Documentation](https://wiki.bitcraze.io/doc:crazyflie:client:cfandroid:index)
* [IOS Client Documentation](https://wiki.bitcraze.io/doc:crazyflie:client:cfios:index)
{% endrow_links %}
{% endrow_image_text_links %}
