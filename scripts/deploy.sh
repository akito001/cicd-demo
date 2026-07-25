#!/bin/bash

IMAGE=cicd-demo:${BUILD_NUMBER}

docker stop cicd-demo || true
docker rm cicd-demo || true

docker run -d \
    --name cicd-demo \
    -p 8088:8000 \
    ${IMAGE}
