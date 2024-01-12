#!/bin/bash

# source the workspace and launch the exploration
ws=/opt/ros/navigation_ws
source $ws/devel/setup.bash
roslaunch robingas_mission_gazebo exploration_lss.launch record:=false lss:=false rviz:=true
