#!/bin/bash

set -x

./clean_gcc.sh

cur_dir=$(pwd)
cd ..
mkdir -p build_gcc
cd build_gcc

gcc  -o0 -save-temps ../src/hello_world.c ../src/sum.c -o hello_world.elf

./hello_world.elf

cd $cur_dir

