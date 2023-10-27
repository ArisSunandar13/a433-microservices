#!/bin/bash

# Membuat variabel untuk nama dan tag image
tagImage="ghcr.io/arissunandar13/a433-microservices/shipping-service:latest"

# Build image dengan tag ghcr.io/arissunandar13/a433-microservices/order-service:latest
docker build -t $tagImage .

# Login ke GitHub Packages menggunakan token yang disimpan dalam variabel PASSWORD_GITHUB_PACKAGES
echo $PASSWORD_GITHUB_PACKAGES | docker login ghcr.io -u ArisSunandar13 --password-stdin

# Push image ke GitHub Packages
docker push $tagImage
