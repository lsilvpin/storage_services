#!/bin/bash

# Set default values for environment variables if they are not provided
: ${POSTGRES_USER:="postgres"}
: ${POSTGRES_PASSWORD:="aUi87#2hJgj990IJa"}
: ${POSTGRES_DB:="db_name"}
: ${IMAGE_NAME:="postgres_img"}
: ${IMAGE_TAG:="v1.0"}
: ${CONTAINER_NAME:="postgres_container"}

# Build the Docker image
docker build -t "$IMAGE_NAME:$IMAGE_TAG" -f ./Dockerfile .

# Create the data directory if it doesn't exist
mkdir -p ./data

# Run the container with the necessary parameters and volume configuration
docker run \
    -e POSTGRES_USER="$POSTGRES_USER" \
    -e POSTGRES_PASSWORD="$POSTGRES_PASSWORD" \
    -e POSTGRES_DB="$POSTGRES_DB" \
    -v "$(pwd)/data:/var/lib/postgresql/data" \
    -p 5432:5432 \
    --name "$CONTAINER_NAME" \
    "$IMAGE_NAME:$IMAGE_TAG"
