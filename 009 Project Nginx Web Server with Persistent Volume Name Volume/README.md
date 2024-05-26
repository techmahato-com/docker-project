# 009 Project: Create Nginx Web Server with Persistent Volume called Named Volume
# Step 1: Create a Name Volume called My Volume
    docker volume create my_volume

# Step 2: Run an Nginx Container with the Named Volume:
    docker run -d --name my_nginx -v my_volume:/usr/share/nginx/html -p 8080:80 nginx

# Step 3: Add a File to the Volume:
echo "<h1>Hello from Docker Volume</h1>" | sudo tee /var/lib/docker/volumes/my_volume/_data/index.html

# Access Nginx: Open a web browser and go to http://localhost:8080 to see the message.


```

# 🟦🟦🟦🟦🟦🟦 GOOD NEWS 🟦🟦🟦🟦🟦🟦🟦

# Participate **100 Day Challenge || Zero to Job || Cloud Engineer ||** 

# Participate Zero to Job | 100 Day Challenge | Cloud & DevOps Pro. | Personal Training |
Ask Arbind Sir | WhatsApp 7003967266
# More Detailes: Visit https://cloud.techmahato.com

```diff
+ AWS Cloud Engineer is a trending skill for 2024 

```