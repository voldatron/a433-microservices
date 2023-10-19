#!/bin/bash

# Build a docker image dari dockerfile
echo "Build the image"
docker build -t item-app:v1 .

# List docker images
echo "List docker image"
docker images

# Rename the image to match GitHub Packages format
echo "Tag item-app image to ghcr.io/voldatron/item-app:v1"
docker tag item-app:v1 ghcr.io/voldatron/item-app:v1

# Log in to GitHub 
echo "Login to github"
echo $GH_PACKAGES_TOKEN | docker login ghcr.io -u voldatron --password-stdin

# Push image
echo "Pushing to github package"
docker push ghcr.io/voldatron/item-app:v1