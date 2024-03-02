#!/bin/bash

# Variáveis de ambiente com valores defaults
export CASSANDRA_USERNAME=${CASSANDRA_USERNAME:-cassandra_admin}
export CASSANDRA_PASSWORD=${CASSANDRA_PASSWORD:-aUi87#2hJgj990IJa}

# Variáveis para imagem do container, tag e nome do container
IMAGE_NAME="cassandra_img"
IMAGE_TAG="v1.0"
CONTAINER_NAME="cassandra_container"

# Portas necessárias para o Cassandra
CASSANDRA_PORT=9042
CQLSH_PORT=9043

# Construção da imagem do Cassandra a partir do Dockerfile
docker build -t $IMAGE_NAME:$IMAGE_TAG -f Dockerfile .

# Execução do container do Cassandra
docker run \
    --name $CONTAINER_NAME \
    -e CASSANDRA_USERNAME=$CASSANDRA_USERNAME \
    -e CASSANDRA_PASSWORD=$CASSANDRA_PASSWORD \
    -p $CASSANDRA_PORT:9042 \
    -p $CQLSH_PORT:9043 \
    -p 7000:7000 \
    -p 7001:7001 \
    -p 7199:7199 \
    -p 9160:9160 \
    -v ./data:/var/lib/cassandra \
    $IMAGE_NAME:$IMAGE_TAG
