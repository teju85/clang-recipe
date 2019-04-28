# Introduction
This repo contains recipe for building clang library, clang-format, clang-tidy
and also the python wrapper for clang library.

# Pre-reqs
* docker
* git

# Usage
```bash
git clone https://github.com/teju85/clang-recipe
cd clang-recipe
docker build -t conda:dev .
docker run --rm -it conda:dev /bin/bash
inside-container# conda build recipe
```
