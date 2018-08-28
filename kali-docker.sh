#!/bin/sh

#docker pull kalilinux/kali-linux-docker
#docker run --name kali kalilinux/kali-linux-docker bash &


docker build -f Dockerfile.kali -t soups_kali .

docker run -i -t -d --name kali -p 55553:55553 -p 5432:5432 soups_kali -c /bin/bash

sleep 10

docker cp kali:/usr/share/armitage .
cd armitage
docker cp kali:/usr/share/metasploit-framework/config/database.yml .
export MSF_DATABASE_CONFIG=./database.yml
./armitage 
