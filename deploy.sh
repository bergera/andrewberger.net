#!/bin/bash

# rebuild project
bundle install
bundle exec middleman build

# stop service
sudo initctl stop website-nginx

# remove existing container
docker rm website-nginx

# build new image
docker build -t website-nginx .

# run new container
docker run -d --name website-nginx -p 80:80 website-nginx

# restart service
sudo initctl start website-nginx
