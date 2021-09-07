---
layout: page-product
title: Battery charger
page_id: product-battery-charger-500mA
redirects:
  - /battery-charger-500mA/
---

{% buy_online https://store.bitcraze.io/collections/accessories/products/500ma-lipo-usb-charger %}

{% product_img Battery charger; narrow;
/images/battery-charger/Charger-585px.JPG
%}

{% product_highlight
fa-battery-full;
Battery charger;
Make sure your batteries are always ready for action!
%}


{% tabgroup %}
{% tab How it Works %}

{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}
Use the Bitcraze battery charger to always have your spare batteries fully charged
to maximize your flight time. If you're a bit handy with a soldering iron you
can even solder multiple chargers together for multi-battery charging.
{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}

{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}
{% datasheet_section lipo_charger_500ma; Features %}
{% datasheet_section lipo_charger_500ma; Mechanical specifications %}
{% datasheet_section lipo_charger_500ma; Electrical specification %}
{% endrow_text %}
{% row_links %}
* [Datasheet](/documentation/hardware/lipo_charger_500ma/lipo_charger_500ma-datasheet.pdf)
* [Schematics](/documentation/hardware/lipo_charger_500ma/chg500ma_reva.pdf)
{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}

{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}
Connect the battery charger to a standard micro USB connector and
the battery connector to a battery. The LED
is lit up while the battery is charging and turns off when fully charged.
{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}

{% endtab %}

{% endtabgroup %}

---

#### Caution

Using a battery under direct sunlight may cause overheating, which could result in invalidation or fire. Battery should be charged with proper charger, in compliance with correct operation instructions. Never charge a battery unattended!

#### Resources

- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link development-overview %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- [Datasheet](/documentation/hardware/lipo_charger_500ma/lipo_charger_500ma-datasheet.pdf)
- [Schematics](/documentation/hardware/lipo_charger_500ma/chg500ma_reva.pdf)

---
