#!/usr/bin/env sh
sleep 10
rm -rf /root/resources
mkdir -p /root/resources
cp -r /root/newresources/* /root/resources/
rm -rf /root/newresources

