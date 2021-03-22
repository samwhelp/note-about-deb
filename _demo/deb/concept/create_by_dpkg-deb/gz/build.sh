#!/usr/bin/env bash


## remove old build
rm -rf build


## prepare folder
mkdir -p build


## copy app
cp -a app build/demo


## copy control
cp -a DEBIAN build/demo/DEBIAN


## create demo.deb
cd build
dpkg-deb -Z gzip -b demo
