---
layout: page-left-menu
title: Getting started with the Color LED deck
page_id: getting-started-color-led-deck
redirects:
  - /getting-started-with-color-led-deck/
---

{% si_intro The Color LED deck %}
The **Color LED deck** gives the Crazyflie™ 2.x and Crazyflie™ Brushless the ability to light up with custom WRGB (White, Red, Green and Blue) colors, making the Crazyflie able to provide visual feedback in research, be a dazzling addition to a show, and much more. This Getting started guide shows how to get up and running with the Color LED deck in the client.

{% endsi_intro %}

{% si_step  Prerequisites %}
**Before** you start using the Color LED deck, you should do the following:
* Follow the {% poplink getting-started-cf %} for your Crazyflie platform to set up your Crazyflie and the client. 
* Update your Crazyflie to the latest firmware. For more information on how to update the firmware, see the [Firmware Upgrade](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/#firmware-upgrade) section in the client documentation.
* Update to the latest version of the [Crazyflie client](https://github.com/bitcraze/crazyflie-clients-python/releases).

> This guide assumes that you have already set up the Crazyflie and client, and that you are familiar with how to connect to your Crazyflie in the client.

{% endsi_step %}

{% si_step  Top and Bottom Versions %}
The Color LED deck comes in two versions based on its position on the Crazyflie: **top** and **bottom**. They can be attached at the same time if you have both versions. It is important to attach the deck correctly since it only works in its intended position. 

If you are unsure about what version you have, check the following:
* The bottom version (left in the image below) has the text "front up" and has visible connectors.
* The top version (right in the image below) has the text "front down" and no visible connectors.
{% img Top and Bottom Color LED deck; narrow; /images/tutorials/getting_started_with_color_led/color_led_bottom_and_top.jpg %}

Attaching the deck works the same way for both versions. Make sure the Crazyflie is powered off, position the deck in the correct orientation and line up with the pins. 
For more information about how to mount an expansion deck, please see the {% id_link getting-started-expansion-decks %} tutorial.

Attaching the bottom version:
{% tutorialVideo /videos/attach_color_led_bottom.mp4 %}
Attaching the top version:
{% tutorialVideo /videos/attach_color_led_top.mp4 %}

{% endsi_step %}

{% si_step  Controlling Colors with the Color LED tab%}

1. After you have attached the Color LED deck in the correct position, connect to your Crazyflie in the client. 
2. In the client, go to **View -> Tabs** and select the **Color LED** tab in the menu.
    {% img Add Color LED tab to view; narrow; /images/tutorials/getting_started_with_color_led/color-tab-view.webp %}

3. Open the Color LED tab. The contents will be disabled if the Crazyflie is not yet connected.
4. Test out the colors! You can do this by using the color field, the color buttons or entering a hex code. Learn more details about the Color LED tab in the [client documentation](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/).

{% img The Color LED tab; wide; /images/tutorials/getting_started_with_color_led/color-tab-in-use.webp %}

{% endsi_step %}

{% si_step  Controlling Colors with Parameters %}

The colors can also be controlled by parameters from the client in the **Parameter tab**. Add the Parameter tab the same way that you added the Color LED tab. The Color LED deck has its parameter group depending on its version:
* colorLedBot controls the bottom version, and
* colorLedTop controls the top version.

The group consists of two parameters:
* **brightCorr** enables brightness correction (gamma and luminance normalization) for the Color LED deck. The value can be either 0 (off) or 1 (on).
* **wrgb8888** controls the color via a color value between 0 and 255 in WRGB format (0xWWRRGGBB). For example: 255 = 0x000000FF = max blue. 

{% img User-interface guide; wide; /images/tutorials/getting_started_with_color_led/color-led-parameters.webp %}

{% endsi_step %}

{% si_step The Color LED deck in action! %}

{% tutorialVideo /images/tutorials/getting_started_with_color_led/color-led-in-action.mp4%}

{% endsi_step %}

{% si_step What's Next? %}
* Learn how to control a Crazyflie with scripting and the Crazyflie Pyton lib using our [Software User Guides](/documentation/repository/crazyflie-lib-python/master/user-guides/).
* Check out the [Color LED examples](https://github.com/bitcraze/crazyflie-lib-python/tree/master/examples/color_led_deck) in our Python lib.
* Try out the [LED Color Cycle Example Firmware App](https://github.com/bitcraze/crazyflie-firmware/tree/master/examples/app_color_led_cycle) to see an example of how to create an app in the firmware to run light patterns for the Color LED deck.
{% endsi_step %}

