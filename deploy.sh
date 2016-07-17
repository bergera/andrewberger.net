#!/bin/bash

bundle install
bundle exec middleman build
sudo initctl stop website-nginx
docker rm website-nginx
docker build -t website-nginx .
docker run -d --name website-nginx -p 80:80 website-nginx
sudo initctl start website-nginx
