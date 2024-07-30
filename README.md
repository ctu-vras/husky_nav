# Husky MonoForce

Navigation with Husky robot only from RGB images.
The [ctu-vras/monoforce](https://github.com/ctu-vras/monoforce) package is used as robot-terrain interaction and path planning pipeline.

[//]: # (![]&#40;docs/imgs/forest_navigation_video_teaser.png&#41;)

<p align="center">
  <a href="https://drive.google.com/file/d/1mqKEh_3VHZo4kDcJXP572SD1BVw37hSf/view?usp=drive_link">
  <img src="docs/imgs/forest_navigation_video_teaser.png" alt="5 minute CVPR presentation video link">
  </a>
</p>

Trajectories prediction is based on the
[NVIDIA/warp](https://github.com/NVIDIA/warp) and
[ctu-vras/diffsim](https://github.com/ctu-vras/diffsim/)
packages.

![Husky in Gazebo](docs/imgs/cameras.png)
![Husky in Gazebo](docs/imgs/husky_monoforce.png)

Navigation consists of the following stages:
- **Image acquisition**: RGB images are acquired from the Gazebo simulator.
- **Height map prediction**: The Terrain Encoder part of the MonoForce is used to estimate terrain properties.
- **Trajectories prediction**: The Diff Physics part of the MonoForce is used to shoot the robot trajectories.
- **Trajectory selection**: The trajectory with the smallest cost based on robot-terrain interaction forces is selected.
- **Control**: The robot is controlled to follow the selected trajectory.

## Installation

Please, refer to [INSTALL.md](docs/INSTALL.md) for installation instructions.

## Usage

```bash
roslaunch husky_nav husky_monoforce.launch warp_dphys:=true
```

## Citation

Consider citing the paper if you find the package relevant to your research:

```bibtex
@article{agishev2023monoforce,
    title={MonoForce: Self-supervised Learning of Physics-aware Model for Predicting Robot-terrain Interaction},
    author={Ruslan Agishev and Karel Zimmermann and Vladimír Kubelka and Martin Pecka and Tomáš Svoboda},
    year={2023},
    eprint={2309.09007},
    archivePrefix={arXiv},
    primaryClass={cs.RO}
}
```
