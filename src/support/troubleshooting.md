---
layout: page-left-menu
title: Troubleshooting
permalink: /troubleshooting/
page_id: support-troubleshooting
---

{% si_intro Crazyflie 2.0 cfclient connects but does not communicate %}
&#32;
{% endsi_intro %}

{% si_step update to latest cfclient %}
Follow this guide to update to the [latest cfclient.](/getting-started-with-the-crazyflie-2-0/#update-src)
Then proceed with [updating](/getting-started-with-the-crazyflie-2-0/#update-fw) the firmware.
{% endsi_step %}

{% si_step update to latest firmware %}
Follow this guide to download the [latest firmware.](/getting-started-with-the-crazyflie-2-0/#latest-fw)
Then proceed with [updating](/getting-started-with-the-crazyflie-2-0/#update-fw) the firmware.
{% endsi_step %}

{% si_intro Crazyflie 2.0 android client doesn't connect %}
&#32;
{% endsi_intro %}

{% si_step Check compatibility %}
Check that you android device supports bluetooth smart/low energy.
{% endsi_step %}

{% si_step Don't pair%}
Don't pair the Crazyflie 2.0, just connect directly through the app. If so unpair it and try again.
{% endsi_step %}

{% si_intro Crazyflie 2.0 doesn't take off %}
&#32;
{% endsi_intro %}

{% si_step make sure propellers are mounted correctly %}
Check that the propellers are mounted correctly by using [this](/wp-content/uploads/2014/09/cf2_props.png) detailed view.
{% endsi_step %}

{% si_step make sure propellers are mounted with right side up %}
Check that you can see a little "ring" on every propeller's center otherwise the propellers are mounted upside down.
{% endsi_step %}

{% si_intro Crazyflie 2.0 flies badly %}
&#32;
{% endsi_intro %}

{% si_step Balance propellers %}
Vibration is a normal cause for decreased flight performance. Try balancing the propellers using [this](/balancing-propellers) guide
{% endsi_step %}

{% si_step Center of gravity %}
Check that the Crayflie 2.0 is well balanced and adjust the battery and connector until it is. Holding the Crazyflie 2.0 in the small "ears" is a easy way to test it.
{% endsi_step %}

{% si_step It doesn't take of straight %}
Check center of gravity. Check for hair stuck in any of the propellers/motors. It can also be that one of the motors are worn out or damaged. This is a bit harder to check. It is most likely the motor towards the direction the Crazyflie 2.0 takes off. Try to listen for strange sound when blowing on the proppeller attached to it.  
{% endsi_step %}

{% si_step Check for bent motor axis %}
Check each motor axis if it is bent as it causes vibration. This can be done by either applying a bit of thrust from a client or by blowing on the propeller and looking at the axis from above. If it is bent it might possible to straighten it with a pair of pliers. If that doesn't work the motor can be changed.
{% endsi_step %}

