#!/bin/bash
TARGET=libstb_image.a
UNIVERSAL_BUILD_CPP="stb_image_ub.cpp"
DEBUG_FLAGS="-O0 -g"
RELEASE_FLAGS="-O2"
CFLAGS="$CFLAGS $RELEASE_FLAGS"

if [ ! -d "build" ]; then
	mkdir build
fi
c++ $CFLAGS -c $UNIVERSAL_BUILD_CPP -o ${UNIVERSAL_BUILD_CPP}.o
ar rcs build/$TARGET ${UNIVERSAL_BUILD_CPP}.o
rm ${UNIVERSAL_BUILD_CPP}.o
