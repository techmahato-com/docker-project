# Project 6 steps to set up an Nginx web server Docker container on a custom port using the official Nginx Docker image

# Step 1: Pull the Nginx Docker Image
docker pull nginx:latest

# Step 2: Create a Docker Container
docker run -d -p 8080:80 --name nginx-container nginx:latest

notes: This command will start the container in detached mode (-d), map port 8080 of the host to port 80 of the container (-p 8080:80), and name the container as nginx-container.

# Step 3: Access Nginx Web Server
http://your_public_ip_address:8080

Notes: 8080 port should be open from Security Group.

# Step 4: Verify Nginx Configuration (Optional)
docker exec -it nginx-container /bin/bash
cd /etc/nginx/
ls

## You can also view the default HTML file served by Nginx:
You can also view the default HTML file served by Nginx:

# Step 5: Customize Nginx Configuration (Optional)
vi custom.conf
    server {
        listen 8080;
        server_name localhost;

        location / {
            root /usr/share/nginx/html;
            index index.html;
        }
    }
# Step 6: Mount Custom Configuration
docker run -d -p 8080:8080 --name nginx-container -v /path/to/custom.conf:/etc/nginx/conf.d/custom.conf:ro nginx:latest

# Step 7: Prepare the index.html File
vi index.html
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

# Step 8: Copy the index.html File into the Container
docker cp /path/to/index.html nginx-container:/usr/share/nginx/html/index.html

# Step 9: Verify the File Copy
docker exec -it nginx-container /bin/bash
cd /usr/share/nginx/html/
ls

GOOD NEWS: If you want to become successful Cloud & DevOps Engineer, Visit https://devops.techmahato.com


