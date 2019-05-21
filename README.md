# Introduction
This repo contains recipe for building clang library, clang-format, clang-tidy
and also the python wrapper for clang library.

# Downloading built recipes
```bash
conda install -c teju85 clang libclang
```

# Building my own recipe?
If you want to build your package and upload it to anaconda cloud, continue
reading...

## Pre-reqs
* docker
* git

## Usage
```bash
git clone https://github.com/teju85/clang-recipe
cd clang-recipe
docker build -t conda:dev .
docker run --rm -it conda:dev /bin/bash
inside-container# anaconda login
inside-container# conda build lib
inside-container# anaconda upload /path/to/libclang/package.tar.gz
inside-container# conda build py
inside-container# anaconda upload /path/to/clang/package.tar.gz
```

# License
[WTFPL](http://www.wtfpl.net/txt/copying/)
