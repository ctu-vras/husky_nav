#!/bin/bash

#  run the exploration with naex in the singularity container
singularity run --nv \
    --bind ../:/opt/ros/navigation_ws/src/robingas_mission_gazebo/ \
    --bind $HOME/workspaces/traversability_ws/src/monoforce/:/opt/ros/navigation_ws/src/monoforce/ \
    ../singularity/robingas_mission_gazebo.simg \
    ../scripts/exploration.sh
