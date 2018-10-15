
sudo add-apt-repository ppa:kirillshkrogalev/ffmpeg-next 
sudo apt update
sudo apt upgrade -y

#安装OpenCV的图像工具包
sudo apt install ffmpeg -y
sudo apt install libjpeg8-dev -y
sudo apt install libtiff5-dev -y
sudo apt-get install libopencv-dev build-essential cmake git libprotobuf-dev  -y
sudo apt-get install libgtk2.0-dev pkg-config python-dev python-numpy  -y
sudo apt-get install libsnappy-dev gtk+-3.0 yasm Doxygen  -y
sudo apt-get install libdc1394-22 libopenblas-dev liblmdb-dev  -y
sudo apt-get install libdc1394-22-dev libjpeg-dev libpng12-dev libtiff4-dev  -y
sudo apt-get install libjasper-dev libhdf5-serial-dev  -y
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libxine-dev  -y
sudo apt-get install libgstreamer0.10-dev libgflags-dev  -y
sudo apt-get install libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev  -y
sudo apt-get install libqt4-dev libfaac-dev libgoogle-glog-dev  -y
sudo apt-get install libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev   -y
sudo apt-get install libtheora-dev libvorbis-dev protobuf-compiler liblapack-dev  -y
sudo apt-get install libxvidcore-dev x264 v4l-utils unzip liblapacke-dev   -y
sudo apt-get install libavresample-dev libgphoto2-dev libavutil-dev  -y
sudo apt-get install --no-install-recommends libboost-all-dev  -y
sudo apt install libatlas-base-dev  -y
sudo apt install gfortran -y



# 下载OpenCV
wget -O opencv-3.4.3.zip https://github.com/Itseez/opencv/archive/3.4.3.zip
# 解压OpenCV
unzip opencv-3.4.3.zip
# 下载OpenCV_contrib
wget -O opencv_contrib-3.4.3.zip https://github.com/Itseez/opencv_contrib/archive/3.4.3.zip
# 解压OpenCV_contrib库：
unzip opencv_contrib-3.4.3.zip


#cd opencv-3.4.3
cd opencv-3.4.3
# 新建release文件夹
mkdir release
# 进入release文件夹
cd release

sudo cmake -D CMAKE_BUILD_TYPE=RELEASE \
    -D CMAKE_INSTALL_PREFIX=/usr/local \
    -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.4.3/modules \
    -D INSTALL_PYTHON_EXAMPLES=ON \
    -D BUILD_EXAMPLES=ON ..

# 编译，以管理员身份，否则容易出错
sudo make -j4
# 安装
sudo make install
# 更新动态链接库
sudo ldconfig

sleep 2
g++ ./testcv.cpp -o testcv -lopencv_core -lopencv_highgui -lopencv_imgproc


