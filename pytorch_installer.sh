#MKL dependencies
sudo apt install libmkl-intel-thread 
sudo apt install libmkl-intel-lp64
sudo apt install libmkl-intel-ilp64
sudo apt install libmkldnn-dev
sudo apt install libmkldnn1
sudo apt install libmkl-core
sudo apt install libmkl-dev

#Installing pytorch
git clone --recursive https://github.com/pytorch/pytorch.git
python setup.py clean
python setup.py install

# Installing torchvision
git clone --recursive https://github.com/pytorch/vision.git
cd vision
python setup.py clean
python setup.py install

# Installing torchtext
git clone https://github.com/pytorch/text torchtext
cd torchtext
git submodule update --init --recursive
git checkout v0.8.0-rc2
python setup.py clean install