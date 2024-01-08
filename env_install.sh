# This script provides instructions for configuring the experiment environment in Windows 11.
# The GPU is NVIDIA GeForce GTX 1660 Ti.

# Create a virtual environment
conda create --name sgas python=3.6.8 -y
conda activate sgas-es

# Install pytorch 1.4.0 + torchvision 0.5.0 + cudatoolkit 10.1
conda install -y pillow=6.1 cudatoolkit=10.1

# Download .whl from https://download.pytorch.org/whl/torch_stable.html and install
pip install torch-1.6.0+cu101-cp36-cp36m-win_amd64.whl # cu101/torch-1.6.0
pip install torchvision-0.7.0+cu101-cp36-cp36m-win_amd64.whl # cu101/torchvision-0.7.0

# Install useful modules
conda install -y tensorboardX graphviz

# install useful modules
pip install tqdm tensorboardX graphviz

# install pyg
#  https://pytorch-geometric.readthedocs.io/en/latest/notes/installation.html
CUDA=cu100
pip install torch-scatter==2.0.4 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-sparse==0.6.1 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-spline-conv==1.2.0 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-cluster==1.4.5 -f https://pytorch-geometric.com/whl/torch-1.4.0+${CUDA}.html
pip install torch-geometric==1.4.3
pip install requests

CUDA=cu101
pip install torch-scatter==2.0.4 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
pip install torch-sparse==0.6.1 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
pip install torch-spline-conv==1.2.0 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
pip install torch-cluster==1.4.5 -f https://pytorch-geometric.com/whl/torch-1.4.0+cu101.html
pip install torch-geometric==1.4.3
pip install requests