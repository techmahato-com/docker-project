# Project: Bind Mount with MySQL: Launch Docker Container with Persistent Volume Bind Mount
This lab will guide you through creating a MySQL container using a bind mount, accessing the database to create a new database, deleting the container, and then recreating the container to verify the persistence of the database.

# Step 1: Create a Directory for Bind Mount
Create a directory on the host machine to use as the bind mount for MySQL data.

    mkdir -p /my/local/mysql-data

# Step 2: Run a MySQL Container with Bind Mount
Run a MySQL container using the bind mount created in the previous step.

    docker run -d --name my_mysql -e MYSQL_ROOT_PASSWORD=root -v /my/local/mysql-data:/var/lib/mysql mysql

# Step 3: Access MySQL Database
Access the MySQL database inside the container to create a new database.

## Connect to the MySQL container:

    docker exec -it my_mysql mysql -uroot -proot

## Create a new database:

    CREATE DATABASE testdb;

## Show all databases to verify:

    SHOW DATABASES;

You should see the testdb listed.
## Exit the MySQL shell:

    exit

# Step 4: Remove the MySQL Container
Stop and remove the MySQL container.

    docker stop my_mysql
    docker rm my_mysql

# Step 5: Recreate the MySQL Container with the Same Bind Mount
Recreate the MySQL container using the same bind mount to verify data persistence.

    docker run -d --name my_mysql -e MYSQL_ROOT_PASSWORD=root -v /my/local/mysql-data:/var/lib/mysql mysql

# Step 6: Verify Data Persistence

## Connect to the MySQL container:
    docker exec -it my_mysql mysql -uroot -proot

## Show all databases to verify persistence:

    SHOW DATABASES;

You should see the testdb database that you created earlier.

## Exit the MySQL shell:

    exit


## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
### Participate Cloud & DevOps Pro. 100 Day Challenge & Win Rs. 5000/- Cash |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com




