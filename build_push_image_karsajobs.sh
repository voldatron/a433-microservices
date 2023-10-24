#!/bin/bash

# Build Docker image
docker build -t ghcr.io/voldatron/karsajobs:latest .

# Log in to GitHub Container Registry
docker login ghcr.io -u voldatron -p $GH_PACKAGES_TOKEN

# Push Docker image to GitHub Container Registry
docker push ghcr.io/voldatron/karsajobs:latest