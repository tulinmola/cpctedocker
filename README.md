# CPCtedocker

CPCtedocker is a simple [CPCtelera](https://lronaldo.github.io/cpctelera/)
installation dockerfile to be used as compilation and building environment
without the need of installing anything in your system. This brights in
environments where you cannot even install CPCtelera, like in the new Mac
M1 computers.

## Installation

Just build given dockerfile:

```
$ docker build -t cpctelera .
```

You can add given scripts to your shell path. This is an example if you
are using zsh:

```
$ echo "export PATH=/path/to/this/folder/scripts:$PATH" >> ~/.zshrc
```

## Use example

```
$ cpct_make foo
$ cd foo
$ cpct_make && cpct_rvm *.sna
```

Note that `cpct_make` is used instead `make` to avoid executing system's
`make`, using CPCtelera docker file installation's one.
