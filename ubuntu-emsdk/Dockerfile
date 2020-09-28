FROM ubuntu:20.04
LABEL maintainer="Mio Nilsson <mio@plingot.com>"
LABEL description="Ubuntu with emscripten"

ARG EMSDK_VERSION

ARG DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/Stockholm"
RUN apt -q update && apt -y upgrade
RUN apt -y install \
  cmake \
  git \
  python3

WORKDIR /root/src
RUN git clone https://github.com/emscripten-core/emsdk

WORKDIR /root/src/emsdk
RUN ./emsdk update-tags
RUN ./emsdk install ${EMSDK_VERSION}
RUN ./emsdk activate ${EMSDK_VERSION}
RUN . ./emsdk_env.sh

WORKDIR /
