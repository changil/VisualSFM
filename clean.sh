#!/bin/bash

#set -e
# This doesn't work with subshells "()"

[[ $(uname -s) == Darwin ]] && platform=osx || platform=linux

# Build
(cd SiftGPU && make clean)
(cd pba && make clean)
(cd vsfm_$platform && make clean)
(cd graclus1.2/metisLib && make realclean)
(cd graclus1.2/multilevelLib && make realclean)
(cd cmvs/program/main && make clean)
(cd pmvs-2/program/main && make clean)

# Install
rm -f bin/*
