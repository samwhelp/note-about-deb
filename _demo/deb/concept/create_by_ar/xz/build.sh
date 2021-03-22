#!/usr/bin/env bash


## remove old build
rm -rf build


## prepare folder
mkdir -p build/demo


## create data.tar.xz
cd app
tar cJf ../build/demo/data.tar.xz .


## create control.tar.xz
cd ../DEBIAN
tar cJf ../build/demo/control.tar.xz .


## create debian-binary
cd ../build/demo
echo '2.0' > debian-binary


## create demo.deb and insert file: debian-binary control.tar.xz data.tar.xz
ar cr ../demo.deb debian-binary control.tar.xz data.tar.xz
