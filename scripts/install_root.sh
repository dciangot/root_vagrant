#!/bin/bash

wget wget https://root.cern.ch/download/root_6.16.source.tar.gz

tar -xzvf root_6.16.source.tar.gz

mkdir /opt/root

SOURCE=$PWD/root

cd /opt/root 

cmake $SOURCE

cmake --build . -- -j4

source bin/thisroot.sh