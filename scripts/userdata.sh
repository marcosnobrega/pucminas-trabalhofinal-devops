#!/bin/bash
sudo apt-get update
sudo apt-get install -y curl wget
curl -fsSL https://get.docker.com | bash
sudo docker pull nginx
sudo docker run -d --name nginx -p 80:80 nginx