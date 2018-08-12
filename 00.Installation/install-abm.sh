#!/bin/bash

#	##########################################################
#	By Eugene Ch'ng | www.complexity.io | 2018
#	Email: genechng@gmail.com
#	----------------------------------------------------------
#	Linux Installer for Agent-Based Simulation Development
#	Core Compilers and Libraries: C++, OpenGL, SDL
#
# Make sure this file is executable
# sudo chmod +r install-basics.sh
#	###########################################################

clear

echo "------------- Prepare FILES"
# put all preparation files/folders/source here
# in this case, there is none

echo "------------- Installation Starts"

sudo apt-get -y upgrade
sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y install build-essential
sudo apt-get -y install openssh-server
sudo apt-get -y install libcurl-dev
sudo apt-get -y install libcurl4-openssl-dev
sudo apt-get -y install htop
sudo apt-get -y install g++ make
sudo apt-get -y install software-properties-common

# install SDL
sudo apt-get install -y libsdl2-2.0 libsdl2-dev
sudo apt-get install -y libsdl2-ttf-dev libsdl2-ttf-2.0-0

# install OpenGL (CUDA apps require visualisation)
sudo apt-get install -y libglew1.5 libglew1.5-dev libglu1-mesa libglu1-mesa-dev libgl1-mesa-glx libgl1-mesa-dev cmake libx11-dev xorg-dev libglu1-mesa-dev
sudo apt-get -y install freeglut3 freeglut3-dev

# install GPU Drivers and CUDA SDK
# for later

# for glxinfo
sudo apt-get install mesa-utils

glxinfo | grep OpenGL

echo "------------- Installation ENDS"
