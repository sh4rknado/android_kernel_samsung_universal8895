#!/bin/bash

export ARCH=arm64
export BUILD_CROSS_COMPILE=../gcc-linaro-4.9.4-2017.01-x86_64_aarch64-elf/bin/aarch64-elf-
cp -avr arch/arm64/configs/exynos8895-dreamlte-nethunter_defconfig .config
make -j 20


