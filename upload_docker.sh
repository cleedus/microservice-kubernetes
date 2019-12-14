#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=kletoos/api
 
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
#docker login --username kletoos --password-stdin
cat ./my_password.txt | docker login --username kletoos --password-stdin

# Step 3:
# Push image to a docker repository
docker push $dockerpath
