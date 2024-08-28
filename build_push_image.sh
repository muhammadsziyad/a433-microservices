#!/bin/bash

# Membuat Docker image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format Docker Hub
docker tag item-app:v1 muhammadsziyad/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u muhammadsziyad --password-stdin

# Mengunggah image ke Docker Hub
docker push muhammadsziyad/item-app:v1

