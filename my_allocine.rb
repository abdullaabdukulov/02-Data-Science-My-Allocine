-- Display all actors
requests['Display all actors'] = "SELECT * FROM actors;"

-- Display all genres
requests['Display all genres'] = "SELECT * FROM genres;"

-- Display the name and year of the movies
requests['Display the name and year of the movies'] = "SELECT mov_name, mov_year FROM movies;"

-- Display reviewer name from the reviews table
requests['Display reviewer name from the reviews table'] = "SELECT rev_name FROM reviews;"

-- Find the year when the movie American Beauty released
requests["Find the year when the movie American Beauty released"] = "SELECT mov_year FROM movies WHERE mov_name = 'American Beauty';"

-- Find the movie which was released in the year 1999
requests["Find the movie which was released in the year 1999"] = "SELECT mov_name FROM movies WHERE mov_year = 1999;"

-- Find the movie which was released before 1998
requests["Find the movie which was released before 1998"] = "SELECT mov_name FROM movies WHERE mov_year < 1998;"

-- Find the name of all reviewers who have rated 7 or more stars to their rating order by reviews rev_name
requests["Find the name of all reviewers who have rated 7 or more stars to their rating order by reviews rev_name"] = "SELECT DISTINCT rev_name FROM reviews WHERE rev_stars >= 7 ORDER BY rev_name;"

-- Find the titles of the movies with ID 905, 907, 917
requests["Find the titles of the movies with ID 905, 907, 917"] = "SELECT mov_name FROM movies WHERE mov_id IN (905, 907, 917);"

-- Find the list of those movies with year and ID which include the words Boogie Nights
requests["Find the list of those movies with year and ID which include the words Boogie Nights"] = "SELECT mov_id, mov_name, mov_year FROM movies WHERE mov_name LIKE '%Boogie Nights%';"

-- Find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'
requests["Find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'"] = "SELECT act_id FROM actors WHERE act_first_name = 'Woody' AND act_last_name = 'Allen';"

-- Find the actors with all information who played a role in the movies 'Annie Hall'
requests["Find the actors with all information who played a role in the movies 'Annie Hall'"] = "SELECT actors.* FROM actors JOIN movies_actors ON actors.act_id = movies_actors.act_id JOIN movies ON movies_actors.mov_id = movies.mov_id WHERE movies.mov_name = 'Annie Hall';"

-- Find the first and last names of all the actors who were cast in the movies 'Annie Hall', and the roles they played in that production
requests["Find the first and last names of all the actors who were cast in the movies 'Annie Hall', and the roles they played in that production"] = "SELECT actors.act_first_name, actors.act_last_name, movies_actors.role FROM actors JOIN movies_actors ON actors.act_id = movies_actors.act_id JOIN movies ON movies_actors.mov_id = movies.mov_id WHERE movies.mov_name = 'Annie Hall';"

-- Find the name of movie and director who directed a movie that casted a role as Sean Maguire
requests["Find the name of movie and director who directed a movie that casted a role as Sean Maguire"] = "SELECT movies.mov_name, movies.mov_director FROM movies JOIN movies_actors ON movies.mov_id = movies_actors.mov_id JOIN actors ON movies_actors.act_id = actors.act_id WHERE movies_actors.role = 'Sean Maguire';"

-- Find all the actors who have not acted in any movie between 1990 and 2000 (select only actor first name, last name, movie title and release year)
requests["Find all the actors who have not acted in any movie between 1990 and 2000 (select only actor first name, last name, movie title and release year)"] = "SELECT actors.act_first_name, actors.act_last_name, movies.mov_name, movies.mov_year FROM actors LEFT JOIN movies_actors ON actors.act_id = movies_actors.act_id LEFT JOIN movies ON movies_actors.mov_id = movies.mov_id WHERE (movies.mov_year < 1990 OR movies.mov_year > 2000 OR movies.mov_year IS NULL);"
