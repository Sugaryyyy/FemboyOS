#!/bin/bash 
cd /sources/
wget -nc https://download.kde.org/stable/plasma/5.4.3/oxygen-fonts-5.4.3.tar.xz
tar -xf oxygen-fonts-5.4.3.tar.xz
cd oxygen-fonts-5.4.3

mkdir build &&
cd    build &&

cmake ..
make

make install