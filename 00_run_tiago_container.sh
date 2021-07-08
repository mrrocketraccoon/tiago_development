#!/bin/bash

xhost +local:docker &> /dev/null
DOCKER_COMMON_ARGS="--env=DISPLAY --env=QT_X11_NO_MITSHM=1 -v /tmp/.X11-unix:/tmp/.X11-unix:rw"

sudo docker run -it --rm --net=host --privileged $DOCKER_COMMON_ARGS -v /home/ricardoxcm/tiago_development/tiago_public_ws:/tiago_public_ws --name tiago_development palroboticssl/tiago_tutorials:melodic
