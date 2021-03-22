#!/usr/bin/env bash

#cp ../../create_by_dpkg-deb/xz/build/demo.deb ./

#dpkg -e demo.deb
dpkg-deb -e demo.deb

#tree DEBIAN/
