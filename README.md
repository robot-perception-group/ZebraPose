## ZebraPose: Zebra Detection and Pose Estimation using only Synthetic Data
______
[Website and Data](https://zebrapose.is.tue.mpg.de)
______
### Abstract
Collecting and labeling large real-world wild animal datasets is impractical, costly, error-prone, and labor-intensive. For animal monitoring tasks, as detection, tracking, and pose estimation, out-of-distribution viewpoints (e.g. aerial) are also typically needed but rarely found in publicly-available datasets. To solve this, existing approaches synthesize data with simplistic techniques that then necessitate strategies to bridge the synthetic-to-real gap. Therefore, real images, style constraints, complex animal models, or pre-trained networks are often leveraged. In contrast, we generate a fully synthetic dataset using a 3D photorealistic simulator and demonstrate that it can eliminate such needs for detecting and estimating 2D poses of wild zebras. Moreover, existing top-down 2D pose estimation approaches using synthetic data assume reliable detection models. However, these often fail in out-of-distribution scenarios, e.g. those that include wildlife or aerial imagery. Our method overcomes this by enabling training of both tasks using the same synthetic dataset. Through extensive benchmarks, we show that models trained from scratch exclusively on our synthetic data generalize well to real images. We perform these using multiple real-world and synthetic datasets, pre-trained and randomly initialized backbones, and different image resolutions. Code, results, models, and data will be open-source.
_____
### Code
1. ViTPose is a branch of the original repository containing our modification to the evaluation software and our configuration files.
2. `Get Zebras Keypoints.ipynb` is the python notebook that we used to get the keypoints from the data generated with GRADE. You can find the data in the "Additional Downloads" section of the [website](https://zebrapose.is.tue.mpg.de).
3. `scale_and_dup.ipynb` is the notebook that we used to scale the images as described in the paper. For this to work you need a coco-style json file containing segmentation masks and the original images.

To run the evaluations use the instructions of the ViTPose/YOLOv5. For ViTPose we have also some handy script. We always used the default parameters.

Yolov5 was checked out at commit `3e58c481`
______
### License
By using this released software you agree to adhere to the [license](https://zebrapose.is.tue.mpg.de/license.html) terms.
______
### Citation
If you use this software, please cite ...
