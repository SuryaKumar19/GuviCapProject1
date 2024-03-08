#! /bin/bash

# Write a script for docker-compose file to automate the deploy

docker-compose up -d

###check whether the build is successfull or not

if [ $? -eq 0 ]
then
        echo "Docker  build was successfull, and container is up and running"
else
        echo "Build and deploy was failed"
fi

## To check the logs of deployed container
docker logs --follow scriptcompose
