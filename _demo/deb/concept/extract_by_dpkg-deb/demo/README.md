
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
DEBIAN/
└── control

0 directories, 1 file
```


## extract-data.sh

run

``` sh
$ ./extract-data.sh
```

show

``` sh
$ tree demo
```

show

``` sh
demo
└── usr
    └── bin
        └── demo

2 directories, 1 file
```
