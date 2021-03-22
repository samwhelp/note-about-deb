

## Reference

* $ man 1 [dpkg-deb](http://manpages.ubuntu.com/manpages/focal/en/man1/dpkg-deb.1.html)
* $ man 1 [dpkg](http://manpages.ubuntu.com/manpages/focal/en/man1/dpkg.1.html)
* $ man 5 [deb-control](http://manpages.ubuntu.com/manpages/focal/en/man5/deb-control.5.html)


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
build/demo.deb: Debian binary package (format 2.0), with control.tar.gz, data compression gz
```

run

``` sh
$ ar t build/demo.deb
```

show

```
debian-binary
control.tar.gz
data.tar.gz
```

run

``` sh
$ dpkg -I build/demo.deb
```

show

```
 new Debian package, version 2.0.
 size 624 bytes: control archive=238 bytes.
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
