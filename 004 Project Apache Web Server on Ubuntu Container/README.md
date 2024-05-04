# Step 1: Pull the Ubuntu Image
docker pull ubuntu:20.04

# Step 2: Create a Docker Container
docker run -it --name apache-container ubuntu:20.04 /bin/bash 
## This command will start a new container in interactive mode (-it), name it as apache-container, and execute the /bin/bash shell inside the container.

# Step 3: Install Apache
apt update
apt install -y apache2

# Step 4: Start Apache Service
service apache2 start

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

# Step 6: Access Through Public IP
curl ifconfig.me

# Once you have the public IP address, you can access your custom web page by entering the IP address in a web browser:
http://your_public_ip_address
