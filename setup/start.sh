#!/usr/bin/env bash

docker compose down

docker network rm runn-network

docker network create runn-network

# Increasing default HTTP Timeout from 60 to 300
export COMPOSE_HTTP_TIMEOUT=300
docker compose up -d