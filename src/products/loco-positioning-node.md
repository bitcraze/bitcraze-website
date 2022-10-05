---
layout: page-product
title: Loco Positioning node
page_id: product-loco-pos-node
redirects:
  - /loco-pos-node/
---

{% datasheet_product_status loco_node  %}


{% buy_online https://store.bitcraze.io/collections/positioning/products/loco-positioning-node %}

{% product_img Loco Positioning node; narrow;
/images/loco-pos-node/locoPositioning_node_585px_side.JPG
%}

{% product_highlight
fa-anchor;
The reference;
The base of a Loco Positioning system
%}

{% tabgroup %}
{% tab How it Works %}
{% row_icon_text_links How it works; fa-cogs %}
{% row_text %}

The Loco Positioning Node is a versatile positioning device that mainly is used
as an Anchor in a Loco Positioning system. The system measures
the distance between Nodes and Tags, and from those distances the
absolute position of objects carrying Tags can be calculated.

This product is intended to be used together with
{% poplink loco-positioning-deck %}.


{% endrow_text %}
{% row_links %}
{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Specifications %}
{% row_icon_text_links Specifications; fa-list %}
{% row_text %}
{% datasheet_section loco_node; Features %}
{% datasheet_section loco_node; Mechanical specifications %}
{% datasheet_section loco_node; Mechanical drawing %}
{% datasheet_section loco_node; Electrical specification %}
{% datasheet_section loco_node; Radio specification %}
{% datasheet_section loco_node; Ranging specification %}


{% endrow_text %}
{% row_links %}

- [Datasheet](/documentation/hardware/loco_node/loco_node-datasheet.pdf)
- [Schematics (rev. D)](/documentation/hardware/loco_node/loco_node_revd.pdf)
- [Schematics (rev. E)](/documentation/hardware/loco_node/loco_node_reve.pdf)

{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Usage %}
{% row_icon_text_links Usage; fa-book %}
{% row_text %}

Go to the [Loco positioning system tutorial]({% id_url getting-started-with-the-loco-positioning-system  %}) to set-up the loco positioning nodes with the {% poplink loco-positioning-deck %}. Also for more general information over how the loco positioning system fits in our eco system, go to {% id_link overview_positioning %}.

{% endrow_text %}
{% row_links %}

* {% id_link overview_positioning %}


#### Tutorials
* {% id_link getting-started-with-the-loco-positioning-system %}


{% endrow_links %}
{% endrow_icon_text_links %}
{% endtab %}
{% tab Development %}
{% row_icon_text_links Development;  fa-laptop %}
{% row_text %}

Please check out the [Loco positioning node firmware](https://github.com/bitcraze/lps-node-firmware) for implementation details, with its accomendating [documentation](/documentation/repository/lps-node-firmware/master/).



{% endrow_text %}
{% row_links %}

- [Firmware documentation](/documentation/repository/lps-node-firmware/master/)
- [Dataset](/documentation/system/positioning/positioning-datasets/)

#### Investigations
* {% id_link accuracy-loco %}
* {% id_link max-range-loco %}

{% endrow_links %}


{% endrow_icon_text_links %}
{% endtab %}
{% endtabgroup %}


---

#### Resources

- {% id_link loco-pos-system-overview %}
- {% id_link getting-started-start %}
- {% id_link buy-guide %}
- {% id_link support-frequently-asked-questions %}
- {% id_link support-getting-help %}
- [Datasheet](/documentation/hardware/loco_node/loco_node-datasheet.pdf)
- [Schematics (rev. D)](/documentation/hardware/loco_node/loco_node_revd.pdf)
- [Schematics (rev. E)](/documentation/hardware/loco_node/loco_node_reve.pdf)
- [Store](https://store.bitcraze.io/collections/positioning/products/loco-positioning-node)

---

#### Tutorials

* {% id_link getting-started-with-the-loco-positioning-system %}
