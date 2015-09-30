#!/bin/bash

CMAKE_CMD='cmake
-D ARTS:BOOL=OFF
-D ALSA:BOOL=OFF
-D PULSEAUDIO:BOOL=OFF
-D OSS:BOOL=OFF
-D ESD:BOOL=OFF
-D SDL_SHARED:BOOL=OFF
-D CMAKE_INSTALL_PREFIX="../../build"
-G "Unix Makefiles"
-D CMAKE_DEBUG_POSTFIX="_debug"
'

mkdir build

mkdir -p buildint/lindebug
cd buildint/lindebug
eval $CMAKE_CMD -D CMAKE_BUILD_TYPE="Debug" ../..
make -j7 install
cd ../..

mkdir -p buildint/linrelease
cd buildint/linrelease
eval $CMAKE_CMD -D CMAKE_BUILD_TYPE="Release" ../..
make -j7 install
cd ../..
