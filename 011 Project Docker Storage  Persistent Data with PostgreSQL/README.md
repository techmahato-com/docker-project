# Project: Persistent Data with PostgreSQL
PostgreSQL is a powerful, open-source relational database. In this project, we use Docker volumes to persist PostgreSQL data outside the container, ensuring the data remains intact even if the container is removed and recreated.

# Step 1: Create a Directory for Bind Mount
    mkdir -p /my/local/postgresql-data

# Step 2: Run a PostgreSQL Container with Bind Mount
    docker run -d --name my_postgres -e POSTGRES_PASSWORD=root -v /my/local/postgresql-data:/var/lib/postgresql/data postgres

# Step 3: Access PostgreSQL Database
## Connect to the PostgreSQL container:
    docker exec -it my_postgres psql -U postgres

## Create a new database:
    CREATE DATABASE testdb;

## List all databases to verify:
    \l

## Exit the PostgreSQL shell:
    \q

# Step 4: Remove and Recreate the PostgreSQL Container
    docker stop my_postgres
    docker rm my_postgres
    docker run -d --name my_postgres -e POSTGRES_PASSWORD=root -v /my/local/postgresql-data:/var/lib/postgresql/data postgres

# Step 5: Verify Data Persistence
## Connect to the PostgreSQL container:
    docker exec -it my_postgres psql -U postgres

## List all databases to verify persistence:
    \l

You should see the testdb database.

## Exit the PostgreSQL shell:
    \q


```

# 🟦🟦🟦🟦🟦🟦 GOOD NEWS 🟦🟦🟦🟦🟦🟦🟦

# Participate Zero to Job | 100 Day Challenge | Cloud & DevOps Pro. | Personal Training |
Ask Arbind Sir | WhatsApp 7003967266
# More Detailes: Visit https://devops.techmahato.com