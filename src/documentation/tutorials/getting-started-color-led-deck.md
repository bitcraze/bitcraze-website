---
layout: page-left-menu
title: Getting started with the Color LED deck
page_id: getting-started-color-led-deck
redirects:
  - /getting-started-with-color-led-deck/
---

{% si_intro The Color LED deck %}
The Color LED deck gives the Crazyflie 2.x and Brushless the ability to light up with custom WRGB colors.
With the Color LED deck the Crazyflie 2.x is able to provide visual feedback in research, be a dazzling addition to a show and much more.

For more information about how to mount an expansion deck please see the {% id_link getting-started-expansion-decks %} tutorial.

To be able to use the Color LED deck you need to update the Crazyflie to the latest firmware. For more information on how to update the firmware, see the [update firmware in the Crazyflie]({% id_url getting-started-crazyflie-2; update-fw %}) section in our getting started with Crazyflie 2.x tutorial.
You will also need the latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases).

{% endsi_intro %}

{% si_step  Top and Bottom Versions %}
The Color LED deck comes in two versions based on position on the Crazyflie: top or bottom. They can both be attached at the same time if you have both versions. It is important to attach the deck in its intended position, since it will not work otherwise. 

Check your verison by looking at the text on the bottom of the deck:
* "Front up" means that it is the bottom version (since its underside will point up).
* "Front down" means that it is the top version (since its underside will point down).
{% endsi_step %}

{% si_step  Controlling Colors with the Color LED tab%}

To get started with the Color LED deck you need to use the Python client and set up a connection with your Crazyflie.
For more information go to the {% id_link getting-started-crazyflie-2 %}.

* Connect to your Crazyflie with the Color LED deck correctly attached.
* In the client, go to **View -> Tabs** and select the **Color LED** tab in the menu.

{% img Add Color LED tab to view; narrow; /images/tutorials/getting_started_with_color_led/color-tab-view.png %}

* Open the Color LED tab. The contents will be disabled if the Crazyflie is not yet connected.
* The deck position dropdown is updated according to attached decks. When both top and bottom decks are attached, you can choose to control top and bottom separately or both at the same time.
* The default color is black (all LEDs off). Select your color by entering a hex code, choose with the graphical interface or select from one of the color buttons.
* It is also possible to add (using the plus button) and remove (using right click) custom color buttons.

{% img The Color LED tab; wide; /images/tutorials/getting_started_with_color_led/color-tab-in-use.png %}

{% endsi_step %}

{% si_step  Controlling Colors with Parameters %}

The colors can also be controlled by parameters from the client. The Color LED deck has its parameter group depending on its version, colorLedBot controls the bottom version and colorLedTop controls the top version.

The group consists of two parameters:
* **brightCorr** controls the brightness correction. The value can be...
* **wrgb8888** controls the colors of the four LEDs. The value can be...

{% img User-interface guide; wide; /images/tutorials/getting_started_with_color_led/color-parameter1.png %}

{% endsi_step %}

{% si_step The Color LED deck in action! %}

{% youtube 64LOEAQJamw; wide; 16by9 %}

{% endsi_step %}

{% si_step What's Next? %}
* Learn how to control a Crazyflie with a Color LED deck from a python script using our [Software User Guides](https://www.bitcraze.io/documentation/repository/crazyflie-lib-python/master/user-guides/) and by checking out our [Color LED examples](https://github.com/bitcraze/crazyflie-lib-python/tree/master/examples/color_led_deck) in our Python lib.
{% endsi_step %}

