#!/bin/bash
LOGFILE=/step1-verify.log
#set -e # exit once any command fails
{
    set -e
    date
    docker container run -it --network my_bridge centos ping centos3 -c 3
} >> ${LOGFILE} 2>&1

echo "done"
