# Project 4 : Setup Apache Web Server Docker Container with Custom Page on Ubuntu 20.04 LTS and Access Through Public IP Default Port.
# Step 1: Pull the Ubuntu Image
docker pull ubuntu:20.04

# Step 2: Create a Docker Container
docker run -it --name apache-container -p 80:80 ubuntu:20.04 /bin/bash 
## This command will start a new container in interactive mode (-it), name it as apache-container, and execute the /bin/bash shell inside the container.

# Step 3: Install Apache
apt update

apt install -y apache2

# Step 4: Start Apache Service
service apache2 start

# Step 5: Create a Custom Web Page
    rm /var/www/html/index.html

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

# Step 6: Access Through Public IP
curl ifconfig.me

# Once you have the public IP address, you can access your custom web page by entering the IP address in a web browser:
http://your_public_ip_address




## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
### Participate Cloud & DevOps Pro. 100 Day Challenge & Win Rs. 5000/- Cash |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com
