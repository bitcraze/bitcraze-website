---
layout: page-left-menu
title: PID tuning
page_id: pid-tuning-guide
redirects:
  - /pid-tuning/
---
{% si_intro PID controller tuning %}
<span style="color:red">**WARNING: When tuning the PID controller of a quadcopter, always take safety precautions. Secure the quadcopter in a safe environment to prevent accidents, as improper tuning can cause instability and unpredictable behavior. Use a tether or safety net, and wear protective gear to minimize risks. Make sure you have configured the emergency stop to a button on your controller.**</span>

Tuning a PID controller for a quadcopter is necessary for ensuring stable, responsive and precise flight control. For a custom-built quadcopter, for example using the [Crazyflie Bolt](/products/crazyflie-bolt-1-1/), tuning becomes essential to adjust and optimize the drone's performance according to the specific components and configurations used.

This tutorial provides fundamental PID tuning information aimed at beginners, covering essential concepts and step-by-step instructions. Additionally, it demonstrates specific tuning operations within our ecosystem, offering practical guidance that can also benefit advanced users.
{% endsi_intro %}

{% si_step  Prerequisites %}
* Hardware
  * {% id_link product-crazyflie-2-1 %}, {% id_link product-crazyflie-2-0 %}, or a custom-built quadcopter using the {% id_link product-crazyflie-bolt-1-1 %}
  * {% id_link product-crazyradio-2-0 %} or {% id_link product-crazyradio-pa %}
  * Optional: For tuning the velocity and position controllers, you need a positioning system such as the [Lighthouse positioning system](/documentation/system/positioning/ligthouse-positioning-system/) or the {% id_link product-flow-deck-v2 %}.
  * Recommended: a controller (e.g., PS3, Xbox, or a custom controller)

* Software
  * Latest release of the [cfclient](/documentation/repository/crazyflie-clients-python/master/)

Make sure that you have gone through the [how to get flying with a controller userguide](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/#how-to-get-flying-with-a-controller) before continuing with this tutorial.

{% endsi_step %}

{% si_step Basic concept %}
The PID controller controls a process with three parameters; *Proportional (P)*, *Integral (I)*, and *Derivative (D)*. It manages the process based on the error, which is the difference between a desired setpoint and the actual process value.

1. Proportional (P): This term produces an output that is proportional to the current error value. If the error is large, the control output is large, and if the error is small, the control output is small. It's calculated as $$P=K_p \cdot e(t)$$, where $$K_p$$​ is the proportional gain and $$e(t)$$ is the error at time $$t$$.

2. Integral (I): This term is concerned with the accumulation of past errors. It integrates the error over time, which helps eliminate residual steady-state error. It's calculated as $$I=K_i \int_0^t e(\tau)d\tau$$, where $$K_i​$$ is the integral gain.

3. Derivative (D): This term predicts future error based on its rate of change. It provides a damping effect, reducing the tendency to overshoot. It's calculated as $$D=K_d\frac{de(t)}{dt}$$​, where $$K_d​$$ is the derivative gain.

The combined output of a PID controller is the sum of these three terms:
$$u(t)=P + I + D​$$

This output $$u(t)$$ is used to adjust the process to achieve the desired setpoint.

---

The gains $$K_p$$ (Proportional Gain), $$K_i$$ (Integral Gain), and $$K_d$$ (Derivative Gain) are used to tune a PID controller:

1. $$K_p$$: Adjusts the responsiveness to the current error. Higher $$K_p$$​ increases response speed but can cause overshoot.
2. $$K_i$$: Adjusts the response based on the accumulation of past errors. Higher $$K_i$$ eliminates steady-state error but can cause instability.
3. $$K_d$$: Adjusts the response based on the rate of error change. Higher $$K_d$$ provides damping, reducing overshoot and oscillations.

Tuning involves balancing these gains to achieve stable and accurate control.

Our firmware uses a [cascaded PID controller](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/controllers/#cascaded-pid-controller) structure, with separate controllers for attitude rate, attitude, velocity, and position. 
{% endsi_step %}

{% si_step Setup %}
In this tutorial, we use [cfclient](/documentation/repository/crazyflie-clients-python/master/) to tune the PID controllers because it provides a comprehensive environment that allows us to simultaneously adjust PID gains, plot setpoints and state estimates, and control the drone with a controller or position setpoints.

To effectively tune each controller in the cascaded PID system, you must provide setpoints of the same order or higher than the respective controller's level. For instance, position setpoints are necessary for tuning the position controller, while attitude, velocity or position setpoints suffice for the attitude controller. Attitude rate, attitude and velocity controllers are best made by conducting manual flight tests with a controller, as it allows for testing a variety of maneuvers. In this tutorial, we assume users will use a controller for manual flight tests. Setpoints can also be written and adjusted using other methods like through [cflib](/documentation/repository/crazyflie-lib-python/master/) or the [app layer](/documentation/repository/crazyflie-firmware/master/userguides/app_layer/). However, using cflib to connect to the drone will prevent cfclient from connecting, so you cannot plot data or adjust gains directly from cfclient. Using the app layer can be cumbersome since it requires firmware flashing each time setpoints need adjustment, making the process more time-consuming.

> Depending on what [controller mode](/documentation/repository/crazyflie-firmware/master/functional-areas/sensor-to-control/commanders_setpoints/#setpoint-structure) you will use to control your Crazyflie, it may be unnecessary to tune the higher level controllers.

1. Open up cfclient
2. Connect and [configure your controller](/documentation/repository/crazyflie-clients-python/master/userguides/userguide_client/#input-devices)
3. Connect to your Crazyflie
4. Enable the plotter tab
5. Enable the tuning toolbox
{% endsi_step %}

{% si_step Basic PID Tuning %}
Set up the plotter to monitor both your desired setpoint and the estimated value of the controlled state. Adjust the gains in the tuning toolbox accordingly, observe the response in the plotter to fine-tune until the graphs of your desired setpoint and the estimated state align as closely as possible. <span style="color:red">**WARNING: Do not change PID values while the drone is flying. Always land the drone before making adjustments.** </span>

Begin by tuning the attitude rate controller, then proceed to the attitude controller. These adjustments are best made after manual flight with a controller, as this allows you to fine-tune the PID controllers according to your specific flight preferences. Whether you prefer subtle inputs for a smooth flight, or you aim for a highly agile and responsive drone, manual flight testing enables you to tailor the tuning for the desired flight characteristics.

<figure>
  <img src="/images/tutorials/pid_tuning_guide/plot_roll_tuning.png" alt="my alt text"/>
  <figcaption><i>Interface with tuning toolbox and plotter displaying the roll angle setpoint and the roll angle state estimate.</i></figcaption>
</figure>

For tuning the velocity and position controllers some form of positioning system is required. The easiest method of tuning the velocity controller is to enable hover or position hold assisted control in the Flight Control tab. In these modes, velocity setpoints are automatically adjusted based on your controller inputs. Note that you must configure and hold a button on your controller to activate the assisted mode. For tuning the position controller we must send position setpoints. The most effective method for tuning this controller is by using the Command Based Flight Control in the Flight Control tab of the client. 

> Tips:
> - Increase the number of samples or increase the logging period in the relevant logging configurations to extend the time window of the plot.
> - Untick "Auto update graph" to pause the plotter and analyze the data.
> - Tick "Link roll and pitch" to adjust the gains for both axes simultaneously. Roll and pitch can typically be tuned simultaneously due to symmetrical design of the Crazyflie.

{% endsi_step %}
