#!/bin/bash

#set -e
# This doesn't work with subshells "()"

## Make
#DIRS="CLAPACK-3.2.1 graclus1.2 SiftGPU pba cmvs/program/main pmvs-2/program/main vsfm"
#for d in $DIRS; do (cd $d && make); done
## Install
#cp SiftGPU/bin/libsiftgpu.so pba/bin/libpba.so cmvs/program/main/{cmvs,genOption} pmvs-2/program/main/pmvs2 vsfm/bin/

[[ $(uname -s) == Darwin ]] && platform=osx || platform=linux

# NOTE: You don't need to build everything
# Build
(cd SiftGPU && make siftgpu)
(cd pba && make pba)
(cd vsfm_$platform && make)

# Install
mkdir -p bin
cp SiftGPU/bin/libsiftgpu.so pba/bin/libpba*.so vsfm_$platform/bin/VisualSFM bin/
