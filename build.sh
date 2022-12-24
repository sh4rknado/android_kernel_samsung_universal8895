#!/bin/bash

export ARCH=arm64
export BUILD_CROSS_COMPILE=../aarch64-linux-android-4.9/bin/aarch64-linux-android-
cp -avr arch/arm64/configs/exynos8895-dreamlte-nethunter_defconfig .config
make -j 20


