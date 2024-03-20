## ZebraPose: Zebra Detection and Pose Estimation using only Synthetic Data
______
[Website and Data](https://zebrapose.is.tue.mpg.de)
______
### Abstract
Synthetic data is increasingly being used to address the lack of labeled images in uncommon domains for deep learning tasks. A prominent example is 2D pose estimation of animals, particularly for wild species such as zebras. However, many approaches still require real-world data, consistency and style constraints, sophisticated animal models, and/or powerful pre-trained networks to bridge the syn-to-real gap. Moreover, they often assume that the animal can be reliably detected in images or videos, a hypothesis that often does not hold, e.g. in wildlife scenarios or aerial images. To solve this, we use synthetic data generated with a 3D photorealistic simulator to obtain the first synthetic dataset that can be used for both detection and 2D pose estimation of zebras without applying any of the aforementioned bridging strategies. Unlike previous works, we extensively train and benchmark our detection and 2D pose estimation models on multiple real-world and synthetic datasets using both pre-trained and non-pre-trained backbones. These experiments show how the models trained from scratch and only with synthetic data can consistently generalize to real-world images of zebras in both tasks. Moreover, we show it is possible to easily generalize those same models to 2D pose estimation of horses with a minimal amount of real-world images to account for the domain transfer. Code, results, trained models; and the synthetic, training, and validation data, including 104K manually labeled frames, are provided as open-source.
_____
### Code
1. ViTPose is a branch of the original repository containing our modification to the evaluation software and our configuration files.
2. `Get Zebras Keypoints.ipynb` is the python notebook that we used to get the keypoints from the daata generated with GRADE. You can find the data in the "Additional Downloads" section of the [website](https://zebrapose.is.tue.mpg.de).
3. `scale_and_dup.ipynb` is the notebook that we used to scale the images as described in the paper. For this to work you need a coco-style json file containing segmentation masks and the original images.

To run the evaluations use the instructions of the ViTPose/YOLOv5. For ViTPose we have also some handy script. We always used the default parameters.

______
### License
By using this released software you agree to adhere to the [license](https://zebrapose.is.tue.mpg.de/license.html) terms.
______
### Citation
If you use this software, please cite 

```
@INPROCEEDINGS{10256293,
  author={Bonetto, Elia and Ahmad, Aamir},
  booktitle={2023 European Conference on Mobile Robots (ECMR)}, 
  title={Synthetic Data-Based Detection of Zebras in Drone Imagery}, 
  year={2023},
  volume={},
  number={},
  pages={1-8},
  doi={10.1109/ECMR59166.2023.10256293}}
```

```
@misc{bonetto2023grade,
            doi = {10.48550/ARXIV.2303.04466},
            url = {https://arxiv.org/abs/2303.04466},
            author = {Bonetto, Elia and Xu, Chenghao and Ahmad, Aamir},
            title = {GRADE: Generating Realistic Animated Dynamic Environments for Robotics Research},
            publisher = {arXiv},
            year = {2023},
            copyright = {arXiv.org perpetual, non-exclusive license}
}
```

