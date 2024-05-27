# Project Docker Storage Persistent REdis Data
Redis is an in-memory data structure store, used as a database, cache, and message broker. This project shows how to use bind mounts to persist Redis data, making sure the data is available after container restarts.

# Step 1: Create a Directory for Bind Mount
    mkdir -p /my/local/redis-data

# Step 2: Run a Redis Container with Bind Mount
    docker run -d --name my_redis -v /my/local/redis-data:/data redis

# Step 3: Add Data to Redis
## Connect to the Redis container:
    docker exec -it my_redis redis-cli

## Set a key-value pair:
    SET mykey "Hello, Redis!"

## Get the value to verify:
    GET mykey

## Exit the Redis CLI:
    exit


# Step 4: Remove and Recreate the Redis Container
    docker stop my_redis
    docker rm my_redis
    docker run -d --name my_redis -v /my/local/redis-data:/data redis

# Step 5: Verify Data Persistence
## Connect to the Redis container:
    docker exec -it my_redis redis-cli

## Get the value to verify persistence:
    GET mykey

You should see "Hello, Redis!".

## Exit the Redis CLI:
    exit

## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
### Participate Cloud & DevOps Pro. 100 Day Challenge & Win Rs. 5000/- Cash |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com