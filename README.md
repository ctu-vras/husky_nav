# Navigation goals
ROS package for mobile robot navigation based on move_base.

<img src="https://github.com/RuslanAgishev/navigation_goals/blob/master/figures/husky_example.png"/>

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
Husky simulation is tested on Gazebo 7 + ROS kinetic.

In case you want to use a turtlebot3 simulation, [reference](https://hotblackrobotics.github.io/en/blog/2018/01/29/seq-goals-py/):
```bash
sudo apt-get install ros-<distro>-turtlebot3-*
echo "export TURTLEBOT3_MODEL=burger" >> ~/.bashrc
source ~/.bashrc
```
Turtlebot simulation is tested both on Gazebo 7 + ROS kinetic and Gazebo 9 + ROS melodic set-ups.

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
