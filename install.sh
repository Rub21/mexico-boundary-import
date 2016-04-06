#!/bin/bash
# instaladores requeridos
sudo apt-get install cmake cmake-curses-gui make libexpat1-dev zlib1g-dev libbz2-dev
sudo apt-get install libsparsehash-dev libboost-dev libboost-program-options-dev libgdal-dev libgeos++-dev libproj-dev doxygen graphviz
git clone https://github.com/osmcode/libosmium.git
cd libosmium/
mkdir build
cd build
cmake ..
make
cd 

git clone https://github.com/mapbox/minjur.git
cd minjur/
mkdir build
cd build
cmake ..
make
cd

git clone https://github.com/osmcode/osmium-tool.git
cd osmium-tool/
mkdir build
cd build
cmake ..
make
cd

