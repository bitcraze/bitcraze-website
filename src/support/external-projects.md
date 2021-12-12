---
layout: page
title: External projects
page_id: external-projects
redirects:
  - /external-projects/
---

# External projects

There are a few external projects that are based on Bitcraze hardware and/or software.
We usually do not provide support for these projects but we have collected a few
links to help any one that is interested.

### Disclamer
These projects may or may not be actively maintained. We do not take any
responsibility for the functionality or compatibility in any way.

## Crazyflie firmware

Alternate firmware implementations for the Crazyflie

|![AdaCore](/images/icons/adacore_32.png) | | [Blog post](http://blog.adacore.com/how-to-prevent-drone-crashes-using-spark), <https://github.com/AdaCore/Certyflie> |
|![PX4](/images/icons/px4_32.png)               |                                                        | <https://dev.px4.io/en/flight_controller/crazyflie2.html>                                                             |
|![Betaflight](/images/icons/betaflight_32.png) |         | <https://github.com/betaflight/betaflight>         |
|![ArduPilot](/images/icons/ardupilot.png) |         | <https://discuss.ardupilot.org/t/crazyflie-goes-ardupilot/57401>         |
|![Paparrazi UAV](/images/icons/paparazzi.jpeg)  |         | <https://wiki.paparazziuav.org/wiki/Crazyflie_2.0>         |
|![MicroROS](/images/icons/microros.png)  |         | <https://github.com/micro-ROS/micro-ROS_crazyflie_demo>         |

## Crazyradio firmware

Alternate firmware implementations and uses for the Crazyradio

| NRF research firmware from Bastille Research  || <https://github.com/BastilleResearch/nrf-research-firmware> |
| MouseJack device discovery and research tools || <https://github.com/BastilleResearch/nrf-research-firmware> |

## Crazyflie simulators

Projects aimed to modeling, developing and integrating the Crazyflie 2.X nano-quadcopter in simulated environments.

| CrazyS | The University of Sannio in Benevento, Italy, has implemented a software-in-the-loop simulation platform for simulating Crazyflie behavior in the Gazebo 3D simulation environment. | <https://github.com/gsilano/CrazyS> |
| gym-pybullet-drones | A [Gym environment](https://github.com/openai/gym) based on [PyBullet](https://github.com/bulletphysics/bullet3) to simulate the dynamics and learn the control of Crazyflie 2.x nano-quadcopters. | <https://github.com/JacopoPan/gym-pybullet-drones> |
| Sim_cf | Crazyflie HITL and SITL simulation with Gazebo and Ros | <https://github.com/wuwushrek/sim_cf> |
| Rviz Simulator | Crazyflie 2.0 Simulation in Rviz | <https://github.com/malintha/multi_uav_simulator/tree/crazyflie> |

## Swarming

Projects aiming at supporting swarms. They might also be useful for controlling single Crazyflies.

| Crazyswarm ![ROS](/images/icons/ros_32.png)  | The ACT lab at USC has implemented a library to handle large swarms of Crazyflies. | <https://crazyswarm.readthedocs.io/en/latest/> |
| ![ROS](/images/icons/ros_32.png) |A Crazyflie control packages (deprecated, use Crazyswarm instead)| <https://github.com/whoenig/crazyflie_ros> |
| Crazyserver | A server exposing a REST API to control a swarm of Crazyflies. Written in Go. | <https://github.com/mikehamer/crazyserver> |
| LaMoucheFolle | Cross-platform OSC server for controlling multiple Crazyflies 2.X | <https://github.com/benkuper/LaMoucheFolle> |

## Connectivity libraries

Libraries for connecting to the Crazyflie written in various languages. They are
usually implementing functionality similar to the Bitcraze python library.

| ![Java](/images/icons/java_32.png)                        |                                         | <https://github.com/fredg02/se.bitcraze.crazyflie.lib>   |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![node.js](/images/icons/node_32.png)   | <https://github.com/michaelgira23/swarms>                |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![node.js](/images/icons/node_32.png)   | <https://github.com/ceejbot/aerogel>                     |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![node.js](/images/icons/node_32.png)   | <https://github.com/brianneisler/crazyflie>              |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![cylon.js](/images/icons/cylon_32.png) | <https://github.com/hybridgroup/cylon-crazyflie>         |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![cylon.js](/images/icons/cylon_32.png) | <https://cylonjs.com/documentation/platforms/crazyflie/> |
| ![C#](/images/icons/c_sharp_32.png)                       |                                         | <https://github.com/ckarcz/CrazyflieDotNet>              |
| ![Ruby](/images/icons/ruby_32.png) Ruby                   |                                         | <https://github.com/hsanjuan/crubyflie>                  |
| ![Ruby](/images/icons/ruby_32.png) Ruby                   |                                         | <https://github.com/hybridgroup/artoo-crazyflie>         |
| ![Ruby](/images/icons/ruby_32.png) Ruby                   |                                         | <http://www.rubydoc.info/gems/hybridgroup-crubyflie>     |
| ![C++](/images/icons/c_plus_plus_32.png)                  |                                         | <https://github.com/fairlight1337/libcflie>              |
| ![Haskel](/images/icons/haskell.png) Haskel               |                                         | <https://github.com/orclev/crazyflie-haskell>            |
| ![Scala](/images/icons/scala_32.png)                      |                                         | <https://github.com/triplepoint/ScalaCrazyflie>          |

<div class="col-md-12">
  <p class="text-right">Want to add a project? <a href="https://github.com/bitcraze/bitcraze-website/edit/master/src/{{page.path}}"><i class="fa fa-pencil"></i> &nbsp;Improve this page</a></p>
</div>
