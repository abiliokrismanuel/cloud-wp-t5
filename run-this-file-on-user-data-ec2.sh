#!/bin/bash

#update system package
sudo yum update -y

# Install Git
sudo yum install -y git

# Clone the repository
git clone https://github.com/abiliokrismanuel/cloud-wp-t5.git

# Change directory to the repository
cd cloud-wp-t5

# Install Docker
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker $(whoami)

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Download .env file from S3 bucket
sudo aws s3 cp s3://<youre bucket ya>/<path>/<name file> <lokasi-tujuan>

# Start the application using Docker Compose
sudo docker-compose up -d