#!/bin/bash

if [ -z "${1}" ]; then
  echo "usage: ${0} [emsdk-version]"
  exit 1
fi

docker build -t plingot/ubuntu-emsdk:${1} --build-arg EMSDK_VERSION="${1}" .
