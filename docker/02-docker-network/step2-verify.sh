#!/bin/bash

validate_docker_ping=$(docker container run -it --network my_bridge centos ping centos3 -c 3 | grep "3 packets transmitted" | wc -l)

sleep 10
if [ $validate_docker_ping -le 0 ]; then
  exit 1
fi
