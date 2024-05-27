# Project Dockerfile: Build a Docker image for a simple Java Spring Boot application.

# Step 1: Set Up Project Structure
Create the following directory structure:

        spring-boot-app/
        │
        ├── src/
        │   ├── main/
        │       ├── java/
        │       │   └── com/
        │       │       └── example/
        │       │           └── demo/
        │       │               └── DemoApplication.java
        │       └── resources/
        │           └── application.properties
        │
        ├── Dockerfile
        ├── pom.xml
        └── README.md

# Step 2: Write Spring Boot Application Code
Create a simple Spring Boot application.

    vi src/main/java/com/example/demo/DemoApplication.java

Past below code

    package com.example.demo;

    import org.springframework.boot.SpringApplication;
    import org.springframework.boot.autoconfigure.SpringBootApplication;
    import org.springframework.web.bind.annotation.GetMapping;
    import org.springframework.web.bind.annotation.RestController;

    @SpringBootApplication
    @RestController
    public class DemoApplication {

        public static void main(String[] args) {
            SpringApplication.run(DemoApplication.class, args);
        }

        @GetMapping("/")
        public String hello() {
            return "Hello, Docker!";
        }
    }

# Step 3: Define Dependencies
Ensure pom.xml includes Spring Boot dependencies.

    vi pom.xml

Paste Below Code

    <project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
        <modelVersion>4.0.0</modelVersion>
        <groupId>com.example</groupId>
        <artifactId>demo</artifactId>
        <version>0.0.1-SNAPSHOT</version>
        <packaging>jar</packaging>

        <name>demo</name>
        <description>Demo project for Spring Boot</description>

        <parent>
            <groupId>org.springframework.boot</groupId>
            <artifactId>spring-boot-starter-parent</artifactId>
            <version>2.5.4</version>
            <relativePath/> <!-- lookup parent from repository -->
        </parent>

        <dependencies>
            <dependency>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-starter-web</artifactId>
            </dependency>
            <dependency>
                <groupId>org.springframework.boot</groupId>
                <artifactId>spring-boot-starter-test</artifactId>
                <scope>test</scope>
            </dependency>
        </dependencies>

        <build>
            <plugins>
                <plugin>
                    <groupId>org.springframework.boot</groupId>
                    <artifactId>spring-boot-maven-plugin</artifactId>
                </plugin>
            </plugins>
        </build>
    </project>

Step 4: Write Dockerfile
Create a Dockerfile to define the Docker image build process.

    vi Dockerfile

Paste below Code

    # Use official Maven image to build the application
    FROM maven:3.8.1-openjdk-11 AS build
    WORKDIR /app
    COPY pom.xml .
    COPY src ./src
    RUN mvn clean package -DskipTests

    # Use official OpenJDK image to run the application
    FROM openjdk:11-jre-slim
    WORKDIR /app
    COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar
    EXPOSE 8080
    CMD ["java", "-jar", "app.jar"]


# Step 5: Build Docker Image
Open a terminal, navigate to the project directory, and build the Docker image.

    docker build -t spring-boot-app .

# Step 6: Run Docker Container
Run a container from the built image.

    docker run -d --name spring-boot-container -p 8080:8080 spring-boot-app

# Step 7: Test Spring Boot Application
Open a web browser and visit http://localhost:8080 to see the Spring Boot application running inside the Docker container.


## 🟦🟦🟦🟦 TECH MAHATO || Search on YouTube 🟦🟦🟦🟦
### Participate Cloud & DevOps Pro. 100 Day Challenge & Win Rs. 5000/- Cash |
Ask Arbind Sir || WhatsApp 8100011825 || More Detailes: Visit https://devops.techmahato.com


```diff
+ AWS Cloud & DevOps Engineer is a trending skill for 2024-25 
```
Know More About Future of Cloud & DevOps | Visit: https://podcast.techmahato.com

