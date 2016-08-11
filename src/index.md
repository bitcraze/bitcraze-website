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


<div class="container-fluid">
    <div class="row content-area">
        <div class="col-sm-2"></div>
        <div class="col-sm-8">
            <img src="/images/frontpage/front-page-portal-pic-5.jpg" class="img-responsive" alt="front"/>
        </div>
        <div class="col-sm-2"></div>
    </div>
</div>


{% include index-portal-left.html portalheader="Used in research" portalimg="/images/frontpage/front-page-portal-pic-2.jpg" portaltext="
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

{% include index-portal-right.html portalheader="Used in education" portalimg="/images/frontpage/front-page-portal-pic-3.jpg" portaltext="
The popularity of quadcopters makes the Crazyflie a perfect tool for higher education.
The source code is open making it easy to investigate or modify any part of the system,
giving the students a direct connection from theory to the real world."

portalexample="Examples areas: realtime systems, automatic control and signal processing"

portallink="/education/"

%}

{% include index-portal-left.html portalheader="Used in development" portalimg="/images/frontpage/front-page-portal-pic-1.jpg" portaltext="
Prototype your flying application in the comfort of your lab and usual development
environment on a small and handy Crazyflie. Add sensors and other hardware as needed
through the expansion ports. When everything is tested and working as expected,
move to a larger platform and go outdoors.
Try out if your favourite programming language is doing well for drones
or investigate how to use sensor data to understand the real world."

portalexample="Examples: remote control, sensor integration, autonomous flight"
portallink="/development/"
%}

{% include index-portal-right.html portalheader="DIY" portalimg="/images/frontpage/front-page-portal-pic-4.jpg" 
portaltext="Love to fly? Like to tinker with toys? Want to modify and explore? Hate limitations and closed
systems? The Crazyflie is for you!

Add decks for light and sound effects, or why not build your own deck? Create a
skin to make it look like your favourite flying creature or add a camera and
do First Person View (FPV) flying. Use the Crazyflie on a bigger quadcopter frame and build
the optimal drone, tailored to your needs."

portalexample="Example applications: flying for fun, FPV racing, flying art, application skinning and exploring quadcopters"

portallink="/diy/"
%}


<div class="container-fluid used-by-section">
    <div class="row content-area">
        <div class="col-md-12">
            <h2>Used by</h2>

            {% used_by NASA; /images/logos/nasa.png; narrow %}
            {% used_by Stanford %}
            {% used_by Microsoft; /images/logos/microsoft.jpg; medium %}
            {% used_by Chalmers; /images/logos/chalmers.png; medium %}
            {% used_by LTH; /images/logos/lth.png; narrow  %}
            {% used_by IBM %}
            {% used_by University of Bologna %}
            {% used_by USC; /images/logos/usc.png; medium %}
            {% used_by MIT; /images/logos/mit.svg; narrow %}
            {% used_by Bell Labs %}
            {% used_by Adacore; /images/logos/adacore.png; medium %}
            {% used_by ETH Zurich %}
            {% used_by Ericsson %}
            {% used_by UIUC; images/logos/uiuc.jpg; medium %}
            {% used_by Polytechnique Montreal; images/logos/polymtl.png; medium %}
            {% used_by McGill University; images/logos/mcgill.jpg; medium %}

            <p class="text-right">Is your organization missing? <a href="https://github.com/bitcraze/bitcraze-website/edit/master/src/{{page.path}}"><i class="fa fa-pencil"></i> &nbsp;Improve this page</a></p>
        </div>
    </div>
</div>
