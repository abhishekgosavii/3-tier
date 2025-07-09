#!/bin/bash

# Update system and install Docker
yum update -y
yum install -y docker
systemctl start docker
usermod -aG docker ec2-user

# Clean up old deployment files
rm -rf /home/ec2-user/app/*
mkdir -p /home/ec2-user/app

