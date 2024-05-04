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

Absolutely! Here's the revised set of steps including the creation of the index.html file and building a custom Docker image:

Step 1: Create the index.html File

Create a folder where you will store the index.html file. You can choose any location on your system. For example, let's create a folder named nginx_html in the user's home directory:
bash
Copy code
mkdir ~/nginx_html
Navigate to the newly created folder:
bash
Copy code
cd ~/nginx_html
Create the index.html file using a text editor. For example:
bash
Copy code
nano index.html
Inside the text editor, create a simple HTML page. Here's an example:
html
Copy code
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Custom Web Page</title>
</head>
<body>
    <h1>Welcome to My Custom Web Page</h1>
    <p>This is a custom web page served by Nginx web server.</p>
</body>
</html>
Save the file and exit the text editor.
Step 2: Build a Custom Docker Image

Create a Dockerfile in the same directory as your index.html file:
Dockerfile
Copy code
FROM nginx:latest

# Copy custom index.html to Nginx default document root
COPY index.html /usr/share/nginx/html/index.html
Build the Docker image from the Dockerfile:
bash
Copy code
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


