#!/bin/bash

images=$(docker images | awk '{print $1}')

echo "Images:"
echo "$images"


for image in $images; do
    if [[ "$image" == "us-east1-docker.pkg.dev/devops-project-495401/docker-repo/nginx-app:v1.02" ]]; then
        found=true
        break
    fi
done

if [ "$found" = true ]; then
    echo "Image 'us-east1-docker.pkg.dev/devops-project-495401/docker-repo/nginx-app:v1.02' exists in the local Docker registry."
else
    echo "Image 'us-east1-docker.pkg.dev/devops-project-495401/docker-repo/nginx-app:v1.02' does not exist in the local Docker registry."
fi
