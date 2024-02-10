#!/bin/bash

#  run the exploration with naex in the singularity container
singularity run --nv \
    --bind ../:/opt/ros/navigation_ws/src/husky_sim/ \
    --bind $HOME/workspaces/traversability_ws/src/monoforce/:/opt/ros/navigation_ws/src/monoforce/ \
    ../singularity/husky_sim.simg \
    ../scripts/exploration.sh
