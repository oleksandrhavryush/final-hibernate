# Project Description

## Overview
This project demonstrates the integration of a Java application with both relational databases (MySQL) and Redis, a popular in-memory data store. It fetches data from the MySQL database, transforms it, and then stores it in Redis for caching purposes. The main focus is on comparing the performance of retrieving data from both MySQL and Redis.

## Components

### Java Classes
- **Main**: Contains the main method and orchestrates the process. It fetches data from the database, transforms it, and pushes it to Redis. It also performs performance testing by retrieving data from both MySQL and Redis.
- **CityDAO**: A Data Access Object (DAO) class for handling database operations related to cities.
- **CountryDAO**: A DAO class for handling database operations related to countries.

### Domain Classes
- **City**: Represents a city entity.
- **Country**: Represents a country entity.
- **CountryLanguage**: Represents the language spoken in a country.

### Redis Classes
- **CityCountry**: Represents a city-country pair stored in Redis.
- **Language**: Represents a language spoken in a country.

### External Libraries
- **Jackson**: Used for JSON serialization and deserialization.
- **Hibernate**: Provides object-relational mapping for database operations.
- **Lettuce**: A Redis client for Java.

## Setup and Configuration

### MySQL Database
- Utilizes MySQL as the relational database.
- Database connection details such as URL, username, and password are configured in the `Main` class.

### Redis
- Requires Redis installed and running on the local machine.
- Ensure Redis is listening on the default port (6379).

## How to Run
- Clone the project repository.
- Open the project in an IDE (e.g., IntelliJ IDEA).
- Confirm that MySQL and Redis are operational.
- Execute the `Main` class.

## Performance Testing
- Includes performance testing to compare data retrieval times from MySQL and Redis.
- Measures the time taken to fetch data from both sources using randomly selected city IDs.

## Shutdown
- The `shutdown()` method in the `Main` class ensures proper cleanup of resources, including closing the Hibernate session factory and shutting down the Redis client.
