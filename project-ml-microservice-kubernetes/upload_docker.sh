#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="nqthien041292/operationalize-a-machine-learning-microservice-api:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker logout
docker login -u nqthien041292
docker tag operationalize-a-machine-learning-microservice-api $dockerpath:operationalize-a-machine-learning-microservice-api

# Step 3:
# Push image to a docker repository
docker push $dockerpath:operationalize-a-machine-learning-microservice-api
