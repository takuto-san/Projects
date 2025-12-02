# (プラットフォームはビルド時に --platform linux/amd64 で指定する)
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    make \
    nasm \
    gcc-multilib \
    binutils \
    mingw-w64 \
    gcc-i686-linux-gnu \
    binutils-i686-linux-gnu

WORKDIR /x86_emulator