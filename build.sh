#! /bin/bash

# Define variables

IMAGE_NAME="dev"


#Build the Docker image

docker build . -t ${IMAGE_NAME}  

# check if the build is success or not

if [ $? -eq 0 ];
then
	echo "Docker image ${IMAGE_NAME} build was successfull."
else
	echo "Failed to build Docker image ${IMAGE_NAME}."
fi
