#!/bin/bash

# fail on any error
set -eu

# login to your docker hub account
# cat ~/docker_terra_pass.txt | sudo docker login --username attodoker --password-stdin

docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD
# use the docker tag command to give the image a new name
# sudo docker tag techproject attodoker/image-build-codebuild

docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

# push the image to your docker hub repository
# sudo docker push attodoker/techproject

docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME
