#!/bin/bash

echo "yum install -y yum-utils"
yum install -y yum-utils

echo "yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo"
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

echo "yum makecache fast"
yum makecache fast

echo "yum install docker-ce"
yum install -y docker-ce

echo "systemctl start docker"
systemctl start docker

echo "docker run hello-world"
docker run hello-world

echo "yum install -y git"
yum install -y git

echo "cd ~"
cd ~

echo "git clone https://github.com/emondek/server-api.git"
git clone https://github.com/emondek/server-api.git

echo "cd server-api/GreenApi"
cd server-api/GreenApi

echo "docker build -t emondek/serverapi ."
docker build -t emondek/serverapi .

echo "docker run -p 3000:3000 -d emondek/serverapi"
docker run -p 3000:3000 -d emondek/serverapi

echo "Done!"
