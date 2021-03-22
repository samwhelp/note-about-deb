#!/usr/bin/env bash


## remove old build
rm -rf build


## prepare folder
mkdir -p build/demo


## create data.tar.gz
cd app
tar czf ../build/demo/data.tar.gz .


## create control.tar.gz
cd ../DEBIAN
tar czf ../build/demo/control.tar.gz .


## create debian-binary
cd ../build/demo
echo '2.0' > debian-binary


## create demo.deb and insert file: debian-binary control.tar.gz data.tar.gz
ar cr ../demo.deb debian-binary control.tar.gz data.tar.gz
