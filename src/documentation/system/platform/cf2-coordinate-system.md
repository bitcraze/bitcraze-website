---
layout: page
title: The Coordinate System of the Crazyflie 2.x
page_id: cf2_coordinate_system
---

This page shows the coordinate system used in the **[Crazyflie<sup>®</sup> 2.x family]({% id_url overview_crazyflie %})**. 

The **global coordinate system (X, Y, Z)** is a fixed, right-handed frame. Its origin and orientation are established at initialization. How they are established depends on the setup:

* **With external positioning** (e.g. Lighthouse, mocap, UWB): the frame is
  defined by the positioning system's calibration - including which way each axis points. Recalibrating the positioning system redefines the frame.
* **Without external positioning** (dead reckoning from optical flow / IMU):
    the drone's initial position sets the origin and its heading sets the
    direction of global X. Roll and pitch are **not** inherited. Global Z is aligned with gravity (Z-up). Starting on a slope does not tilt the global frame.

The **body coordinate system (x, y, z)** is right-handed with x-forward, y-left, z-up.

The orientation of the body frame relative to the global frame is described by **roll, pitch, and yaw (φ, θ, ψ)**. Each is a rotation about one body axis:

* **roll** (φ) is a rotation about the x-axis
* **pitch** (θ) is a rotation about the y-axis
* **yaw** (ψ) is a rotation about the z-axis

Applied in the ZYX order: yaw first, then pitch, then roll. The angles are not independent - the same three values applied in a different order describe a different orientation.

Viewed from the origin looking outward along the positive axis:

 - **roll (φ)** is positive clockwise - a positive roll drops the drone's right side.
 - **pitch (θ)** is positive counter-clockwise - a positive pitch raises the drone's nose.
 - **yaw (ψ)** is positive clockwise - a positive yaw turns the drone's nose to the left.

_Note: pitch runs counter-clockwise only in the reported Euler angles - the estimator's quaternion treats it clockwise, like roll and yaw, so the pitch it encodes has the opposite sign to attitude.pitch; negate the pitch when converting between the two, in either direction._


![Coordinate system CF2.x](/images/documentation/overview/coordinate_system.jpg){:width="800px"}
