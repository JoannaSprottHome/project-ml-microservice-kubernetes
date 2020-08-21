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
# aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 310907231111.dkr.ecr.us-west-2.amazonaws.com
cat ~/docker-pass.txt | docker login --username=joannasprott --password-stdin
docker tag mlpredict:latest joannasprott/mlpredict:latest

# Step 3:
# Push image to a docker repository
docker push joannasprott/mlpredict:latest
