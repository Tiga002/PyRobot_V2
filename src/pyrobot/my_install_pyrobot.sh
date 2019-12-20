#!/usr/bin/env bash

# Make a virtual env to install other dependencies (with pip)
virtualenv_name="my_pyrobot_env"
VIRTUALENV_FOLDER=~/${virtualenv_name}
if [ ! -d "$VIRTUALENV_FOLDER" ]; then
	sudo apt-get -y install python-virtualenv
	virtualenv --no-site-packages -p python3 $VIRTUALENV_FOLDER
	source ~/${virtualenv_name}/bin/activate
	sudo apt-get install python-catkin-tools python3-dev python3-catkin-pkg-modules python3-numpy python3-yaml
	sudo apt-get install python3-tk
	sudo apt-get -y install ros-kinetic-orocos-kdl ros-kinetic-kdl-parser-py ros-kinetic-python-orocos-kdl ros-kinetic-trac-ik
	pip install catkin_pkg pyyaml empy rospkg
	python -m pip install --upgrade numpy
	pip3 install --ignore-installed -r requirements.txt
	cd $LOCOBOT_FOLDER/src/pyrobot/
	pip install .
	deactivate
fi

source ~/${virtualenv_name}/bin/activate
echo "Setting up PyRobot Catkin Ws..."
PYROBOT_PYTHON3_WS=~/pyrobot_catkin_ws

if [ ! -d "$PYROBOT_PYTHON3_WS/src" ]; then
	mkdir -p $PYROBOT_PYTHON3_WS/src
	cd $PYROBOT_PYTHON3_WS
	# First Build
	catkin_make 
fi 

# Clone the ROS Python Libraires to pyrobot_catkin_ws
cd $PYROBOT_PYTHON3_WS/src
#clone tf
git clone https://github.com/ros/geometry
git clone -b indigo-devel https://github.com/ros/geometry2

# Clone cv_bridge src
git clone https://github.com/ros-perception/vision_opencv.git

#ros_comm TODO: Remove this when the pull request gets approved
git clone -b patch-1 https://github.com/kalyanvasudev/ros_comm.git

cd ..

# Install all the python 3 dependencies
sudo apt-get install ros-kinetic-cv-bridge

## Find version of cv_bridge in your repository
##apt-cache show ros-kinetic-cv-bridge | grep Version
 
# Checkout right version in git repo. In our case it is 1.12.8
cd src/vision_opencv/
git checkout 1.12.8 # Usually this is the version!
cd ../../

#symlink - https://github.com/ros-perception/vision_opencv/issues/196
my_link=/usr/lib/x86_64-linux-gnu/libboost_python3.so
if [ ! -L ${my_link} ] ; then
   sudo ln -s /usr/lib/x86_64-linux-gnu/libboost_python-py35.so /usr/lib/x86_64-linux-gnu/libboost_python3.so
fi
# Build
catkin_make

echo "alias load_pyrobot3_env='source $VIRTUALENV_FOLDER/bin/activate && source $PYROBOT_PYTHON3_WS/devel/setup.bash'" >> ~/.bashrc

deactivate
