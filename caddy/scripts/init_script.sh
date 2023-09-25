#!/bin/sh

apk update

apk add tzdata

echo "Asia/Seoul" > /etc/timezone

cp /usr/share/zoneinfo/Asia/Seoul /etc/localtime