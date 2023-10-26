#!/bin/bash

# Build Docker image
docker build -t ghcr.io/voldatron/order-service:latest .

# Log in to GitHub Container Registry
echo $GH_PACKAGES_TOKEN | docker login ghcr.io -u voldatron --password-stdin

# Push Docker image to GitHub Container Registry
docker push ghcr.io/voldatron/order-service:latest