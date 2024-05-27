# Project Dockerfile: Build a Docker image for a Flask web application.
This project provides hands-on experience with creating a Dockerfile for a Flask web application. By following these steps, you'll learn how to containerize a Python application using Docker and run it as a Docker container. Feel free to expand upon this project by adding more features to the Flask application or exploring additional Dockerfile instructions.

# Step 1: Set Up Project Structure
Create the following directory structure:

        flask-app/
        │
        ├── app/
        │   ├── __init__.py
        │   └── views.py
        │
        ├── Dockerfile
        ├── requirements.txt
        └── README.md

# Step 2: Write Flask Application Code
In the app directory, create a simple Flask application.

    cd flask-app

.

    vi app/__init__.py

.

    from flask import Flask

    app = Flask(__name__)

    from app import views

.
    vi app/views.py
.    

    from app import app

    @app.route('/')
    def index():
        return 'Hello, Docker!'

# Step 3: Define Dependencies
Create a requirements.txt file listing the dependencies for the Flask application.

    vi requirements.txt
.    
    
    Flask==2.0.2


# Step 4: Write Dockerfile
Create a Dockerfile to define the Docker image build process.

    vi Dockerfile
.    

        # Use official Python image as base image
        FROM python:3.9

        # Set working directory in the container
        WORKDIR /usr/src/app

        # Copy requirements file
        COPY requirements.txt .

        # Install dependencies
        RUN pip install --no-cache-dir -r requirements.txt

        # Copy application code
        COPY app/ .

        # Expose port 5000
        EXPOSE 5000

        # Define command to run the application
        CMD ["python", "app/__init__.py"]

# Step 5: Build Docker Image
Open a terminal, navigate to the project directory, and build the Docker image.
    docker build -t flask-app .

# Step 6: Run Docker Container
Run a container from the built image.

    docker run -d --name flask-container -p 5000:5000 flask-app

# Step 7: Test Flask Application
Open a web browser and visit http://localhost:5000 to see the Flask application running inside the Docker container.



## 🟦🟦🟦🟦🟦🟦 GOOD NEWS 🟦🟦🟦🟦🟦🟦🟦
## Participate Zero to Job 100 Day Challenge | Cloud & DevOps Pro. Personal Training |
Ask Arbind Sir | WhatsApp 7003967266
## More Detailes: Visit https://devops.techmahato.com

