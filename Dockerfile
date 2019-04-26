ARG baseImage=ubuntu:16.04
FROM $baseImage

RUN apt-get update && \
    apt-get install -y --no-install-recommends  \
        build-essential \
        ca-certificates \
        curl \
        git && \
    rm -rf /var/lib/apt/lists/*

RUN curl -o /opt/miniconda.sh \
        -O "https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh" && \
    chmod +x /opt/miniconda.sh && \
    /opt/miniconda.sh -b -p /opt/conda && \
    /opt/conda/bin/conda update -n base conda && \
    rm /opt/miniconda.sh

ENV PATH /opt/conda/bin:${PATH}

RUN conda install  -c anaconda \
        conda-build \
        anaconda-client && \
    conda clean -ya

COPY . /opt/clang-recipes

WORKDIR /opt/clang-recipes
