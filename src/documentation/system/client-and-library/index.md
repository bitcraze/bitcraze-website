---
layout: page
title: Client Software Overview
page_id: overview_clients
redirects:
  - /docs/overview_clients/
---

{% row_full %}

The main client for controlling the Crazyflie<sup>®</sup> device family is the python client that runs on a PC and communicates via the {% poplink crazyradio-2-0 %} USB dongle. The client uses a python library, which also is the main connection point for programs and scripts that communicate with the devices.

Swarms of Crazyflies can be controlled through the python library, the external CrazySwarm project or other software.

There are mobile phone apps for Android and IOS that connects via BLE, mainly for manual flight.

{% img client software overview; wide; /images/documentation/overview/overview_clientsoftware.jpg %}

---

{% endrow_full %}


{% row_image_text_links PC clients; /images/documentation/overview/pc_thumbnail.jpg %}
{% row_text %}
We have a Crazyflie 2.x python-based client for the PC, of which all the documentation can be found [here]({% repo_doc_url crazyflie-clients-python %}). The PC client runs on the Crazyflie library (CFlib), of which all the documentation can be found [here]({% repo_doc_url crazyflie-lib-python %}).

{% endrow_text %}
{% row_links %}
* [Crazyflie Python-based client documentation]({% repo_doc_url crazyflie-clients-python %})
* [Crazyflie Python library documentation]({% repo_doc_url crazyflie-lib-python %})
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Crazyradio 2.0; /images/documentation/overview/crazyradioPA_thumbnail.jpg %}
{% row_text %}
The PC needs a {% poplink crazyradio-2-0 %} or Crazyradio PA in order to communicate with the Crazyflie 2.x. This relays the CTRP protocol from the PC client or the Crazyflie library to and from the CF2. The documentation also explains how to setup the USB permissions on your specific OS or machine.
{% endrow_text %}
{% row_links %}
* [Crazyradio 2.0 documentation]({% repo_doc_url crazyradio2-firmware %}).
* [Crazyradio PA documentation]({% repo_doc_url crazyradio-firmware %}).
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Mobile Phone Clients; /images/documentation/overview/mobile_thumbnail.jpg %}
{% row_text %}
There are apps existing for controlling the Crazyflie 2.x on both [IOS](https://apps.apple.com/us/app/crazyflie-2-0/id946151480) and [Android](https://play.google.com/store/apps/details?id=se.bitcraze.crazyfliecontrol2) with Bluetooth LE communication.
{% endrow_text %}
{% row_links %}
* [Android Client Documentation]({% repo_doc_url crazyflie-android-client %})
* [IOS Client Documentation]({% repo_doc_url crazyflie2-ios-client %})
{% endrow_links %}
{% endrow_image_text_links %}
