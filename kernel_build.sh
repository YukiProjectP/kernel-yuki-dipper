#!/system/bin/bash
export PATH="/home/pp/proton-clang-20210522/bin:$PATH"
export ARCH=arm64
export AR=/home/pp/proton-clang-20210522/bin/llvm-ar
export NM=/home/pp/proton-clang-20210522/bin/llvm-nm
export OBJCOPY=/home/pp/proton-clang-20210522/bin/llvm-objcopy
export OBJDUMP=/home/pp/proton-clang-20210522/bin/llvm-objdump
export STRIP=/home/pp/proton-clang-20210522/bin/llvm-strip
export SUBARCH=arm64
export CC=/home/pp/proton-clang-20210522/bin/clang
export CROSS_COMPILE=/home/pp/proton-clang-20210522/bin/aarch64-linux-gnu-
export CROSS_COMPILE_ARM32=/home/pp/proton-clang-20210522/bin/arm-linux-gnueabi-

make O=out dipper_defconfig 

make -j$(nproc --all) O=out \
AR=/home/pp/proton-clang-20210522/bin/llvm-ar \
NM=/home/pp/proton-clang-20210522/bin/llvm-nm \
OBJCOPY=/home/pp/proton-clang-20210522/bin/llvm-objcopy \
OBJDUMP=/home/pp/proton-clang-20210522/bin/llvm-objdump \
STRIP=/home/pp/proton-clang-20210522/bin/llvm-strip \
ARCH=arm64 \
SUBARCH=arm64 \
CC=/home/pp/proton-clang-20210522/bin/clang \
CROSS_COMPILE=/home/pp/proton-clang-20210522/bin/aarch64-linux-gnu- \
CROSS_COMPILE_ARM32=/home/pp/proton-clang-20210522/bin/arm-linux-gnueabi-

cp out/arch/arm64/boot/Image.gz-dtb /mnt/e/