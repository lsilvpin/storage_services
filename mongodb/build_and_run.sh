#!/bin/bash

# Default values for environment variables
USER="${USER:-mongodb_admin}"
PASSWORD="${PASSWORD:-aUi87#2hJgj990IJa}"
IMAGE_NAME="${IMAGE_NAME:-mongodb_img}"
IMAGE_TAG="${IMAGE_TAG:-v1.0}"
CONTAINER_NAME="${CONTAINER_NAME:-mongodb_container}"

# Create data directory if it doesn't exist
mkdir -p ./data

# Build and run the MongoDB container
docker build -t $IMAGE_NAME:$IMAGE_TAG -f "./Dockerfile" .

# Run the MongoDB container
docker run \
    --name $CONTAINER_NAME \
    -e MONGO_INITDB_ROOT_USERNAME=$USER \
    -e MONGO_INITDB_ROOT_PASSWORD=$PASSWORD \
    -p 27017:27017 \
    -v "$(pwd)/data:/data/db" \
    $IMAGE_NAME:$IMAGE_TAG
