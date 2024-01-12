#!/bin/bash

#  run the exploration with naex in the singularity container
singularity run --nv --bind ../:/opt/ros/navigation_ws/src/robingas_mission_gazebo/ \
    ../singularity/robingas_mission_gazebo.simg \
    ../scripts/exploration.sh
