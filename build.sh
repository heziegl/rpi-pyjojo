#! /bin/bash



# docker image to build
IMAGE_NAME=heziegl/rpi-pyjojo

# build image
sudo docker build -t $IMAGE_NAME .
