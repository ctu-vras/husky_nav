# RobinGas Mission Gazebo

![](./docs/demo.png)

RobinGas pipeline in Gazebo simulator, currently including:

- Husky robot gazebo model with sensors (including [Ouster LiDAR Gazebo Plugin with GPU ray](https://engcang.github.io/Ouster-Gazebo-Plugin-boosting-up-with-GPU-ray)),
- [Fused localization](https://gitlab.fel.cvut.cz/cras/subt/common/cras_gps_odom),
- [Traversability estimation](https://github.com/ctu-vras/traversability_estimation),
- [Path planner](https://github.com/ctu-vras/gps-navigation/tree/master/gps_to_path),
- [Path follower](https://github.com/ctu-vras/naex/blob/master/launch/follower.launch),
- Obstacle avoidance ([virtual bumper](https://gitlab.fel.cvut.cz/cras/subt/common/augmented_robot_trackers)).

## Installation

```bash
sudo apt-get install ros-<distro>-navigation
```

Install husky simulation, [reference](http://wiki.ros.org/husky_navigation/Tutorials):
```bash
sudo apt-get install ros-<distro>-husky-*
echo "export HUSKY_GAZEBO_DESCRIPTION=$(rospack find husky_gazebo)/urdf/description.gazebo.xacro" >> ~/.bashrc
source ~/.bashrc
```

Build individual packages listed above.

## Minimum example

Waypoints following example.
Bringup simulated environment and spawn a husky robot in it.

```bash
roslaunch robingas_mission_gazebo husky_main.launch
```

Command a robot to visit a sequence of waypoints.
```bash
roslaunch robingas_mission_gazebo send_wp_sequence.launch
```

## Navigation Pipeline

Start Gazebo simulator with Husky robot spawned:

```bash
roslaunch robingas_mission_gazebo husky_gazebo.launch
```

Launch navigation pipeline:

```bash
roslaunch robingas_mission_gazebo navigation.launch rviz:=true
```