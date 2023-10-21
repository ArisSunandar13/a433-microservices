#!/bin/bash

docker build -t item-app:v1 .
# Membangun image Docker dengan nama "item-app" dan tag "v1" dari Dockerfile yang berada di direktori saat ini

docker images
# Menampilkan daftar semua image Docker yang ada di host

docker tag item-app:v1 ghcr.io/arissunandar13/a433-microservices/item-app:v1
# Memberi tag pada image "item-app:v1" dengan nama repository "ghcr.io/arissunandar13/a433-microservices/item-app" dan tag "v1"

echo $PASSWORD_DOCKER_HUB | docker login ghcr.io -u ArisSunandar13 --password-stdin
# Melakukan login ke GitHub Container Registry menggunakan nama pengguna "ArisSunandar13" dan personal access token (PAT) yang di export ke dalam variabel $PASSWORD_DOCKER_HUB

docker push ghcr.io/arissunandar13/a433-microservices/item-app:v1
# Melakukan push image "ghcr.io/arissunandar13/a433-microservices/item-app:v1" ke GitHub Container Registry