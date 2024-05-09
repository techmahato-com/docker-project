Step 1: Create a Dockerfile
- Open a text editor or IDE of your choice.
- Create a new file named Dockerfile.
- Open the Dockerfile and paste the following content into it:
    '# Use the Ubuntu 20.04 base image
    FROM ubuntu:20.04

    '# Set environment variable to avoid interactive prompts during package installation
    ENV DEBIAN_FRONTEND=noninteractive

    '# Install necessary packages - apache, curl, git
    RUN apt-get update && apt-get install -y \
        apache2 \
        curl \
        git

    '# Clone the website source code from GitHub into the default Apache directory
    RUN git clone https://github.com/techmahato-com/sample-web.git /var/www/html/

    '# Expose port 80 for Apache
    EXPOSE 80

    '# Start Apache service
    CMD ["apache2ctl", "-D", "FOREGROUND"]

- Save the 'Dockerfile'

Step 2: Build the Docker image

- Open a terminal or command prompt.
- Navigate to the directory where the Dockerfile is located.
- Run the following command to build the Docker image:
    docker build -t my-apache-image .

Step 3: Run the Docker container

Once the Docker image is built, run the Docker container using the following command:
    docker run -d -p 80:80 my-apache-image

This command will run the Docker container in detached mode (-d), mapping port 80 of the host to port 80 of the container (-p 80:80). The container will be started using the my-apache-image image we built earlier.

Now you have a Docker container running an Apache server serving the website content from the cloned directory. You can access the website by visiting http://localhost/sample-web/ in your web browser. If you're running Docker on a remote server, replace localhost with the IP address or domain name of your server.