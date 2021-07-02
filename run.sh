#!/bin/bash

docker-compose down
printf 'y' | docker volume prune
docker-compose build
docker-compose up -d
