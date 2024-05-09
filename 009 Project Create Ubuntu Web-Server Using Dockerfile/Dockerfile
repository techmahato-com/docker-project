# Use the Ubuntu 20.04 base image
FROM ubuntu:20.04

# Set environment variable to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages - apache, curl, git
RUN apt-get update && apt-get install -y \
    apache2 \
    curl \
    git

# Clone the website source code from GitHub into a new directory
RUN git clone https://github.com/techmahato-com/sample-web.git /var/www/html/sample-web/

# Expose port 80 for Apache
EXPOSE 80

# Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]

