#!/usr/bin/env bash

sudo apt-get install build-essential
#sudo apt-get install dpkg-dev
#sudo apt-get install binutils tar gzip




##
## apt-cache show build-essential | grep Depends:
## Depends: libc6-dev | libc-dev, gcc (>= 4:9.2), g++ (>= 4:9.2), make, dpkg-dev (>= 1.17.11)
##


##
## apt-cache show dpkg-dev | grep ^Depends:
## Depends: perl:any, libdpkg-perl (= 1.19.7ubuntu3), tar (>= 1.28-1), bzip2, xz-utils, patch (>= 2.7), make, binutils
##
