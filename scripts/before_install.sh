#!/bin/bash

# Stop running containers (optional)
docker stop my-app-container || true
docker rm my-app-container || true

# Clean old deployment
rm -rf /home/ec2-user/app/*

# Recreate the app directory just in case
mkdir -p /home/ec2-user/app
