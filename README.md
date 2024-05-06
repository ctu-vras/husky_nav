# Husky Simulation

## Installation

Please, refer to [INSTALL.md](docs/INSTALL.md) for installation instructions.

## Running

- Husky robot spawning in Gazebo ORU campus world:
    ```bash
    roslaunch husky_sim husky_sim.launch gui:=true rviz:=true world:=/path/to/husky_sim/worlds/oru_forest.world
    ```
  Keyboard teleoperation:
    ```bash
    roslaunch husky_sim keyboard_teleop.launch
    ```

- Random path generation and following:

    ```bash
    roslaunch husky_sim husky_random_walk.launch
    ```

- Exploration with [naex](https://github.com/ctu-vras/naex) navigation pipeline:

    ```bash
    roslaunch husky_sim husky_exploration.launch
    ```
