# Project Dockerfile: Build a Docker image for a simple Node.js web application.
These projects provide hands-on experience with creating Dockerfiles for simple Node.js web application

# Step 1: Set Up Project Structure
Create the following directory structure:

        node-app/
        │
        ├── app/
        │   ├── index.js
        │
        ├── Dockerfile
        ├── package.json
        └── README.md

Step 2: Write Node.js Application Code
In the app directory, create a simple Node.js web application.

Go to Project Directory
    cd node-app

Create Application Files

    vi app/index.js

        const express = require('express');
        const app = express();

        app.get('/', (req, res) => {
        res.send('Hello, Docker!');
        });

        const port = 3000;
        app.listen(port, () => {
        console.log(`App running on http://localhost:${port}`);
        });


# Step 3: Define Dependencies
Create a package.json file listing the dependencies for the Node.js application.

    vi package.json


        {
        "name": "node-app",
        "version": "1.0.0",
        "description": "A simple Node.js app",
        "main": "app/index.js",
        "scripts": {
            "start": "node app/index.js"
        },
        "dependencies": {
            "express": "^4.17.1"
        }
        }

# Step 4: Write Dockerfile
Create a Dockerfile to define the Docker image build process.

    vi Dockerfile

Past below code

    # Use official Node.js image as base image
    FROM node:14

    # Set working directory in the container
    WORKDIR /usr/src/app

    # Copy package.json and package-lock.json
    COPY package*.json ./

    # Install dependencies
    RUN npm install

    # Copy application code
    COPY . .

    # Expose port 3000
    EXPOSE 3000

    # Define command to run the application
    CMD ["npm", "start"]

# Step 5: Build Docker Image
Open a terminal, navigate to the project directory, and build the Docker image.

    docker build -t node-app .

# Step 6: Run Docker Container
Run a container from the built image.

    docker run -d --name node-container -p 3000:3000 node-app

# Step 7: Test Node.js Application
Open a web browser and visit http://localhost:3000 to see the Node.js application running inside the Docker container.


## 🟦🟦🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦🟦🟦🟦
## Participate Zero to Job 100 Day Challenge | Cloud & DevOps Pro. Personal Training |
Ask Arbind Sir | WhatsApp 8100011825
## More Detailes: Visit https://devops.techmahato.com


