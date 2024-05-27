# How to check if the docker service is running or not?
sudo systemctl status docker

# How to stop, start and enable docker services?
sudo systemctl stop docker
sudo systemctl start docker
sudo systemctl enable docker

# How to check Docker Version?
docker --version

# How to check Detailed Information About Docker?
docker info

# How to check available docker images in the local system?
docker images

# How to check Docker Image on Docker Registry?
docker search <image_name>

# How to pull Docker Image from Docker Registry to Local Registry?
docker pull <image_name>

# How to Run Docker Containers from Local Registry and Docker Remote Registry?
docker run <image_name>

# How to Check Running Containers?
docker ps

# How to Check Running and Stopped Containers?
docker ps -a

# How to login and exit from a container?
docker exec -it <container_id> /bin/bash

# How to give a custom container name?
docker run --name <custom_name> <image_name>

# How to Run Containers in Detached Mode?
docker run -d <image_name>

# How to Run a Container in a Custom Port?
docker run -p <host_port>:<container_port> <image_name>

# How to stop a running container?
docker stop <container_id>

# How to start a stopped container?
docker start <container_id>

# How to remove a container?
docker rm <container_id>

# How to remove an image?
docker rmi <image_id>

# How to display logs of a container?
docker logs <container_id>

# How to inspect a container?
docker inspect <container_id>

# How to inspect an image?
docker image inspect <image_name>

# How to execute a command inside a running container?
docker exec <container_id> <command>



## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
### Participate Cloud & DevOps Pro. 100 Day Challenge & Win Rs. 5000/- Cash |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com