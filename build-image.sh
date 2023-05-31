#!/bin/bash

# fail on any error
set -eu

# build the docker image

# add environment variable to the docker build command that will be used by code build to build multiple images
docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .