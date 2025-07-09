#!/bin/bash

# Navigate to the web-tier directory where Dockerfile is located
cd /home/ec2-user/application-code/web-tier

# Stop and remove any existing container
docker stop my-app-container || true
docker rm my-app-container || true

# Build Docker image
docker build -t my-app-image .

# Run Docker container
docker run -d -p 80:80 --name my-app-container my-app-image

