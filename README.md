# Searching CNN Architectures with SGAS on Fashion-MNIST

> 51265901030
>
> 徐珑珊

## Overview

This repository is built for the final project of *Advanced Machine Learning*, Fall 2023, ECNU. 
This project summarizes the work of [SGAS: Sequential Greedy Architecture Search](https://github.com/lightaime/sgas). According to the project requirements, an additional dataset Fashion-MNIST has been added, which was not utilized in the original paper.

## Requirements

This project was done on a Windows 11 system, using an NVIDIA GeForce GTX 1660 Ti GPU. The necessary dependencies are specified here.

```shell
# Create a virtual environment
conda create --name sgas python=3.6.8 -y
conda activate sgas

# Install pytorch 1.6.0 + torchvision 0.7.0 + cudatoolkit 10.1
conda install -y pillow=6.1 cudatoolkit=10.1
# Download .whl from https://download.pytorch.org/whl/torch_stable.html and install
pip install torch-1.6.0+cu101-cp36-cp36m-win_amd64.whl # cu101/torch-1.6.0
pip install torchvision-0.7.0+cu101-cp36-cp36m-win_amd64.whl # cu101/torchvision-0.7.0

# Install useful modules
conda install -y tensorboardX graphviz
```

## Code Running

1. Switch to `./cnn` directory

    ```shell
    cd cnn
    ```

2. Search on Fashion-MNIST

    Add `--use_history` if you want to use criterion 2. 

    ```shell
    python train_search.py --dataset=fashionMNIST --use_history
    ```

3. Train on FashionMNIST

    The `<arch_name>` can be found at the end of `genotypes.py`, such as `Cri2_FMNIST_Best`. 

    ```shell
    python train.py --dataset=fashionMNIST --auxiliary --cutout --arch <arch_name>
    ```

4. Test on pretrained models

    The pretrained models is in the `./pretrained_model` directory. 

    ```shell
    python test.py --dataset=fashionMNIST --auxiliary --arch <arch_name> --model_path=../pretrained_models/<model_name>
    ```
