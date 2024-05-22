# Java MySQL-Redis Integration: Efficient Data Retrieval

This project demonstrates a comprehensive integration of a Java application with MySQL, a relational database, and Redis, a high-performance in-memory data store. The primary objective is to showcase efficient data retrieval by leveraging Redis for caching frequently accessed data and comparing the performance with traditional MySQL queries.

## Project Overview

The project encompasses several key features, including:

- **Java Classes:** The central orchestration class responsible for fetching data from MySQL, transforming it, and storing it in Redis. It also performs performance benchmarking to highlight the differences between MySQL and Redis data retrieval.
- **Domain Classes:** Representing the city, country, and language entities in the database.
- **Redis Classes:** Representing the city-country pair and language stored in Redis.
- **External Libraries:** Utilizes Jackson for JSON serialization and deserialization, Hibernate for object-relational mapping, and Lettuce as a robust Redis client for Java.

## Setup and Configuration

- **MySQL Database:** The application connects to a MySQL database with configuration details specified in the `Main` class.
- **Redis:** Requires Redis to be installed and running on the local machine, typically on the default port (6379).

## Getting Started

1. **Clone the Project Repository:** Clone the repository to your local machine.
2. **Open the Project:** Open the project in your preferred IDE (e.g., IntelliJ IDEA).
3. **Build the Docker Image for MySQL:** Execute the following command to build the Docker image named `my-db`:
    ```bash
    docker build -t my-db .
    ```
4. **Run the Docker Container for MySQL:** Execute the following command to run the Docker container using the `my-db` image. This will start the MySQL server and expose it on port 3306:
    ```bash
    docker run --name my-db -d -p 3306:3306 my-db
    ```
5. **Run the Docker Container for Redis:** Use the following command to run a Redis container. This will start the Redis server and expose it on port 6379:
    ```bash
    docker run -d --name redis -p 6379:6379 redis:latest
    ```
6. **Execute the Main Class:** Run the `Main` class to start the application.

Now you have two Docker containers running concurrently, one for MySQL and one for Redis. Your application can connect to both of these services as needed.


## Performance Testing

The project includes a performance test suite to compare data retrieval times between MySQL and Redis. It measures the time taken to fetch data using randomly selected city IDs, providing insights into the efficiency gains achieved by using Redis.

## Resource Management

The `shutdown()` method in the `Main` class ensures proper cleanup of resources, including closing the Hibernate session factory and shutting down the Redis client, maintaining optimal resource management.

## Additional Information

The project is Docker-ready, enabling easy setup and deployment of MySQL and Redis servers in containerized environments. Redis Insight can be optionally used to visualize and manage data stored in Redis, offering a user-friendly interface for deeper insights.
