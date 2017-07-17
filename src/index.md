---
layout: page-front
title: Home
permalink: /
page_id: home
---

<div class="container-fluid front-top-banner">
    <div class="row content-area">
        <div class="col-md-9 header_text">
              <h1>Make your ideas fly!</h1>
                <h3>A flying open development platform</h3>
        </div>
        <div class="col-md-3 semi-transparent fp-blog">
            <h1>From the blog</h1>
                <!-- inject wp blog -->
        </div>
    </div>
</div>


{% comment %}
{% announcement Header goes here; /images/frontpage/someImage.jpg %}
Some information here
{% endannouncement %}
{% endcomment %}

<div class="container-fluid">
    <div class="row content-area">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <img src="/images/frontpage/front-page-portal-pic-5.jpg" class="img-responsive" alt="front"/>
        </div>
        <div class="col-sm-2"></div>
    </div>
</div>


{% include index-portal-left.html portalheader="DIY" portalimg="/images/frontpage/front-page-portal-pic-4.jpg"
portaltext="Love to fly? Like to tinker with toys? Want to modify and explore? Hate limitations and closed
systems? The Crazyflie is for you!

Add decks for light and sound effects, or why not build your own deck? Create a
skin to make it look like your favourite flying creature or add a camera and
do First Person View (FPV) flying. Use the Crazyflie on a bigger quadcopter frame and build
the optimal drone, tailored to your needs."

portalexample="Example applications: flying for fun, FPV racing, flying art, application skinning and exploring quadcopters"

portallink="/diy/"
%}

{% include index-portal-right.html portalheader="Used in research" portalimg="/images/frontpage/front-page-portal-pic-2.jpg" portaltext="
The Crazyflie is ideal for many areas of research. The source code and hardware
is open, making it possible to tap into any
part of the system for complete control and full flexibility. New hardware or sensors can be added
through the versatile expansion ports, enabling the addition of the latest sensors.
The small size and light weight reduces the need for safety equipment and increases
productivity."

portalexample="
Example applications: autonomous flight, path finding, sensor fusion, swarms and
environment scanning"

portallink="/research/"
%}

{% include index-portal-left.html portalheader="Used in education" portalimg="/images/frontpage/front-page-portal-pic-3.jpg" portaltext="
The popularity of quadcopters makes the Crazyflie a perfect tool for higher education.
The source code is open making it easy to investigate or modify any part of the system,
giving the students a direct connection from theory to the real world."

portalexample="Example areas: realtime systems, automatic control and signal processing"

portallink="/education/"
%}

{% include index-portal-right.html portalheader="Used in development" portalimg="/images/frontpage/front-page-portal-pic-1.jpg" portaltext="
Prototype your flying application in the comfort of your lab and usual development
environment on a small and handy Crazyflie. Add sensors and other hardware as needed
through the expansion ports. When everything is tested and working as expected,
move to a larger platform and go outdoors.
Try out if your favourite programming language is doing well for drones
or investigate how to use sensor data to understand the real world."

portalexample="Examples: remote control, sensor integration, autonomous flight"
portallink="/development/"
%}

{% include index-portal-left.html portalheader="Used by the industry" portalimg="/images/frontpage/Industry-portal-400px.JPG" portaltext="
The posibility to add expansion decks in combination with the open source
firmware/software makes the Crazyflie the perfect platform for sensor manufacturers
to demonstrate the performance of sensors as well as a base for evaluation or reference boards.
"
portalexample="Examples areas: demonstrator and evaluation boards for sensors"
portallink="/industry/"
%}



<div class="container-fluid used-by-section">
    <div class="row content-area">
        <div class="col-md-12">
            <h2>Used by</h2>
        </div>

        {% used_by_logo NASA; /images/logos/NASA_logo.png; https://www.nasa.gov/ %}
        {% used_by_text Stanford; https://www.stanford.edu/ %}
        {% used_by_logo Microsoft; /images/logos/microsoft.png; https://www.microsoft.com/ %}
        {% used_by_logo Chalmers University of Technology; /images/logos/chalmers.png; http://www.chalmers.se/en/ %}
        {% used_by_logo LTH; /images/logos/lund.png; https://www.lth.se/english %}
        {% used_by_text IBM; http://www.ibm.com/ %}
        {% used_by_logo University of Bologna; /images/logos/Seal_of_the_University_of_Bologna.png; http://www.unibo.it/en/homepage %}
        {% used_by_logo USC; /images/logos/usc.png; http://www.usc.edu/ %}
        {% used_by_logo MIT; /images/logos/mit.svg; http://web.mit.edu/ %}
        {% used_by_text Bell Labs; http://www.bell-labs.com/ %}
        {% used_by_logo AdaCore; /images/logos/adacore.png; http://www.adacore.com/ %}
        {% used_by_logo ETH Zurich; /images/logos/Eth-zurich_logo_1.png; https://www.ethz.ch/en.html %}
        {% used_by_logo Ericsson; /images/logos/ericsson_logo.png; https://www.ericsson.com/ %}
        {% used_by_logo University of Illinois at Urbana-Champaign; images/logos/Illinois.gif; http://illinois.edu/ %}
        {% used_by_logo Polytechnique Montreal; images/logos/polymtl.png; http://www.polymtl.ca/en %}
        {% used_by_logo McGill University; images/logos/mcgill.svg; https://www.mcgill.ca/ %}
        {% used_by_logo Bosch Sensortec; images/logos/bosch.png; https://www.bosch-sensortec.com/ %}
        {% used_by_logo Invensense; images/logos/invensense.png; https://www.invensense.com/ %}
        {% used_by_logo PixArt; images/logos/pixart.png; http://www.pixart.com/ %}
        {% used_by_logo Carnegie Mellon University; /images/logos/CMU.png; /2017/06/towards-persistent-adaptive-multi-robot-systems/ %}
        {% used_by_logo DLR; /images/logos/DLR_Logo.png; https://www.youtube.com/watch?v=LXng1v8lwbk%}

      </div>
      <div class="row content-area">
        <div class="col-md-12"><p class="text-right">Is your organization missing? <a href="https://github.com/bitcraze/bitcraze-website/edit/master/src/{{page.path}}"><i class="fa fa-pencil"></i> &nbsp;Improve this page</a></p>
          </div>
      </div>
</div>
