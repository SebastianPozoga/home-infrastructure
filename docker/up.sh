#!/bin/bash

mkdir -p /var/homesrv/docker/owncloud/

cd ./docker/owncloud
docker-compose up -d
