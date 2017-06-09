# Fork of WinBGIm

## Overview

WinBGIm, a Borland Graphics Interface (BGI) emulation for the MinGW (GCC port) compiler which can be use on Windows, is originally maintained and distributed by created by Michael Main and he welcomes us to _"use and modify this library as you like"_ .

This is a fork of WinBGIm since the version 6.0 provided on the original project homepage contains some bug and can not works properly. I fixed these problems I've found and may make some other improvements, so here it is.

Currently I've done:

 - Tidy code, fix bugs and warnings.
 - Make this library works whatever the build target is 64bit or 32bit.
 - Provided extra GNU makefile scripts, code example and docs.

## How to compile

Since I don't provide any binary for this library, you should build by yourself. Don't be afraid, it's easy. Oh, before you start, download the source code to a folder you like first.

### MSYS and GCC

First, You should install a distribution of MinGW GCC, The one I recommend is [TDM-GCC](http://tdm-gcc.tdragon.net/download) because in __MY__ opinion it's [better](http://tdm-gcc.tdragon.net/quirks) than other toolchains You can also use other MinGW GCC distributions if you like. 
Then I recommend you install [MSYS](http://www.mingw.org/wiki/MSYS) (use other terminal simulater if you like). All we need is a place to use __GNU Make__ and __MinGW__ toolchain, so after that you can open a MSYS terminal, located to the path you download the WinBGIm source to and simply run `make` .

For example, if you downloaded the source to `C:\path\to\WinBGIm\`, after you opened MSYS terminal, you should type these command.

``` bash
	cd /C/path/to/WinBGIm/
	make
```
After that, you will get a compiled `libbgi.a` and a `graphics.h` which is ready for use.

## How to use

To use this library, simply link the `libbgi.a` and include the header `graphics.h` (or `winbgim.h`, it's the same) in your code. Then it's done.

If you are looking for some examples, you can navigate to `example` folder and take a look (run `make` to build) , `test-all` folder is for test but it also contains a crop of examples (also, run `make` to build) . 
For API reference, refer to `doc` folder and that's it!

// TODO: provide some tutorials for Dev C++ / Code::Block / Visual Studio user.

## Links 

You can found the original version of WinBGIm (also is the first commit of this repo) on it's project homepage, here are some links that maybe useful to you.

 - Originally project homepage: [WinBGIm - Borland BGI emulation for MingW](http://winbgim.codecutter.org/)
 - WinBGIm documents: [Borland Graphics Interface (BGI) for Windows](http://www.cs.colorado.edu/~main/cs1300/doc/bgi/index.html)
 - The latest publicly available source code is available from [Michael Main's BGI directory](http://www.cs.colorado.edu/~main/bgi/source/)
 - [CSCI 1300 Lab Manual](http://www.cs.colorado.edu/~main/bgi/cs1300/lab/) also contains something about WinBGIm.
 - [Koolplot](http://koolplot.codecutter.org/), a very simple-to-use 2D graph plotting library based on WinBGIm.

## License

Same as the original version, This fork version comes without any licencing restriction. Use and modify this library as you like~