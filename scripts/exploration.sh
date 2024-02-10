#!/bin/bash

# source the workspace and launch the exploration
ws=/opt/ros/navigation_ws
source $ws/devel/setup.bash
roslaunch husky_sim exploration_lss.launch record:=false lss:=false rviz:=true
