# Developing and Deploying with Docker

## Pre-requisites

* Docker Desktop
* Visual Studio Code
* Visual Studio Code - Remote Containers (extension)
* Google Cloud SDK (optional - required for push to google container registry) 


## Docker commands used

Build the image and tag it as full-stack
> docker build . -t full-stack

Create a container and run it interactively. Map port 8080 on host to port 80 inside container
> docker run -p "8080:8080" -ti --pid=host full-stack

Rebuild the image with a google container registry namespace
> docker build . -t gcr.io/\<projectid\>/full-stack

Push the image to the remote registry
> docker push gcr.io/\<projectid\>/full-stack