# Project Description

## Overview
This project showcases a comprehensive integration of a Java application with MySQL, a relational database, and Redis, a high-performance in-memory data store. The primary objective is to demonstrate efficient data retrieval by leveraging Redis for caching frequently accessed data, and to compare the performance with traditional MySQL queries.

## Key Features

### Java Classes
- **Main**: The central orchestration class, responsible for fetching data from MySQL, transforming it, and storing it in Redis. It also performs performance benchmarking to highlight the differences between MySQL and Redis data retrieval.
- **CityDAO**: A Data Access Object (DAO) for managing city-related database operations.
- **CountryDAO**: A DAO for handling operations related to countries.

### Domain Classes
- **City**: Represents the city entity.
- **Country**: Represents the country entity.
- **CountryLanguage**: Represents the language spoken in a country.

### Redis Classes
- **CityCountry**: Represents a city-country pair stored in Redis.
- **Language**: Represents a language spoken in a country.

### External Libraries
- **Jackson**: Utilized for JSON serialization and deserialization, ensuring smooth data transformation.
- **Hibernate**: Facilitates object-relational mapping for seamless database operations.
- **Lettuce**: A robust Redis client for Java, enabling efficient interaction with the Redis server.

## Setup and Configuration

### MySQL Database
- The application connects to a MySQL database with configuration details (URL, username, password) specified in the `Main` class.
- Includes a database schema encompassing tables for countries, cities, and languages.

### Redis
- Requires Redis to be installed and running on the local machine, typically on the default port (6379).

## How to Run
1. Clone the project repository.
2. Open the project in your preferred IDE (e.g., IntelliJ IDEA).
3. To run Redis and MySQL as Docker containers, use the following commands:
  - `docker run --name mysql -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root`
  - `docker run -d --name redis -p 6379:6379 redis:latest `
5. Execute the `Main` class to start the application.

## Performance Testing
- The project includes a performance test suite to compare data retrieval times between MySQL and Redis.
- It measures the time taken to fetch data using randomly selected city IDs, providing insights into the efficiency gains achieved by using Redis.

## Resource Management
- The `shutdown()` method in the `Main` class ensures proper cleanup of resources, including closing the Hibernate session factory and shutting down the Redis client, maintaining optimal resource management.

## Additional Information
- The project is Docker-ready, enabling easy setup and deployment of MySQL and Redis servers in containerized environments.
- Redis Insight can be optionally used to visualize and manage data stored in Redis, offering a user-friendly interface for deeper insights.
