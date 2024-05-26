# Project Docker Network: Create a simple bridge network and connect containers to it.
By following these step-by-step instructions, you'll gain hands-on experience with Docker bridge networking. Feel free to explore additional Docker networking features and commands to deepen your understanding further. Happy practicing!

# Create a Bridge Network:
    docker network create my_bridge_network

# Run a Nginx Container on the Bridge Network:
    docker run -d --name nginx_container --network my_bridge_network nginx

# Run an Alpine Container on the Same Bridge Network:
    docker run -it --name alpine_container --network my_bridge_network alpine sh

This command opens an interactive shell inside the Alpine container.

# Verify Connectivity:
Inside the Alpine container, try pinging the Nginx container:

    ping nginx_container

You should see successful ping responses if connectivity is established.

# List Available Networks:
    docker network ls
# Connect an Existing Container to the Bridge Network:
Connect an existing container named existing_container to the bridge network my_bridge_network:
    docker network connect my_bridge_network existing_container

# Inspect the Bridge Network:
    docker network inspect my_bridge_network
This command will display detailed information about the bridge network, including connected containers.

# Stop and Remove Containers:
    docker stop nginx_container alpine_container existing_container
    docker rm nginx_container alpine_container existing_container

# Remove the Bridge Network:
    docker network rm my_bridge_network


# 🟦🟦🟦🟦🟦🟦 GOOD NEWS 🟦🟦🟦🟦🟦🟦🟦

# Participate Zero to Job | 100 Day Challenge | Cloud & DevOps Pro. | Personal Training |
Ask Arbind Sir | WhatsApp 7003967266
# More Detailes: Visit https://devops.techmahato.com