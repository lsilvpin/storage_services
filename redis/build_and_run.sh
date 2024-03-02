#!/bin/bash

# Environment variables
REDIS_USERNAME=${REDIS_USERNAME:-redis_admin}
REDIS_PASSWORD=${REDIS_PASSWORD:-aUi87#2hJgj990IJa}
IMAGE_NAME=${IMAGE_NAME:-redis_image}
IMAGE_TAG=${IMAGE_TAG:-v1.0}
CONTAINER_NAME=${CONTAINER_NAME:-redis_container}

# Build the Docker image
docker build -t "$IMAGE_NAME:$IMAGE_TAG" -f Dockerfile .

# Run the Redis container
docker run \
    --name "$CONTAINER_NAME" \
    -e REDIS_USERNAME="$REDIS_USERNAME" \
    -e REDIS_PASSWORD="$REDIS_PASSWORD" \
    -p 6379:6379 \
    -v "$(pwd)/data:/data" \
    "$IMAGE_NAME:$IMAGE_TAG"
