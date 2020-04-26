#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath="app"

# Authenticate & tag
cat ~/info.txt | docker login --username gzr7702 --password-stdin

docker tag ${dockerpath} gzr7702/boston_housing:${dockerpath}


# Push image to a docker repository
#docker push $dockerpath
docker push gzr7702/boston_housing:${dockerpath}
