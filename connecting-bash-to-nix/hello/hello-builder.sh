#!/bin/sh

set -e
tar -xzf "$src"
cd hello-2.12.1
./configure --prefix="$out"
make 
make install
