---
layout: page-multi-row
title: Crazyflie platform overview
page_id: overview_crazyflie
redirects:
  - /docs/overview_crazyflie/
---
{% row_full %}

The Crazyflie family is a range of devices with similar hardware and firmware, but with differeces in size and properties. This page drills further into the hardware and firmware of the devices, as well as in how to extend and expand the devices with new hardware.

**Note:** When the documentation and code refers to "the Crazyflie", it applies to all members of the family in most cases.

![System overview](/images/documentation/overview/platform_overview.jpg)

---

{% endrow_full %}



{% row_image_text_links Hardware Components; /images/documentation/overview/components_thumbnail.jpg %}
{% row_text %}
The Crazyflie consists of many hardware components and LED's that have all their own functionalities. The two most important components of the Crazyflie are the microprocessors: the **STM32F4** handles the main Crazyflie firmware with all the low-level and high-level controls and the **NRF51822** handles all the radio communication and power management.
{% endrow_text %}
{% row_links %}
- [Crazyflie 2.X STM32F4 documentation](/documentation/repository/crazyflie-firmware/master/).
- [Crazyflie 2.X NRF51 documentation](/documentation/repository/crazyflie2-nrf-firmware/master/).

---

- {% id_link cf2_component_explanation %}
* {% id_link cf2_architecture %}
* {% id_link cf2_coordinate_system %}
{% endrow_links %}
{% endrow_image_text_links %}


{% row_image_text_links Expansion decks; /images/documentation/overview/expansiondecks_thumbnail.jpg %}
{% row_text %}
The Crazyflie can be enhanced by adding [expansion decks](https://store.bitcraze.io/collections/decks), which gives the Crazyflie extra capabilities in sensing, positioning or visualization. There is an extensive [range of decks](https://store.bitcraze.io/collections/decks) available, but the platform is also designed to make it easy to design and add custom decks, enabling the user to use sensors and other devices on the platform. The expansion bus exposes communication buses and GPIO pins to be used by decks as needed.
{% endrow_text %}
{% row_links %}
* {% id_link cf2_expansiondecks %}
* {% id_link buy-guide %}
{% endrow_links %}
{% endrow_image_text_links %}

{% row_image_text_links Family tree; /images/documentation/overview/familytree_thumbnail.jpg %}
{% row_text %}
The **{% id_link product-crazyflie-2-1 %}** was released in 2019 and is the base platform of the family. It is a small (27 grams) and durable quadcopter with an expansion port that enables the user to extend the hardware with expansion decks. The firmware is open source and the flexibility of the platform makes it ideal for research, education or other applications where openess and full control is important.

The **{% id_link product-crazyflie-bolt-1-1 %}** is a quadcopter control board that contains the same hardware components and firmware as the crazyflie, but supports connection of brushless motors of up to 8A per motor. It is intended for larger quadcopter platforms with greater lifting capacity and longer flight time, while still using the Crazyflie ecosystem. It has the same expansion bus as the other Crazyflie devices, making it compatible with the expansion decks.

The last member of the family is the **{% id_link product-roadrunner %}**, the only device that is not a quadcopter. It also shares the core hardware and firmware with the Crazyflie but has an integrated {% poplink loco-positioning-deck %} on the PCB. It can act as an stand alone positioning tag that is able to provide positioning support to any other (larger) platform than the crazyflie, for instance a ground robot.

**{% id_link product-crazyflie-2-0 %}**, the predecessor of the Crazyflie 2.1 was designed and released in 2014. It is the original member of the family and is fully compatible with the Crazyflie 2.1.
{% endrow_text %}
{% row_links %}
* {% id_link product-crazyflie-2-1 %}
* {% id_link product-crazyflie-bolt-1-1 %}
* {% id_link product-roadrunner %}
* {% id_link product-crazyflie-2-0 %}

-----

* {% id_link buy-guide %}




{% endrow_links %}
{% endrow_image_text_links %}
