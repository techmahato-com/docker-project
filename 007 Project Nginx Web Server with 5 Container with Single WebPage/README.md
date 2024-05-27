Project 7 : Setup 5 Nginx Web Server Docker Container on Custom Port with Nginx Official Docker Image but Same Custom Web Page.
# Step 1: Create a Folder and Navigate to it
    mkdir ~/nginx_html
    cd ~/nginx_html

# Step 2: Create the index.html File
    vi index.html

### Add Below Code

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

# Step 3: Pull the Nginx Docker Image
    docker pull nginx:latest

# Step 4: Create Multiple Docker Containers with Mounted Volumes
    docker run -d -p 8081:80 --name nginx-container1 -v ~/nginx_html:/usr/share/nginx/html nginx:latest

    docker run -d -p 8082:80 --name nginx-container2 -v ~/nginx_html:/usr/share/nginx/html nginx:latest

    docker run -d -p 8083:80 --name nginx-container3 -v ~/nginx_html:/usr/share/nginx/html nginx:latest

    docker run -d -p 8084:80 --name nginx-container4 -v ~/nginx_html:/usr/share/nginx/html nginx:latest

    docker run -d -p 8085:80 --name nginx-container5 -v ~/nginx_html:/usr/share/nginx/html nginx:latest

Notes:
- -v ~/nginx_html:/usr/share/nginx/html mounts the local folder ~/nginx_html into the /usr/share/nginx/html directory inside each Nginx container.
- Each container is started in detached mode (-d), maps a different custom port of the host to port 80 of the container (-p <custom_port>:80), and is named accordingly.

# Step 5: Access Each Nginx Web Server
    http://your_public_ip_address:8081
    http://your_public_ip_address:8082
    http://your_public_ip_address:8083
    http://your_public_ip_address:8084
    http://your_public_ip_address:8085

# Step 6: Delete the Docker Containers (Optional)
    docker rm -f nginx-container1 nginx-container2 nginx-container3 nginx-container4 nginx-container5



## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
### Participate Cloud & DevOps Pro. 100 Day Challenge & Win Rs. 5000/- Cash |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com

