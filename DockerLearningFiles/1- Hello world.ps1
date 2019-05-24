## List Docker CLI commands
docker
docker container --help

## Display Docker version and info
docker --version
docker version
docker info

## Execute Docker image
docker run hello-world

## List Docker images
docker image ls

## List Docker containers (running, all, all in quiet mode)
docker container ls
docker container ls --all
docker container ls -aq

## To stop the container
docker container stop c82e1f082653

## List of your running containers with the command
docker ps


## Conclusion of part one
## Containerization makes CI/CD seamless. For example:

## applications have no system dependencies
## updates can be pushed to any part of a distributed application
## resource density can be optimized.
## With Docker, scaling your application is a matter of spinning up new executables, not running heavy VM hosts.


## EX.1 Build the APP and Create a Docker Image
docker build --tag=friendlyhello .

## EX.2 Another Example for ASP.NET and all the code in Dockerfile will be executed one after another
docker image build --tag webinar.app:v1

## We can specify the Dockerfile path
docker image build --tag webinar-app:v2 --file .\docker\web\Dokcerfile


## Run the app, mapping your machine’s port 4000 to the container’s published port 80 using -p:
docker run -p 4000:80 friendlyhello
## We must user http://localhost:4000 to call the App.
## Or the same result with
curl http://localhost:4000


## EX.1 Now let’s run the app in the background, in detached mode
docker run -d -p 4000:80 friendlyhello

## EX.2
docker container run --detach --publish 80 webinar-app:v1


## Clean the powershell
cls

## Get whole bunch of details, including its virtual IP
docker container [Container ID]


