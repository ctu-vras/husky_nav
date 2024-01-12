#!/bin/bash

ws=/opt/ros/navigation_ws
source $ws/devel/setup.bash
roslaunch robingas_mission_gazebo exploration.launch record:=true rviz:=false
