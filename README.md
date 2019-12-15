# Navigation goals
ROS package for mobile robot navigation based on move_base.

## Installation
Install husky simulation, [reference](http://wiki.ros.org/husky_gazebo/Tutorials/Simulating%20Husky):
```bash
sudo apt-get install ros-<distro>-husky-simulator
echo "export HUSKY_GAZEBO_DESCRIPTION=$(rospack find husky_gazebo)/urdf/description.gazebo.xacro" >> ~/.bashrc
```

In case you want to use a turtlebot3 simulation:
```bash
sudo apt-get install ros-kinetic-turtlebot3-*
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc
```

## Waypoints following example
Bringup simulated environment and spawn a husky robot in it.
```bash
roslaunch navigation_goals husky_main.launch
```
Or in order to spwan a turtlebot in a simulated environment:
```bash
roslaunch navigation_goals gazebo_navigation_rviz.launch
```
Command a robot to visit a sequence of waypoints.
```bash
roslaunch navigation_goals movebase_seq.launch
```
