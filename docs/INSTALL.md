## Installation

The navigation pipeline is currently provided in simulator with Husky robot.

- Install husky simulation packages, [reference](http://wiki.ros.org/husky_navigation/Tutorials):
  ```bash
  sudo apt-get install ros-$ROS_DISTRO-husky-*
  echo "export HUSKY_GAZEBO_DESCRIPTION=$(rospack find husky_gazebo)/urdf/description.gazebo.xacro" >> ~/.bashrc
  source ~/.bashrc
  ```
  
- Install SLAM packages (Optional), [reference](https://github.com/norlab-ulaval/libpointmatcher):
  ```bash
  # create ROS workspace
  ws=~/workspaces/navigation_ws/
  mkdir -p "${ws}/src"
  mkdir -p "${ws}/src/thirdparty"
  
  # build libnabo
  cd "${ws}/src/thirdparty/"
  git clone https://github.com/ethz-asl/libnabo
  nabo_build=$ws/src/thirdparty/libnabo/build/
  mkdir -p $nabo_build && cd $nabo_build && cmake -DCMAKE_BUILD_TYPE=RelWithDebInfo $ws/src/thirdparty/libnabo/
  cd $nabo_build && make && make install
  
  # build libpointmatcher
  cd "${ws}/src/thirdparty/"
  git clone https://github.com/ethz-asl/libpointmatcher
  lpm_build=$ws/src/thirdparty/libpointmacher/build/
  mkdir -p $lpm_build && cd $lpm_build && cmake $ws/src/thirdparty/libpointmatcher/
  cd $lpm_build && make && make install
  ```

- Configure ROS workspace. Download the package and its dependencies and build individual packages listed above.
  ```bash
  cd "${ws}/src"

  git clone https://github.com/ctu-vras/husky_sim -b oru

  wstool init
  wstool merge husky_sim/dependencies.rosinstall
  wstool up -j 4

  cd "${ws}"
  catkin init
  catkin config --extend /opt/ros/$ROS_DISTRO/
  catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release
  rosdep install --from-paths src --ignore-src -r -y
  catkin build
  ```

- Download relevant Gazebo [models](http://subtdata.felk.cvut.cz/robingas/data/gazebo/models/)
used in the virtual worlds and place them to `$HOME/.gazebo/models/` folder.
