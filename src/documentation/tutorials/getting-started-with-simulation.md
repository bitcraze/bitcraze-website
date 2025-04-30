---
layout: page-left-menu
title: Getting Started with Simulation
page_id: getting-started-with-simulation
---

{% si_intro Introduction %}

This short guide shows how to run a very simple Crazyflie simulation using [Webots](https://cyberbotics.com/). It’s not realistic, feature-rich, or actively maintained, but it might be fun to play around with or help spark ideas.

If you're looking for more serious simulators, check out our [overview of simulation options](/development/external-projects/#crazyflie-simulators).

{% endsi_intro %}

{% si_step Prerequisites %}

All you need is the Webots simulator.

1. Make sure your computer meets the [Webots system requirements](https://cyberbotics.com/doc/guide/system-requirements).
2. Install the latest version by following [Cyberbotics' instructions](https://cyberbotics.com/doc/guide/installing-webots).

{% endsi_step %}

{% si_intro Try Out the Crazyflie Example %}

Let’s get something running. Here’s how to open Webots, load the Crazyflie model, and test the keyboard controls.

{% endsi_intro %}

{% si_step Open Webots and Load the Sample World %}

1. Launch Webots (`webots` in terminal or search for it on your system).
2. Go to 'File' > 'Open Sample World...'.
3. Navigate to: `robots > bitcraze > crazyflie > crazyflie.wbt`.

{% endsi_step %}

{% si_step A Quick Tour of Webots %}

You should now see a simulation window with a Crazyflie model.

{% img crazyflie world; wide; /images/tutorials/getting_started_simulation/webots_screenshot.png %}

Here’s what’s what:
1. Object tree — add robots and objects.
2. Simulation window — visual output.
3. Controller editor — view the controller code.
4. Control panel — start, stop, or adjust the sim speed.

More detail is available in [Webots' user interface guide](https://cyberbotics.com/doc/guide/the-user-interface).

{% endsi_step %}

{% si_step Try the Keyboard Controls %}

1. Press "play" in the control panel.
2. The Crazyflie should take off.
3. Click the simulation window to focus it.
4. Arrow keys: move in x/y.
5. Q/E: yaw.
6. W/S: altitude.

You can view the controller code in the editor. If it’s not visible, go to the object tree, find `Crazyflie "Crazyflie"`, click `controller`, then `edit`.

> At this stage, editing the code directly isn’t supported in-place. We’ll show how to do that next.

{% youtube 4alE8THihvY; medium; 16by9 %}

{% endsi_step %}

{% si_step Test a Basic Autonomy Example %}

There’s a second example that does some crude wall following.

{% img crazyflie world; wide; /images/tutorials/getting_started_simulation/webots_screenshot_2.png %}

1. Open `crazyflie_apartment.wbt`.
2. You’ll see a small indoor environment, range sensors acting like the {% poplink multi-ranger-deck%}, and a virtual camera.
3. Press play. The Crazyflie takes off.
4. Control the Crazyflie with the keyboard as before.
5. Press `A` to start wall following. Press `D` to stop it.

> If things break after restarting, try the simulation reload button (<i class="fa-solid fa-arrows-rotate"></i>).

{% youtube cpAbMiBVwsA; medium; 16by9 %}

{% endsi_step %}

{% si_intro Editing the Controller %}

If you want to tinker with the code, you’ll need to save the project to a writable location.

{% endsi_intro %}

{% si_step Save the Project Elsewhere %}

1. Reload the `crazyflie_apartment.wbt` world if needed.
2. Open the controller editor via the object tree.
3. Try changing:

    ```python
    # OLD
    direction = WallFollowing.WallFollowingDirection.LEFT
    range_side_value = range_right_value

    # NEW
    direction = WallFollowing.WallFollowingDirection.RIGHT
    range_side_value = range_left_value
    ```

4. When prompted, copy the world to a folder where you have write access.
5. Save your changes and press play. After pressing `A`, the Crazyflie should follow the wall in the opposite direction.

{% endsi_step %}

{% si_intro Next Steps %}

This setup is limited, but it may be a good starting point. If you want to dig into the code:

```
git clone https://github.com/bitcraze/crazyflie-simulation
```


You can find the example scenes and controller code in there. It's also worth looking at more mature projects — see our [simulation overview](/development/external-projects/#crazyflie-simulators) for recommendations.

{% endsi_intro %}

{% si_intro Further Reading %}

* [Webots user guide](https://cyberbotics.com/doc/guide/)
* [crazyflie-simulation repo](https://github.com/bitcraze/crazyflie-simulation)
* [Simulation overview](/development/external-projects/#crazyflie-simulators)

{% endsi_intro %}
