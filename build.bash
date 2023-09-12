#!/bin/bash
docker build --build-arg="HOST_USER=$(whoami)" -f ./docker/Dockerfile.ros -t uts-ros .
