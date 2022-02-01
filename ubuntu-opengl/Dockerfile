ARG UBUNTU_VERSION=20.04
FROM ubuntu:${UBUNTU_VERSION}
LABEL maintainer="Mio Nilsson <mio@plingot.com>"
LABEL description="Ubuntu build image with opengl, glfw, glew, glm"

ARG DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/Stockholm"
RUN apt -q update && apt -y upgrade

# Base build tools
RUN apt -y install \
  cmake \
  git \
  clang-12 \
  clang-format-12 \
  lldb-12 \
  lld-12 \
  libc++-12-dev \
  libc++abi-12-dev

# OpenGL + libraries
RUN apt -y install \
  libglfw3-dev \
  libglew-dev \
  libglm-dev \
  libxxf86vm-dev \
  libxi-dev \
  libxinerama-dev \
  libxcursor-dev

RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-12 100
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-12 100
RUN update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-12 100
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100
RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
RUN update-alternatives --install /usr/bin/lld lld /usr/bin/lld-12 100
RUN update-alternatives --install /usr/bin/lldb lldb /usr/bin/lldb-12 100
