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


|![PX4](/images/icons/px4_32.png)  |  <https://docs.px4.io/main/en/complete_vehicles/crazyflie21.html> |
|![MicroROS](/images/icons/microros.png)  |  <https://github.com/micro-ROS/micro-ROS_crazyflie_demo> |
|![ArduPilot](/images/icons/ardupilot.png) |   <https://discuss.ardupilot.org/t/crazyflie-goes-ardupilot/57401>  |
|![Paparrazi UAV](/images/icons/paparazzi.jpeg)  |  <https://wiki.paparazziuav.org/wiki/Crazyflie_2.0>         |
|![Betaflight](/images/icons/betaflight_32.png) |  <https://github.com/betaflight/betaflight> |
|![AdaCore](/images/icons/adacore_32.png) |  [Blog post](https://blog.adacore.com/how-to-prevent-drone-crashes-using-spark), <https://github.com/AdaCore/Certyflie> |

## Crazyradio firmware

Alternate firmware implementations and uses for the Crazyradio

| NRF research firmware from Bastille Research  || <https://github.com/BastilleResearch/nrf-research-firmware> |
| MouseJack device discovery and research tools || <https://github.com/BastilleResearch/nrf-research-firmware> |

## Crazyflie simulators

Projects aimed to modeling, developing and integrating the Crazyflie 2.x nano-quadcopter in simulated environments.

| CrazySim |  Crazyflie SITL simulation with Gazebo for MPC control for a decentralized swarm | <https://github.com/gtfactslab/Llanes_ICRA2024> |
| Sim_CF2 | The ROS2 upgrade of the Sim_CF project | <https://github.com/CrazyflieTHI/sim_cf2> |
| LamdaFlight | A minimal SITL for Haskell to be used for webots | <https://github.com/simondlevy/LambdaFlight> |
| Webots | Webots has a model of the Crazyflie 2.x | <https://www.cyberbotics.com/doc/guide/crazyflie> |
| CrazyS | The University of Sannio in Benevento, Italy, has implemented a software-in-the-loop simulation platform for simulating Crazyflie behavior in the Gazebo 3D simulation environment. | <https://github.com/gsilano/CrazyS> |
| gym-pybullet-drones | A [Gym environment](https://github.com/openai/gym) based on [PyBullet](https://github.com/bulletphysics/bullet3) to simulate the dynamics and learn the control of Crazyflie 2.x nano-quadcopters. | <https://github.com/JacopoPan/gym-pybullet-drones> |
| Nvidia Isaac | Crazyflie 2.x simulation in Nvidia Isaac | <https://docs.omniverse.nvidia.com/app_isaacsim/app_isaacsim/reference_assets.html#crazyflie>
| Rviz Simulator | Crazyflie 2.0 Simulation in Rviz | <https://github.com/malintha/multi_uav_simulator/tree/crazyflie> |
| Sim_cf | Crazyflie HITL and SITL simulation with Gazebo and ROS | <https://github.com/wuwushrek/sim_cf> |



## Swarming

Projects aiming at supporting swarms. They might also be useful for controlling single Crazyflies.

| ![ROS](/images/icons/ros2_tm.png)  | The IMRClab at TU Berlin has implemented a ROS 2 package to handle large swarms of Crazyflies. This is the successor of Crazyswarm(1) | <https://imrclab.github.io/crazyswarm2/> |
| ![ROS](/images/icons/ros_64.png)  | The ACT lab at USC has implemented a ROS 1 library to handle large swarms of Crazyflies. | <https://crazyswarm.readthedocs.io/en/latest/> |
| ![ROS](/images/icons/ros_64.png) |A Crazyflie control packages (deprecated, use Crazyswarm instead)| <https://github.com/whoenig/crazyflie_ros> |
| Crazyserver | A server exposing a REST API to control a swarm of Crazyflies. Written in Go. | <https://github.com/mikehamer/crazyserver> |
| LaMoucheFolle | Cross-platform OSC server for controlling multiple Crazyflies 2.x | <https://github.com/benkuper/LaMoucheFolle> |

## Connectivity libraries

Libraries for connecting to the Crazyflie written in various languages. They are
usually implementing functionality similar to the Bitcraze python library.

| ![Python](/images/icons/python32.png)                        | aiocflib with async friendly API         | <https://github.com/skybrush-io/aiocflib>   |
| ![Python](/images/icons/c_plus_plus_32.png)                        | C++ library used in Crazyswarm 1 and 2         | <https://github.com/whoenig/crazyflie_cpp> |
| ![Java](/images/icons/java_32.png)                        |                                         | <https://github.com/fredg02/se.bitcraze.crazyflie.lib>   |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![node.js](/images/icons/node_32.png)   | <https://github.com/michaelgira23/swarms>                |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![node.js](/images/icons/node_32.png)   | <https://github.com/ceejbot/aerogel>                     |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![node.js](/images/icons/node_32.png)   | <https://github.com/brianneisler/crazyflie>              |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![cylon.js](/images/icons/cylon_32.png) | <https://github.com/hybridgroup/cylon-crazyflie>         |
| ![JavaScript](/images/icons/javascript_32.png) JavaScript | ![cylon.js](/images/icons/cylon_32.png) | <https://cylonjs.com/documentation/platforms/crazyflie/> |
| ![C#](/images/icons/c_sharp_32.png)                       |                                         | <https://github.com/ckarcz/CrazyflieDotNet>              |
| ![Ruby](/images/icons/ruby_32.png) Ruby                   |                                         | <https://github.com/hsanjuan/crubyflie>                  |
| ![Ruby](/images/icons/ruby_32.png) Ruby                   |                                         | <https://github.com/hybridgroup/artoo-crazyflie>         |
| ![Ruby](/images/icons/ruby_32.png) Ruby                   |                                         | <https://www.rubydoc.info/gems/hybridgroup-crubyflie>     |
| ![C++](/images/icons/c_plus_plus_32.png)                  |                                         | <https://github.com/fairlight1337/libcflie>              |
| ![Haskel](/images/icons/haskell.png) Haskel               |                                         | <https://github.com/orclev/crazyflie-haskell>            |
| ![Scala](/images/icons/scala_32.png)                      |                                         | <https://github.com/triplepoint/ScalaCrazyflie>          |

<div class="col-md-12">
  <p class="text-right">Want to add a project? <a href="https://github.com/bitcraze/bitcraze-website/edit/master/src/{{page.path}}"><i class="fa-solid fa-pencil"></i> &nbsp;Improve this page</a></p>
</div>
