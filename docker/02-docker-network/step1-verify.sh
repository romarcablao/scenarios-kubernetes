#!/bin/bash

validate_docker_delete=$(docker ps -a | grep centos3 | wc -l)

if [ $validate_docker_delete -ge 1 ]; then
  exit 1
fi
