ARG ALPINE_VERSION=3.12
FROM alpine:${ALPINE_VERSION}
LABEL maintainer="Mio Nilsson <mio@plingot.com>"
LABEL description="Alpine tailored for running binaries built with plingot/alpine-clang"

RUN apk add --no-cache \
  libstdc++
