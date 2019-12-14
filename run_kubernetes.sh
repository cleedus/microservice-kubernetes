#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kletoos/api

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlpod  --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
#kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward mlpod-66b7579d9b-88v9j 8000:80

