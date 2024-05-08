## Installation

The navigation pipeline is currently tested in simulator with Husky robot only.

- Install ROS navigation stack and Husky related packages:

  ```bash
  sudo apt-get install ros-$ROS_DISTRO-navigation
  ```
  Install husky simulation, [reference](http://wiki.ros.org/husky_navigation/Tutorials):
  ```bash
  sudo apt-get install ros-$ROS_DISTRO-husky-*
  echo "export HUSKY_GAZEBO_DESCRIPTION=$(rospack find husky_gazebo)/urdf/description.gazebo.xacro" >> ~/.bashrc
  source ~/.bashrc
  ```
- Configure ROS workspace. Download the package and its dependencies and build individual packages listed above.

  ```bash
  ws=~/catkin_ws/
  mkdir -p "${ws}/src"
  cd "${ws}/src"

  git clone https://github.com/ctu-vras/husky_sim -b monoforce

  wstool init
  wstool merge husky_sim/dependencies.rosinstall
  wstool up -j 4

  cd "${ws}"
  catkin init
  catkin config --extend /opt/ros/$ROS_DISTRO/
  catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
  catkin build -c
  ```

- Download relevant Gazebo [models](http://subtdata.felk.cvut.cz/robingas/data/gazebo/models/)
used in the virtual worlds and place them to `$HOME/.gazebo/models/` folder.
