#!/bin/bash

echo "Building image... 🔧"
docker build -t lastradev/observatorio-ciudadano-api:latest .
echo "Done. ✅"

echo "Uploading to Docker Hub... 🐳"
docker push lastradev/observatorio-ciudadano-api:latest
echo "Done. ✅"

echo "Waiting 5 seconds for docker-hub to update the image... 🕐"
sleep 5

echo "Upgrading image in server... 💪"
ssh perpro -t "cd stacks/observatorio-ciudadano-api && docker-compose pull && docker-compose up -d"
echo "Deploy finished. 🚀"
