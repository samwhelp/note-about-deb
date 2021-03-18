

## Reference 

* https://debian-handbook.info/browse/stable/packaging-system.html#sect.binary-package-structure
* https://debian-handbook.info/browse/zh-TW/stable/packaging-system.html#sect.binary-package-structure
* $ man 1 [ar](http://manpages.ubuntu.com/manpages/focal/en/man1/ar.1.html)
* $ man 1 [tar](http://manpages.ubuntu.com/manpages/focal/en/man1/tar.1.html)


## Package

* [hello](https://packages.ubuntu.com/focal/hello)


## Donwload

run

``` sh
$ apt-get download hello
```


run

``` sh
$ ls -1
```

show

```
hello_2.10-2ubuntu2_amd64.deb
README.md
```

run

``` sh
$ file hello_2.10-2ubuntu2_amd64.deb
```

show

```
hello_2.10-2ubuntu2_amd64.deb: Debian binary package (format 2.0), with control.tar.xz, data compression xz
```


## Structure


run

``` sh
$ ar t hello_2.10-2ubuntu2_amd64.deb
```

show

```
debian-binary
control.tar.xz
data.tar.xz
```

## Extract

run

``` sh
$ ar x hello_2.10-2ubuntu2_amd64.deb
```

run

``` sh
$ ls -1
```

show

```
control.tar.xz
data.tar.xz
debian-binary
hello_2.10-2ubuntu2_amd64.deb
README.md
```


## Content

| File |
| --- |
| [debian-binary](#debian-binary) |
| [control.tar.xz](#controltarxz) |
| [data.tar.xz](#datatarxz) |


### debian-binary

run

``` sh
$ file debian-binary
```

show

```
debian-binary: ASCII text
```

run

``` sh
$ cat debian-binary
```

show

```
2.0
```


### control.tar.xz

run

``` sh
$ file control.tar.xz
```

show

```
control.tar.xz: XZ compressed data
```

run

``` sh
$ tar tf control.tar.xz
```

show

```
./
./control
./md5sums
```

run

``` sh
mkdir -p DEBIAN 
tar -p -C DEBIAN -xf control.tar.xz
```

run

``` sh
$ tree DEBIAN/
```

show

```
DEBIAN/
├── control
└── md5sums

0 directories, 2 files
```


run


``` sh
$ cat DEBIAN/control
```

show

```
Package: hello
Version: 2.10-2ubuntu2
Architecture: amd64
Maintainer: Ubuntu Developers <ubuntu-devel-discuss@lists.ubuntu.com>
Installed-Size: 112
Depends: libc6 (>= 2.14)
Conflicts: hello-traditional
Breaks: hello-debhelper (<< 2.9)
Replaces: hello-debhelper (<< 2.9), hello-traditional
Section: devel
Priority: optional
Homepage: http://www.gnu.org/software/hello/
Description: example package based on GNU hello
 The GNU hello program produces a familiar, friendly greeting.  It
 allows non-programmers to use a classic computer science tool which
 would otherwise be unavailable to them.
 .
 Seriously, though: this is an example of how to do a Debian package.
 It is the Debian version of the GNU Project's `hello world' program
 (which is itself an example for the GNU Project).
Original-Maintainer: Santiago Vila <sanvila@debian.org>
```


### control.tar.xz

run

``` sh
$ file data.tar.xz 
```

show

```
data.tar.xz: XZ compressed data
```

run

``` sh
$ tar tf data.tar.xz
```

show

```
./
./usr/
./usr/bin/
./usr/bin/hello
./usr/share/
./usr/share/doc/
./usr/share/doc/hello/
./usr/share/doc/hello/NEWS.gz
./usr/share/doc/hello/changelog.Debian.gz
./usr/share/doc/hello/copyright
./usr/share/info/
./usr/share/info/hello.info.gz
./usr/share/man/
./usr/share/man/man1/
./usr/share/man/man1/hello.1.gz
```


run

``` sh
mkdir -p hello 
tar -p -C hello -xf data.tar.xz
```

run

``` sh
$ tree hello
```

show

```
hello
└── usr
    ├── bin
    │   └── hello
    └── share
        ├── doc
        │   └── hello
        │       ├── changelog.Debian.gz
        │       ├── copyright
        │       └── NEWS.gz
        ├── info
        │   └── hello.info.gz
        └── man
            └── man1
                └── hello.1.gz

8 directories, 6 files
```

