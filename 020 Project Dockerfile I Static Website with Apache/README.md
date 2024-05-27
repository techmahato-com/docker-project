# Project Dockerfile: Static Website with Apache: Build a Docker image for a static website served by Apache.

# Step 1: Set Up Project Structure
Create the following directory structure:

        apache-server/
        │
        ├── website/
        │   ├── index.html
        │
        ├── Dockerfile
        └── README.md

# Step 2: Write HTML File
In the website directory, create a simple HTML file.

    vi website/index.html

Past code

    <!DOCTYPE html>
    <html>
    <head>
        <title>Hello Docker</title>
    </head>
    <body>
        <h1>Hello, Docker!</h1>
    </body>
    </html>

# Step 3: Write Dockerfile
Create a Dockerfile to define the Docker image build process.

    vi Dockerfile

Paste Code

    # Use official Apache image as base image
    FROM httpd:2.4

    # Copy website files to the container
    COPY website/ /usr/local/apache2/htdocs/

# Step 4: Build Docker Image
Open a terminal, navigate to the project directory, and build the Docker image.

    docker build -t apache-server .

# Step 5: Run Docker Container
Run a container from the built image.

    docker run -d --name apache-container -p 80:80 apache-server

# Step 6: Test Apache Server
Open a web browser and visit http://localhost to see the static website served by Apache.

## 🟦🟦🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦🟦🟦🟦
## Participate Zero to Job 100 Day Challenge | Cloud & DevOps Pro. Personal Training |
Ask Arbind Sir | WhatsApp 8100011825
## More Detailes: Visit https://devops.techmahato.com


