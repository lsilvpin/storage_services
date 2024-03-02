#!/bin/bash

# Variáveis de ambiente com valores defaults
: ${NEO4J_USERNAME:="neo4j"}
: ${NEO4J_PASSWORD:="aUi87#2hJgj990IJa"}
: ${IMAGE_NAME:="neo4j_img"}
: ${IMAGE_TAG:="v1.0"}
: ${CONTAINER_NAME:="neo4j_container"}

# Portas para port forwarding
: ${BOLT_PORT:=7687}
: ${HTTP_PORT:=7474}

# Criação do volume
mkdir -p ./data

# Construção da imagem
docker build -t $IMAGE_NAME:$IMAGE_TAG -f Dockerfile .

# Comando para subir o container
docker run \
    --name $CONTAINER_NAME \
    -p $BOLT_PORT:$BOLT_PORT \
    -p $HTTP_PORT:$HTTP_PORT \
    -v neo4j_data:/data \
    -e NEO4J_AUTH=$NEO4J_USERNAME/$NEO4J_PASSWORD \
    $IMAGE_NAME:$IMAGE_TAG
docker build -t $IMAGE_NAME:$IMAGE_TAG .
