FROM plingot/alpine-clang:10 AS builder
LABEL maintainer="Mio Nilsson <mio@plingot.com>"
LABEL description="Alpine with cmake, clang, doxygen, lapack and blas"

ARG LAPACK_VERSION=3.8.0
ARG LIB_DIR=/usr/local/lib64

RUN apk add --no-cache \
  git \
  gfortran
RUN git clone https://github.com/Reference-LAPACK/lapack-release -b lapack-${LAPACK_VERSION} --depth 1

RUN mkdir build
WORKDIR /build
RUN cmake -DCMAKE_BUILD_TYPE=Release ../lapack-release && make && make install

FROM plingot/alpine-clang:10
COPY --from=builder /usr/local/lib64 /usr/local/lib64
