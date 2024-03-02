#!/bin/bash

# Set default values for environment variables if they are not provided
: ${SA_PASSWORD:="aUi87#2hJgj990IJa"}
: ${IMAGE_NAME:="sqlserver_img"}
: ${IMAGE_TAG:="v1.0"}
: ${CONTAINER_NAME:="sqlserver_container"}

# Build the Docker image
docker build -t "$IMAGE_NAME:$IMAGE_TAG" -f ./Dockerfile .

# Create the data directory if it doesn't exist
mkdir -p ./data

# Run the container with the necessary parameters and volume configuration
docker run \
    -e SA_PASSWORD="$SA_PASSWORD" \
    -v "$(pwd)/data:/var/opt/mssql/data" \
    -p 1433:1433 \
    --name "$CONTAINER_NAME" \
    "$IMAGE_NAME:$IMAGE_TAG"
