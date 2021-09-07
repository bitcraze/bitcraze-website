---
layout: page-product
title: Buzzer deck
page_id: product-buzzer-deck
redirects:
  - /buzzer-deck/
---

{% buy_online https://store.bitcraze.io/collections/decks/products/buzzer-deck %}

{% product_img Buzzer deck; narrow;
/images/buzzer-deck/Buzzer-deck-585px.JPG
%}

{% product_highlight
fa-volume-up;
Play some tunes;
Get audio feedback and get creative by composing and playing your own melodies.
%}





{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

Sometimes LED feedback isn't enough, like when you're flying around in a lab and living room. With the
{% poplink buzzer-deck %} you'll get audio feedback on system events, like low battery or
charging completed.
Or why not create your own melodies that will play while you're buzzing around. If you're tapped out on creativity there are already a few
melodies pre-programmed that you can use.

{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}

{% datasheet_section buzzer_deck; Features %}
{% datasheet_section buzzer_deck; Mechanical specifications %}
{% datasheet_section buzzer_deck; Electrical specification %}
#### Compatibility
See [the compatibility matrix]({% id_url cf2_expansiondecks %}#compatibility-matrixes)


{% endrow_text %}
{% row_links %}
- [Datasheet](/documentation/hardware/buzzer_deck/buzzer_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/buzzer_deck/buzzer-revc.pdf)
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

#### Changing the sounds 



You can change the ['Sound parameters'](/documentation/repository/crazyflie-firmware/master/api/params/#sound) to change the tune. Also follow the [buzzer deck tutorial]({% id_url getting-started-buzzer-deck %})


{% youtube m6rL3y-gLG4; wide; 16by9 %}



{% endrow_text %}
{% row_links %}
- ['Parameters'](/documentation/repository/crazyflie-firmware/master/api/params/#sound)
- {% id_link getting-started-buzzer-deck %}

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}
#### Changing sounds in firmware
Changing the sounds requires modifications to the firmware. The code for the sounds is located in [sound_cf.c](https://github.com/bitcraze/crazyflie-firmware/blob/master/src/modules/src/sound_cf2.c). 

A sequences is defined in the .notes member of the Melody struct. The notes are defined as tuples of a note (pitch) and duration. A sequence must be ended with the end marker.

The effects are defined in the effects array. Each entry takes a function to call and related parameters.
To add a new melody, use the melodyplayer function for the .call member and assign your Melody struct to the .melody member. 
{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
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
- [Datasheet](/documentation/hardware/buzzer_deck/buzzer_deck-datasheet.pdf)
- [Schematics](/documentation/hardware/buzzer_deck/buzzer-revc.pdf)
- {% id_link getting-started-buzzer-deck %}
- [Changing the sound](/documentation/repository/crazyflie-firmware/master/userguides/decks/buzzer-deck/)

---

#### Tutorials

{% id_link getting-started-expansion-decks %}
