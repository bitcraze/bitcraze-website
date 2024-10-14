---
layout: page-left-menu
title: Getting Started with Simulation
page_id: getting-started-with-simulation
---

{% si_intro Introduction %}

This tutorial will give you a first taste of controlling the Crazyflie in the Webots simulator by [Cyberbotics](https://cyberbotics.com/).

{% endsi_intro %}

{% si_step Prerequisites %}

All you need is the Webots simulator.

1. Make sure that your computer meets the [Webots system requirements](https://cyberbotics.com/doc/guide/system-requirements).
2. Then install the latest version of Webots on your computer by following [Cyberbotics' installation instructions](https://cyberbotics.com/doc/guide/installing-webots).

{% endsi_step %}

{% si_intro Trying out the Crazyflie Model in Webots %}

Let's dive right into it! This section explains how to open Webots, load the Crazyflie model, and fly it.

{% endsi_intro %}

{% si_step Open Webots and Find the Crazyflie Sample World %}

1. Open Webots by typing 'webots' in a terminal in Ubuntu or by searching for the Webots installation in the search bar on Windows or Mac.
2. Go to 'File' > 'Open Sample World...'.
3. In the dialog that appears, navigate to 'robots' > 'bitcraze' > 'crazyflie' > 'crazyflie.wbt'.

{% endsi_step %}

{% si_step Explore the Webots User Interface %}

The Webots window should now look like this:

{% img crazyflie world; wide; /images/tutorials/getting_started_simulation/webots_screenshot.png %}

Here's the purpose of each marked window:
1. This is the 'object' tree, where you can add robots, obstacles, etc.
2. This is the simulation window, where you can see the Crazyflie, its sensors, or camera output.
3. This is the controller editor, showing the controller used by the Crazyflie.
4. This is the simulation control panel, where you can start, stop, pause, and speed up the simulator.

For a more detailed description of the user interface, check out [Webots' 'The User Interface' user guide](https://cyberbotics.com/doc/guide/the-user-interface).

{% endsi_step %}

{% si_step Fly the Crazyflie Using Your Keyboard %}

1. In the simulation control panel (4), press play.
2. The simulated Crazyflie's propellers will start to rotate, and it will take off.
3. Click on the simulation window (2) to ensure it is selected.
4. Use the arrow keys (up, back, right, and left) to control the Crazyflie's velocity in the body-fixed x, y direction.
5. Use 'Q' and 'E' to control yaw rotation.
6. Use 'W' and 'S' to control altitude (up and down).
7. Now you can experiment and play with the Crazyflie's controls!

You can examine the C code controlling the Crazyflie in the controller editor (3). If it's not visible, find 'Crazyflie "Crazyflie"' in the object tree, click on 'controller', then click 'edit'.

> Note that you can't currently modify this code yourself, but this will be explained later.

{% youtube 4alE8THihvY; medium; 16by9 %}

{% endsi_step %}

{% si_step Try Out the Autonomy Example %}

Let's explore another example!

{% img crazyflie world; wide; /images/tutorials/getting_started_simulation/webots_screenshot_2.png %}

1. Open another Crazyflie sample world following the same steps as above, but this time select 'crazyflie_apartment.wbt'.
2. You will now see the Crazyflie in an apartment example. There are also range sensors acting like the {% poplink multi-ranger-deck%}. A virtual camera is attached, allowing you to see what the Crazyflie "sees".
3. Press play in the simulation control panel. The Crazyflie will take off.
4. Control the Crazyflie with the keyboard as before.
5. Position the Crazyflie facing a wall, then press 'A' on the keyboard. The Crazyflie will follow the wall.
6. You can disable wall following by pressing 'D' on the keyboard. The Crazyflie will respond to manual arrow keys again.

> Note that there might be an error when restarting the simulation, causing the Crazyflie to spawn in a different location. Use the simulation reload/refresh button (<i class="fa fa-refresh"></i>) to fix this.

{% youtube cpAbMiBVwsA; medium; 16by9 %}

{% endsi_step %}

{% si_intro Edit the Controller %}

In the previous examples, you couldn't modify the controller's content due to restricted access. Now, we'll show you how to save the project elsewhere, change the controller, or add an obstacle.

{% endsi_intro %}

{% si_step Save the Project in a Different Location %}

1. In the 'crazyflie_apartment.wbt' from the previous example, refresh/reload the simulation if you've already started it.
2. Access the controller editor. If it's not visible, find 'Crazyflie "Crazyflie"' in the object tree, click on 'controller', then click 'edit'.
3. Modify the following lines as suggested:

    ```python
    # OLD
    direction = WallFollowing.WallFollowingDirection.LEFT
    range_side_value = range_right_value

    # NEW
    direction = WallFollowing.WallFollowingDirection.RIGHT
    range_side_value = range_left_value
    ```

4. Click the save icon. You may receive a notice that you're not allowed to change the files. Select a folder in your working space where you have write access and click 'copy'. You'll now be allowed to make changes.
5. Play the simulation, press 'A' to start autonomy mode. You'll see the Crazyflie moving in the opposite direction.

{% endsi_step %}

{% si_intro Next Steps %}

You've now experienced the Webots simulator. You can continue modifying the controller or clone the 'crazyflie-simulation' repository:

```
git clone https://github.com/bitcraze/crazyflie-simulation
```

You can try different examples from the source:

* [Keyboard control from source](/documentation/repository/crazyflie-simulation/main/user_guides/webots_wall_following/)
* [Wall following from source](/documentation/repository/crazyflie-simulation/main/user_guides/webots_wall_following/)

Note that the latter 'wall following' example from the source should directly link to files in the [cflib examples](https://github.com/bitcraze/crazyflie-lib-python). This allows you to try out the exact same state machine on a real Crazyflie with a {% poplink flow-deck%} and {% poplink multi-ranger-deck%}.

{% endsi_intro %}

{% si_intro Further Reading %}

* Visit the [Cyberbotics Webots user guide](https://cyberbotics.com/doc/guide/) to learn more about working with Webots.
* Explore the [Crazyflie simulation repository documentation](/documentation/repository/crazyflie-simulation/main/) for more explanation about the [crazyflie-simulation repository](https://github.com/bitcraze/crazyflie-simulation) and its content.

{% endsi_intro %}
