## Introduction

This repository contains some deep learning research I've been doing in the recent past.


## Installation

For reproducibility, we included a Docker image we used to develop and test the application. 

Build the Docker image.

```bash
make build
```

Start a Docker container based on the newly built image.

```bash
make start
```

Start a bash shell in the container.

```bash
make attach
```


## Contribute

Here is a brief description of what each folder contains:
* `data`: input and pre-processed data
* `nbs`: notebooks for exploration analyses
* `pipe`: Python scripts for each step in the DVC pipeline
* `src`: source code for companion library
* `ckpts`: model checkpoints
* `outs`: model outputs


#### Commit labels

When contributing to this repository, please consider using the following convention to label your commit messages.

* `BUG`: fixing a bug
* `DEV`: development environment ― e.g., Docker, TensorBoard, system dependencies
* `DOC`: documentation
* `EDA`: exploratory data analysis
* `ML`: modeling, feature engineering
* `MAINT`: maintenance ― e.g., refactoring
* `OPS`: ml ops ― e.g., download/unzip/pre- and post-process data

## Tools

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [NVIDIA NGC](https://ngc.nvidia.com/) 
- [DVC](https://github.com/iterative/dvc)
- [PyTorch](https://github.com/pytorch/pytorch)
- [PyTorch Lightning](https://github.com/PyTorchLightning/pytorch-lightning)
- [timm](https://github.com/rwightman/pytorch-image-models/tree/master/timm)
