#!/bin/sh
echo "Enter the version for docker image"
read TAG
docker build --tag nginx_docker_image:$TAG .
docker images
sudo docker run -d -p 8080:80 nginx_docker_image:$TAG
sudo docker ps 
