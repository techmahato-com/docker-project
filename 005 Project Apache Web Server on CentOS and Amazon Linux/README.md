# Project 5 : Setup HTTPD Web Server Docker Container with Custom Page on CentOS or Amazon Linux 2 and Access Through Public IP Custom Port.

# Step 1: Pull the CentOS or Amazon Linux Image
docker pull centos:latest
OR
docker pull amazonlinux:latest

# Step 2: Create a Docker Container
docker run -it --name httpd-container centos /bin/bash

OR

docker run -it --name httpd-container amazonlinux /bin/bash

# Step 3: Install HTTPD (Apache)
## For CentOS:
yum update
yum install httpd -y

## For Amazon Linux 2:
yum update
yum install httpd -y

# Step 4: Start HTTPD Service
service httpd start

# Step 5: Create a Custom Web Page
vi /var/www/html/index.html

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

# Step 6: Expose Custom Port
## Exit the container shell:
exit
## Commit the changes to create a new image:
docker commit httpd-container httpd-custom-page
## Now, you need to expose a custom port (e.g., 8080) when running the container:
docker run -d -p 8080:80 --name httpd-container httpd-custom-page /usr/sbin/httpd -DFOREGROUND

# Step 7: Access Through Public IP on Custom Port
curl ifconfig.me

# Final Step: Once you have the public IP address, you can access your custom web page by entering the IP address followed by the custom port in a web browser:

Good News: Know more about AWS Cloud & DevOps Engineer Pro Visit https://devops.techmahato.com

