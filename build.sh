#!/bin/bash

#set -e
# This doesn't work with subshells "()"

[[ $(uname -s) == Darwin ]] && platform=osx || platform=linux

# Build
(cd SiftGPU && make siftgpu)
(cd pba && make pba)
(cd vsfm_$platform && make)
(cd cmvs/program/main && make depend && make cmvs genOption)
(cd pmvs-2/program/main && make depend && make pmvs2)

# Install
mkdir -p bin
cp SiftGPU/bin/libsiftgpu.so pba/bin/libpba*.so vsfm_$platform/bin/VisualSFM bin/
cp cmvs/program/main/{cmvs,genOption} pmvs-2/program/main/pmvs2 bin/
