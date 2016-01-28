#!/bin/bash

#set -e
# This doesn't work with subshells "()"

[[ $(uname -s) == Darwin ]] && platform=osx || platform=linux

# Build
(cd SiftGPU && make clean)
(cd pba && make clean)
(cd vsfm_$platform && make clean)
(cd cmvs/program/main && make clean)
(cd pmvs-2/program/main && make clean)

# Install
rm -f bin/*
