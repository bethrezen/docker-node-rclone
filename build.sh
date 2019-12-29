#!/usr/bin/env bash

docker build -t bethrezen/docker-node-rclone ./
docker push bethrezen/docker-node-rclone
