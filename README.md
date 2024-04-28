# Introduction

This repository contains some deep learning research I've been doing in the recent past.


# Installation

For reproducibility, we included a Docker image we used to develop and test the application. 

Build the Docker image.

```bash
make build
```

Start a Docker container based on the newly built image.

```bash
make start
```

Launch a Jupyter Lab server.

```bash
make jupyter
```

Start an interactive zsh shell in the container.

```bash
make attach
```


# Contribute

Here is a brief description of what each folder contains:

* `data`: input and pre-processed data
* `nbs`: notebooks for exploration analyses
* `pipe`: Python scripts for each step in the DVC pipeline
* `src`: source code for companion library
* `ckpts`: model checkpoints
* `outs`: model outputs


#### Commit labels

When contributing to this repository, please consider using the following convention to label your commit messages.

* API relevant changes:
    * `feat`: Commits that add a new feature
    * `fix`: Commits that fixes a bug
* `refactor`: Commits that rewrite/restructure your code but does not change any behavior
    * `perf`: Special `refactor` commits that improve performance
* `style`: Commits that do not affect the meaning (white space, formatting, missing semi-colons, etc.)
* `test`: Commits that add missing tests or correct existing tests
* `docs`: Commits that affect documentation only
* `build`: Commits that affect build components like build tool, CI pipeline, dependencies, project version, etc.
* `ops`: Commits that affect operational components like infrastructure, deployment, backup, recovery, etc.
* `chore`: Miscellaneous commits e.g., modifying `.gitignore`


# Tools

- [Git](https://git-scm.com/)
- [Docker](https://www.docker.com/)
- [NVIDIA NGC](https://ngc.nvidia.com/) 
- [DVC](https://github.com/iterative/dvc)
- [PyTorch](https://github.com/pytorch/pytorch)
- [PyTorch Lightning](https://github.com/PyTorchLightning/pytorch-lightning)
