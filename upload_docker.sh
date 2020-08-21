#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="joannasprott/mlpredict"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ~/docker-pass.txt | docker login --username=joannasprott --password-stdin
docker tag mlpredict:latest joannasprott/mlpredict:latest

# Step 3:
# Push image to a docker repository
docker push joannasprott/mlpredict:latest
