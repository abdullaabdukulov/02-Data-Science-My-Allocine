requests['Display all actors'] = "select * from actors;"
requests['Display all genres'] = "select * from genres;"
requests['Display the name and year of the movies'] = "select mov_title, mov_dt_rel from movies;"
requests['Display reviewer name from the reviews table'] = "select rev_name from reviews;"
requests["Find the year when the movie American Beauty released"] = "select mov_title from movies where mov_title='American Beauty';"
requests["Find the movie which was released in the year 1999"] = "select mov_title, mov_year from movies where mov_year='1999';"
requests["Find the movie which was released before 1998"] = "select mov_title, mov_year from movies where mov_year<='1998';"
requests["Find the name of all reviewers who have rated 7 or more stars to their rating order by reviews rev_name (it might have duplicated names :-))"] = "select DISTINCT rev_name, rev_stars from movies_ratings_reviews join reviews ON movies_ratings_reviews.rev_id = reviews.id where rev_stars >= 7;"
requests["Find the titles of the movies with ID 905, 907, 917"] = "select mov_title, id from movies where id in ('905', '907' , '917');"
requests["Find the list of those movies with year and ID which include the words Boogie Nights"] = "select id, mov_title, mov_year from movies where mov_title='Boogie Nights';"
requests["Find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'"] = "selectt id from actors where act_fname='Woody' and act_lname='Allen';"


requests["Find the actors with all information who played a role in the movies 'Annie Hall'"] = "selectt mov_id, mov_title, role from movies, movies_actors where mov_title='Annie Hall' and mov_id='911';"
requests["Find the first and last names of all the actors who were cast in the movies 'Annie Hall', and the roles they played in that production"] = "selectt act_fname, act_lname, mov_title, role from movies, movies_actors, actors where mov_title='Annie Hall' and mov_id='911';"


requests["Find the name of movie and director who directed a movies that casted a role as Sean Maguire"] = "selectt distinct directors.id, dir_fname, dir_lname, actors.id, act_fname, act_lname, role, movies.id, mov_title
from movies_actors, actors, directors, movies
where actors.id ='116' and directors.id='216' and movies.id='916' and role='Sean Maguire'"
requests["Find all the actors who have not acted in any movie between 1990 and 2000 (selectt only actor first name, last name, movie title and release year)"] = "selectT DISTINCT na.act_id, a.act_fname, a.act_lname, n.id,mov_title, n.mov_year
from movies n
join movies_actors na ON n.id = na.mov_id
join actors a ON na.act_id = a.id
where n.mov_year < '1990' OR n.mov_year > '2000';"
