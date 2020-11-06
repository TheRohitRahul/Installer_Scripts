sudo apt update && sudo apt -y upgrade && sudo apt -y dist-upgrade
sudo apt install python3-pip
sudo pip3 install numpy
sudo apt install -y build-essential
sudo apt install -y cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt install -y python3-dev libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libdc1394-22-dev
sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt install -y libjpeg8-dev libtiff5-dev
sudo apt install -y libgtk-3-dev
sudo apt install -y libatlas-base-dev gfortran
sudo apt install -y libxvidcore-dev libx264-dev
sudo apt install -y tesseract-ocr

mkdir temp_opencv
cd temp_opencv

cwd=$(pwd)

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd opencv
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D ENABLE_PRECOMPILED_HEADERS=OFF \
-D INSTALL_C_EXAMPLES=OFF \
-D OPENCV_EXTRA_MODULES_PATH="$cwd/opencv_contrib/modules" ..

make -j4
sudo make install