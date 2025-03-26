# Docker-learning 
Docker Setup for debian

## Resource 
* https://docs.docker.com/get-started/docker-overview/#docker-objects
* https://docs.docker.com/engine/install/
* https://docs.docker.com/engine/install/debian/

## Add Docker's official GPG key:
```
sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

echo "#################################"
## install docker 
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

## check docker status
sudo systemctl status docker
```

## run the hello-world image
`sudo docker run hello-world`

## list all docker images
`sudo docker images`

## show all running container
`sudo docker ps`

## show all container running/stopped
`sudo  docker ps -a`

## run docker inspect to get container info <test is conatiner name>
`sudo docker inspect test`

## docker log
`sudo docker logs <image-name>`

## stop docker container with name
`sudo docker stop <conatiner-name or id>`

## remove  container
`sudo docker rm <conatiner-names or id>`

## remove  container images
`sudo docker rmi <image-name or id>`

## build your own conatiner
`sudo docker build -t <image-name> . `

## run the docker container
`sudo docker run --name test <image-name> `

## run the docker container for nginx for test
`sudo docker run --name web01 -d -p 8080:80 nginx`

## run the docker container for mysql
`sudo docker run --name mydb -v /tmp/mysql:/var/lib/mysql -P -e MYSQL_ROOT_PASSWORD=mydb -d mysql`


## run the docker exec command to access container
`sudo docker exec -it <conatiner-name> bash`

## Docker volume COMMAND 
```
sudo docker volume
Commands:
  create      Create a volume
  inspect     Display detailed information on one or more volumes
  ls          List volumes
  prune       Remove unused local volumes
  rm          Remove one or more volumes
```
## list docker volumes 
`sudo docker volume ls`

## create docker volume
`sudo docker volume create <name>`

## docker commad options
* `-e = to  export variable`
* `-d =  run in the background`
* `-p = used to map the port i.e 8081:80 map host port 8081 to container port 80`
* `-P = map any of available port of host to exposed container port`
* `-v = to map the volume and bind mounts to container`
* `--privileged = Starting a container like this will give the container full access to the host's devices`
* `--name  give a userdefined name to container`

