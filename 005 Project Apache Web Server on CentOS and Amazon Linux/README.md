# Project 5 : Setup HTTPD Web Server Docker Container with Custom Page on CentOS or Amazon Linux 2 and Access Through Public IP Custom Port.

# Step 1: Pull the CentOS7
  docker pull centos:7


# Step 2: Create a Docker Container
docker run -d --name centos7 -p 80:80 --privileged=true centos:7 /usr/sbin/init

# Step 3: Install HTTPD (Apache)
## For CentOS:

  yum install httpd -y


# Step 4: Start HTTPD Service
  systemctl start httpd

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


# Step 6: Access Through Public IP on Custom Port
curl ifconfig.me

# Final Step: Once you have the public IP address, you can access your custom web page by entering the IP address followed by the custom port in a web browser:

# 🟦🟦🟦🟦🟦🟦 GOOD NEWS 🟦🟦🟦🟦🟦🟦🟦

# Participate **100 Day Challenge || Zero to Job || Cloud Engineer ||** 

# More Detailes: Visit https://cloud.techmahato.com

```diff
+ AWS Cloud Engineer is a trending skill for 2024 
```


