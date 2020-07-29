---
layout: page
title: The Coordinate System of the Crazyflie 2.X
page_id: cf2_coordinate_system
---

This page shows the coordinate system of the **[Crazyflie 2.X](https://store.bitcraze.io/products/crazyflie-2-1)** , but this also holds for the [Crazyflie Bolt](https://store.bitcraze.io/products/crazyflie-bolt) and the [Roadrunner](https://store.bitcraze.io/products/roadrunner). This is specifically for the state estimate variables.  The global coordinate system (X, Y, Z) is in the EAST NORTH UP (ENU) convention, as is the body fixed (local) coordinate system (x, y, z). The attitude angles roll, pitch and yaw (φ, θ, ψ) are in the following rotation rules
* __roll__ and __yaw__ are clockwise rotating around the axis looking from the origin (right-hand-thumb)
* __pitch__ are counter-clockwise rotating around the axis looking from the origin (left-hand-thumb)


![Coordinate system CF2.x](/images/documentation/overview/coordinate_system.jpg){:width="800px"}
