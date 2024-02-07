# 02 Data Science My Allocine

# Task

The task involves writing SQL queries for a movie database to retrieve specific information based on given requirements.

# Description

The provided task requires writing SQL queries to extract various pieces of information from a movie database. The database contains tables for actors, movies, genres, reviews, and movies_actors, among others. The queries cover a range of tasks, from simple display requests to more complex searches involving multiple tables.

# Installation

1. Download the database:

   ```
   wget https://storage.googleapis.com/qwasar-public/track-claris/movies.db
   ```

2. Connect to the database with SQLite:

   ```
   $> sqlite3 movies.db
   ```

3. Type in the command line to perform SQL queries:

   ```
   sqlite> SELECT * FROM table_name;
   ```

# Usage

1. **Display all actors:**

   ```
   SELECT * FROM actors;
   ```

2. **Display all genres:**

   ```
   SELECT * FROM genres;
   ```

3. **Display the name and year of the movies:**

   ```
   SELECT mov_name, mov_year FROM movies;
   ```

   ...

   (Repeat for other queries)