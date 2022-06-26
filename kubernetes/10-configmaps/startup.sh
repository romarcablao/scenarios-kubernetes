#!/usr/bin/env sh
sleep 10

mkdir -p /root/configs
mkdir -p /root/env

mv /root/resources/game.properties /root/configs/
mv /root/resources/person.env /root/env/
mv /root/resources/redis-config /root/configs/
