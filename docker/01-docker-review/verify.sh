#!/bin/bash

validate_docker_containers=$(docker ps -aq | wc -l)
validate_docker_images=$(docker images -aq | wc -l)

if [ $validate_docker_containers -ge 1 ]; then
  echo "Hint: Make sure there's no single container 'running' or in 'exited' state..."
  exit 1
fi

if [ $validate_docker_images -ge 1 ]; then
  echo "Hint: Make sure there's no single images in the environment..."
  exit 1
fi
