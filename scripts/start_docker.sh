#!/bin/bash
cd /home/ec2-user/app

# Stop and remove any existing container
docker stop my-app-container || true
docker rm my-app-container || true

# Build Docker image
docker build -t my-app-image .

# Run Docker container
docker run -d -p 80:80 --name my-app-container my-app-image
