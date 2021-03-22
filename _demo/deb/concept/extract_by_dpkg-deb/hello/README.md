
## Reference

* $ man 1 [dpkg-deb](http://manpages.ubuntu.com/manpages/focal/en/man1/dpkg-deb.1.html)
* $ man 1 [dpkg](http://manpages.ubuntu.com/manpages/focal/en/man1/dpkg.1.html)


## download.sh

run

``` sh
$ ./download.sh
```


## extract-control.sh


run

``` sh
$ ./extract-control.sh
```

show

``` sh
$ tree DEBIAN
```

show

```
DEBIAN
├── control
└── md5sums

0 directories, 2 files
```


## extract-data.sh

run

``` sh
$ ./extract-data.sh
```

show

``` sh
$ tree hello
```

show

``` sh
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
