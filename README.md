cd cnn

<!-- use criterion 2 -->
python train_search.py --dataset=fashionMNIST --use_history

python train.py --dataset=fashionMNIST --epoch=1 --auxiliary --cutout --rand_erase --arch=<arch_name> 

python test.py --dataset=fashionMNIST --auxiliary --arch=FashionMNIST_1 --model_path=../pretrained_models/FashionMNIST_1.pt
