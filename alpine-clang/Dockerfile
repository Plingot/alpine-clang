FROM alpine:3.12
LABEL maintainer="Mio Nilsson <mio@plingot.com>"
LABEL description="Alpine with cmake, clang and doxygen"

RUN apk add --no-cache \
  build-base \
  cmake \
  make \
  clang \
  clang-dev \
  llvm10 \
  pkgconf \
  pkgconfig \
  libc-dev \
  libstdc++ \
  binutils \
  file \
  doxygen \
  graphviz

RUN ln -sf /usr/bin/clang /usr/bin/cc
RUN ln -sf /usr/bin/clang++ /usr/bin/c++
