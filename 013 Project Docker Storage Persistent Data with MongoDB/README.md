## Project Docker Storage: Persistent Data with MongoDB
MongoDB is a popular NoSQL database known for its flexibility and scalability. This project demonstrates how to persist MongoDB data using Docker volumes, ensuring the data is preserved across container lifecycles.

# Step 1: Create a Directory for Bind Mount
    mkdir -p /my/local/mongo-data

# Step 2: Run a MongoDB Container with Bind Mount
    docker run -d --name my_mongo -v /my/local/mongo-data:/data/db mongo

# Step 3: Access MongoDB Database
## Connect to the MongoDB container:
    docker exec -it my_mongo mongo

## Create a new database and collection:
    use testdb
    db.testcollection.insert({name: "John", age: 30})

## Show collections to verify:
    show collections

## Exit the Mongo shell:
    exit

# Step 4: Remove and Recreate the MongoDB Container
    docker stop my_mongo
    docker rm my_mongo
    docker run -d --name my_mongo -v /my/local/mongo-data:/data/db mongo

# Step 5: Verify Data Persistence
## Connect to the MongoDB container:
    docker exec -it my_mongo mongo

## Use the database and verify the collection:
    use testdb
    db.testcollection.find()

You should see the document with {name: "John", age: 30}.

## Exit the Mongo shell:
    exit


# 🟦🟦🟦🟦🟦🟦 GOOD NEWS 🟦🟦🟦🟦🟦🟦🟦

# Participate Zero to Job | 100 Day Challenge | Cloud & DevOps Pro. | Personal Training |
Ask Arbind Sir | WhatsApp 7003967266
# More Detailes: Visit https://devops.techmahato.com


