#!/bin/bash
LOGFILE=/step1-verify.log
#set -e # exit once any command fails
{
    set -e
    date
    docker ps | grep nginx
    docker ps | grep 80
} >> ${LOGFILE} 2>&1

echo "done"
