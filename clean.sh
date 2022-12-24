#!/bin/bash

make mrproper
git reset --hard
rm -fv arch/arm64/boot/dtb.img
