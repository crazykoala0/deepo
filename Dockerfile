# ==================================================================
# module list
# ------------------------------------------------------------------
# darknet       latest (git)
# python        3.6    (apt)
# torch         latest (git)
# chainer       latest (pip)
# jupyter       latest (pip)
# mxnet         latest (pip)
# onnx          latest (pip)
# paddle        latest (pip)
# pytorch       latest (pip)
# tensorflow    latest (pip)
# theano        latest (git)
# jupyterlab    latest (pip)
# keras         latest (pip)
# lasagne       latest (git)
# opencv        4.4.0  (git)
# sonnet        latest (pip)
# caffe         latest (git)
# cntk          latest (pip)
# ==================================================================

FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04
ENV LANG C.UTF-8
RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    PIP_INSTALL="python -m pip --no-cache-dir install --upgrade" && \
    GIT_CLONE="git clone --depth 10" && \

    rm -rf /var/lib/apt/lists/* \
           /etc/apt/sources.list.d/cuda.list \
           /etc/apt/sources.list.d/nvidia-ml.list && \

    apt-get update

EXPOSE 8888 6006
