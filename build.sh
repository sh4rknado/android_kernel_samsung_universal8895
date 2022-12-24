#!/bin/bash

export ARCH=arm64
cp -avr arch/arm64/configs/exynos8895-dreamlte-nethunter_defconfig .config
make -j 20


