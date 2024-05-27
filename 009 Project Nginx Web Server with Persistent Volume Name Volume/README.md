# 009 Project: Create Nginx Web Server with Persistent Volume called Named Volume
# Step 1: Create a Name Volume called My Volume
    docker volume create my_volume

# Step 2: Run an Nginx Container with the Named Volume:
    docker run -d --name my_nginx -v my_volume:/usr/share/nginx/html -p 8080:80 nginx

# Step 3: Add a File to the Volume:
    echo "<h1>Hello from Docker Volume</h1>" | sudo tee /var/lib/docker/volumes/my_volume/_data/index.html

# Access Nginx: 
Open a web browser and go to http://localhost:8080 to see the message.


```


## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
## Participate 100 Day Challenge & Win Rs. 5000/- Cash | Cloud & DevOps Pro. Personal Training |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com

