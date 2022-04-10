#!/bin/bash

#TEST MY NEW APPLICATION
echo "installing dependencies and running tests"
sleep 2
npm install
npm test

# BUILD MY NEW IMAGE
echo "building docker image"
sleep 2
docker build -t api-image:latest .
docker system prune -y
