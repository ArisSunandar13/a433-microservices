#!/bin/bash

# Build Docker image dengan tag ghcr.io/arissunandar13/a433-microservices/karsajobs-ui:latest
docker build -t ghcr.io/arissunandar13/a433-microservices/karsajobs-ui:latest .

# Login ke GitHub Packages menggunakan token yang disimpan dalam variabel PASSWORD_GITHUB_PACKAGES
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u ArisSunandar13 --password-stdin

# Push Docker image ke GitHub Packages
docker push ghcr.io/arissunandar13/a433-microservices/karsajobs-ui:latest
