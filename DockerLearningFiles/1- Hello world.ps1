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

## EX.100 Another Example for ASP.NET and all the code in Dockerfile will be executed one after another
## It's important to be in the root file in host
docker image build --tag webinar.app:v1 .

## We can specify the Dockerfile path
docker image build --tag webinar-app:v2 --file .\docker\web\Dockerfile .
docker image build -t webinar-db:v1 -f .\docker\db\Dockerfile .

## Run the app, mapping your machine’s port 4000 to the container’s published port 80 using -p:
docker run -p 4000:80 friendlyhello
## We must user http://localhost:4000 to call the App.
## Or the same result with
# curl http://localhost:4000
Invoke-WebRequest http://localhost:4000


## EX.1 Now let’s run the app in the background, in detached mode
docker run -d -p 4000:80 friendlyhello
## -P -> --publish-all
## -p -> --publish list 
docker container run -d -P webinar-db:v1
docker container inspect d90f7496f80faa88a4f90fbded68f829e528b9551a7b1b744cabadd49c6e4d6f

## EX.100
docker container run --detach --publish 80 webinar-app:v1


## Clean the powershell
# cls
Clear-Host

## Get whole bunch of details, including its virtual IP
docker container [Container ID]


docker pull sjawhar/msbuild-ssdt

## Tag the image 
docker tag image username/repository:tag
docker tag friendlyhello parisadocker/get-started:part2

## Publish the image (Upload your tagged image to the repository)
docker push username/repository:tag
docker push parisadocker/get-started:part2

## Pull and run the image from the remote repository
docker run -p 4000:80 username/repository:tag
docker run -p 4000:80 parisadocker/get-started:part2


## Get all information about container in Json format
## in case of db the "IPAddress": "192.168.232.180" is important
docker container inspect 6b0ef4a4c0bfdd5c7acc6093dccca3635198f3c0dc3be9e7039c8a414c8a0c22


## delete container
docker container rm container-ID

## connect to the container sqlserver instance


## read the log file of the container
docker container logs d90f7496f80f

## get bash shell of container
docker container exec -it 74094f270523 /bin/bash


## execute command on container
docker container exec -it 74094f270523 ls


## Run your new load-balanced app
## Before we can use the docker stack deploy command we first run:
docker swarm init

## docker swarm join --token SWMTKN-1-55sr3yrw0xp68usn7vm5qjwp259qmde13drzcc41t4t2c61v4p-afvsydrk1l88u0173g1f4wi6y 192.168.65.3:2377

## You need to give your app a name. Here, it is set to getstartedlab
## and Scale the app with changing the replicas in file
docker stack deploy -c docker-compose.yml getstartedlab

## Get the service ID for the one service in our application:
docker service ls
## laternatively
docker stack services getstartedlab


## List the tasks for your service:
docker service ps getstartedlab_web
docker container ls -q

## To view all tasks of a stack, you can run docker stack ps followed by your app name
docker stack ps getstartedlab


## Take down the app and the swarm
## Take the app down with docker stack rm
docker stack rm getstartedlab

## Take down the swarm
docker swarm leave --force



