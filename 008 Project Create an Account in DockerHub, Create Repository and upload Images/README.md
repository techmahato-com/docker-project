# Project 8 :  How to Create an Account in DockerHub, Create Repository and upload Images.
# Step 1: Create the index.html File
    mkdir ~/nginx_html
    cd ~/nginx_html
    vi index.html
### Add below code
   
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tech Mahato - DevOps Training</title>
    </head>
    <body>
        <h1>Welcome to Tech Mahato DevOps Training</h1>
        <p>Tech Mahato India #1 Cloud & DevOps Training YouTube Channel in Hindi.</p>
    </body>
    </html>

# Step 2: Build a Custom Docker Image
## Create a Dockerfile in the same directory as your index.html file:
    vi Dockerfile
### add below code
    FROM nginx:latest

    # Copy custom index.html to Nginx default document root
    COPY index.html /usr/share/nginx/html/index.html
## Build the Docker image from the Dockerfile:
    docker build -t custom-nginx .

# Step 3: Create an Account in DockerHub and Create Repository
- Go to https://hub.docker.com and sign up for an account if you haven't already.
- Once logged in, navigate to the Docker Hub dashboard.
- Click on the "Create Repository" button.
- Enter a name for your repository and choose whether it should be public or private.
- Click on "Create".

# Step 4: Tag and Push Images
## Tag your custom image with the repository name and tag:
    docker tag custom-nginx techmahato/nginx-ubuntu

## Log in to Docker Hub:
    docker login

## Push the tagged image to Docker Hub:
    docker push techmahato/nginx-ubuntu

# Step 5: Check the Repository
- Visit your Docker Hub profile and navigate to your repositories to verify that the image has been successfully uploaded.

# Step 6: Create a Docker Container from newly uploaded Image in Repository.
## Pull the image from Docker Hub:
    docker pull techmahato/nginx-ubuntu

## List all images to verify that the image has been successfully pulled:
    docker images

## Run the container in detached mode:
    docker run -it -d techmahato/nginx-ubuntu

## List running containers to verify that the container is running:
    docker ps

## If you want to access the container interactively, you can do so by executing an interactive shell:
    docker exec -it <container_id> bash



## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
### Participate Cloud & DevOps Pro. 100 Day Challenge & Win Rs. 5000/- Cash |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com
