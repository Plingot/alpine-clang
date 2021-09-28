ARG UBUNTU_VERSION=20.04
FROM ubuntu:${UBUNTU_VERSION}
LABEL maintainer="Mio Nilsson <mio@plingot.com>"
LABEL description="Ubuntu runner image with opengl, glfw, glew, glm"

ARG DEBIAN_FRONTEND="noninteractive"
ENV TZ="Europe/Stockholm"
RUN apt -q update && apt -y upgrade
RUN apt -y install \
  libopengl0 \
  libglu1-mesa \
  libc++1-10 \
  libc++abi1-10 \
  libglfw3 \
  libglew2.1 \
  libxxf86vm1 \
  libxi6 \
  libxinerama1 \
  libxcursor1 \
  libxrandr2
