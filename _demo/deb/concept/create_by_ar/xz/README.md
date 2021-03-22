

## Prepare

``` sh
$ ./prepare.sh
```


## Build


``` sh
$ ./build.sh
```

## Info

run

``` sh
$ file build/demo.deb
```

show

```
build/demo.deb: Debian binary package (format 2.0), with control.tar.xz, data compression xz/
```

run

``` sh
$ ar t build/demo.deb 
```

show

```
debian-binary
control.tar.xz
data.tar.xz
```

run

``` sh
$ dpkg -I build/demo.deb
```

show

```
 new Debian package, version 2.0.
 size 740 bytes: control archive=304 bytes.
     129 bytes,     6 lines      control              
 Package: demo
 Version: 0.1
 Architecture: all
 Description: This is a test package.
 Maintainer: developer <developer@hell.heaven>
```

## Install

run

``` sh
$ sudo dpkg -i build/demo.deb
```

run

``` sh
$ dpkg -l demo
```

show

``` sh
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name           Version      Architecture Description
+++-==============-============-============-=================================
ii  demo           0.1          all          This is a test package.
```

run

``` sh
$ dpkg -L demo
```

show

```
/.
/usr
/usr/bin
/usr/bin/demo
```



