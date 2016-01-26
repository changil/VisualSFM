#!/bin/bash
set -e
DIRS="CLAPACK-3.2.1 graclus1.2 SiftGPU pba cmvs/program/main pmvs-2/program/main vsfm"
# Make
for d in $DIRS; do (cd $d && make); done
# Install
cp SiftGPU/bin/libsiftgpu.so pba/bin/libpba.so cmvs/program/main/{cmvs,genOption} pmvs-2/program/main/pmvs2 vsfm/bin/
