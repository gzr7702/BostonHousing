#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="/app"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#cat ~/info.txt | docker login --username gzr7702 --password-stdin
docker login --username gzr7702 --password Lippman.1
docker tag app rgrazianogzr7702/boston_housing/app


# Step 3:
# Push image to a docker repository
docker push $dockerpath

