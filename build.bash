#!/bin/bash
docker build \
  --build-arg="HOST_USER=$(whoami)" \
  --build-arg="DISPLAY=$(echo $DISPLAY)" \
  -f ./docker/Dockerfile.ros \
  -t uts-ros-test .

docker build \
  --build-arg="HOST_USER=$(whoami)" \
  --build-arg="DISPLAY=$(echo $DISPLAY)" \
  -f ./docker/Dockerfile.matlab \
  -t uts-matlab-test .
