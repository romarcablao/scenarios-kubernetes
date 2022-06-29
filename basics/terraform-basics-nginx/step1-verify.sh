#!/bin/bash
LOGFILE=/step1-verify.log
#set -e # exit once any command fails
{
    set -e
    date
    terraform version
} >> ${LOGFILE} 2>&1

echo "done"
