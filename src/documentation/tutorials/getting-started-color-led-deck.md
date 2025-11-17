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
The Color LED deck comes in two versions based on its position on the Crazyflie: top or bottom. They can both be attached at the same time if you have both versions. It is important to attach the deck correctly since it only works in its intended position. 

Check your verison by looking at the text on the bottom of the deck:
* The top version (right in the image below) has the text "front down" and no visible connectors.
* The bottom version (left in the image below) has the text "front up" and has visible connectors.
{% img Top and Bottom Color LED deck; narrow; /images/tutorials/getting_started_with_color_led/color_led_bottom_and_top.jpg %}

Attaching the deck works the same way for both versions. Make sure the Crazyflie is powered off, position the deck in the correct orientation and line up with the pins. 
{% tutorialVideo /videos/attach_color_led_bottom.mp4 %}
{% tutorialVideo /videos/attach_color_led_top.mp4 %}

{% endsi_step %}

{% si_step  Controlling Colors with the Color LED tab%}

To get started with the Color LED deck you need to use the Python client and set up a connection with your Crazyflie.
For more information go to the {% id_link getting-started-crazyflie-2 %}.

1. Connect to your Crazyflie with the Color LED deck correctly attached.
2. In the client, go to **View -> Tabs** and select the **Color LED** tab in the menu.
    {% img Add Color LED tab to view; narrow; /images/tutorials/getting_started_with_color_led/color-tab-view.png %}

3. Open the Color LED tab. The contents will be disabled if the Crazyflie is not yet connected.
4. Test out the colors! Learn more details about the Color LED tab in the [client documentation](https://www.bitcraze.io/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/).

{% img The Color LED tab; wide; /images/tutorials/getting_started_with_color_led/color-tab-in-use.png %}

{% endsi_step %}

{% si_step  Controlling Colors with Parameters %}

The colors can also be controlled by parameters from the client. The Color LED deck has its parameter group depending on its version, colorLedBot controls the bottom version and colorLedTop controls the top version.

The group consists of two parameters:
* **brightCorr** enables brightness correction (gamma and luminance normalization) for the Color LED deck. The value can be either 0 (off) or 1 (on).
* **wrgb8888** controls the color via a color value in WRGB format (0xWWRRGGBB). It takes values between 0 and 255. For example: 0x000000FF = 255 = max blue. 

{% img User-interface guide; wide; /images/tutorials/getting_started_with_color_led/color-parameter1.png %}

{% endsi_step %}

{% si_step The Color LED deck in action! %}

{% tutorialVideo /images/tutorials/getting_started_with_color_led/color-led-in-action.mp4%}

{% endsi_step %}

{% si_step What's Next? %}
* Learn how to control a Crazyflie with a Color LED deck from a python script using our [Software User Guides](https://www.bitcraze.io/documentation/repository/crazyflie-lib-python/master/user-guides/) and by checking out our [Color LED examples](https://github.com/bitcraze/crazyflie-lib-python/tree/master/examples/color_led_deck) in our Python lib.
{% endsi_step %}

