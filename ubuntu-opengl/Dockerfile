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
  clang-11 \
  clang-format-11 \
  lldb-11 \
  lld-11 \
  libc++-11-dev \
  libc++abi-11-dev

# OpenGL + libraries
RUN apt -y install \
  libglfw3-dev \
  libglew-dev \
  libglm-dev \
  libxxf86vm-dev \
  libxi-dev \
  libxinerama-dev \
  libxcursor-dev

RUN update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-11 100
RUN update-alternatives --install /usr/bin/clang clang /usr/bin/clang-11 100
RUN update-alternatives --install /usr/bin/clang-format clang-format /usr/bin/clang-format-11 100
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++ 100
RUN update-alternatives --install /usr/bin/cc cc /usr/bin/clang 100
RUN update-alternatives --install /usr/bin/lld lld /usr/bin/lld-11 100
RUN update-alternatives --install /usr/bin/lldb lldb /usr/bin/lldb-11 100
