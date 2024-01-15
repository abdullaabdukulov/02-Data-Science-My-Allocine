<div class="markdown-body">
<p class="text-muted m-b-15">
</p><h1>My Allocine</h1>
<p>Remember to git add &amp;&amp; git commit &amp;&amp; git push each exercise!</p>
<p>We will execute your function with our test(s), please DO NOT PROVIDE ANY TEST(S) in your file</p>
<p>For each exercise, you will have to create a folder and in this folder, you will have additional files that contain your work. Folder names are provided at the beginning of each exercise under <code>submit directory</code> and specific file names for each exercise are also provided at the beginning of each exercise under <code>submit file(s)</code>.</p>
<hr>
<hr>
<table>
<thead>
<tr>
<th>My Allocine</th>
<th></th>
</tr>
</thead>
<tbody>
<tr>
<td>Submit directory</td>
<td>ex00</td>
</tr>
<tr>
<td>Submit file</td>
<td>my_allocine.rb</td>
</tr>
</tbody>
</table>
<h3>Description</h3>
<p>This project will tackle one of the main tool to work with <code>Data</code>. You've probably heard of this tool: SQL.</p>
<p>SQL (Structured Query Language) is a standardized programming language that's used to manage relational databases and perform various operations on the data in them. Initially created in the 1970s, SQL is regularly used not only by database administrators, but also by developers writing data integration scripts and data analysts looking to set up and run analytical queries.</p>
<p>The uses of SQL include modifying database table and index structures; adding, updating and deleting rows of data; and retrieving subsets of information from within a database for transaction processing and analytics applications. Queries and other SQL operations take the form of commands written as statements -- commonly used SQL statements include select, add, insert, update, delete, create, alter and truncate.</p>
<p>SQL became the de facto standard programming language for relational databases after they emerged in the late 1970s and early 1980s. Also known as SQL databases, relational systems comprise a set of tables containing data in rows and columns. Each column in a table corresponds to a category of data -- for example, customer name or address -- while each row contains a data value for the intersecting column.</p>
<p>The sample database represents some of the data storage and retrieval about a movie related industry. Most of the people loves to watch movie, and for all of them we are providing a sample information about the movie related questions coming to their mind. This design of database will make it easier to the movie lovers to know the curiosities about the movies.</p>
<p>In this project, you will have to work with a database containing multiple tables. Here a description of all the tables:</p>
<p>Description of tables:</p>
<p>actors:
id – this is a unique ID for each actor
act_fname – this is the first name of each actor
act_lname – this is the last name of each actor
act_gender – this is the gender of each actor</p>
<p>genres:
id – this is a unique ID for each genres
gen_title – this is the description of the genres</p>
<p>directors:
id – this is a unique ID for each director
dir_fname – this is the first name of the director
dir_lname – this is the last name of the director</p>
<p>movies:
id – this is the unique ID for each movie
mov_title – this column represents the name of the movie
mov_year – this is the year of making the movie
mov_time – duration of the movie i.e. how long it was running
mov_lang – the language in which movie was casted
mov_dt_rel – this is the release date of the movie
mov_rel_country – this is the name of the country(s) where the movie was released</p>
<p>movies_genres:
mov_id – this is the ID of the movie, which is referencing the mov_id column of the table movies
gen_id – this is the ID of each genres, which is referencing the gen_id column of the table genres</p>
<p>directors_movies:
dir_id – this is the ID for each director, which is referencing the dir_id column of the table directors
mov_id – this is the ID of the movie, which is referencing the mov_id column of the table movies</p>
<p>reviews:
id – this is the unique ID for each reviewer
rev_name – this is the name of the reviewer</p>
<p>movies_ratings_reviews:
mov_id –this is the ID of the movie, which is referencing the mov_id column of the table movies
rev_id – this is the ID of the reviewer, which is referencing the rev_id column of the table reviews
rev_stars – this is indicates how many stars a reviewer rated for a review of a movie
num_o_rating – this indicates how many ratings a movie achieved</p>
<p>movies_actors:
act_id – this is ID of actor, which is referencing the act_id column of actors table
mov_id – this is the ID of the movie, which is referencing the mov_id column of the table movies
role – this is the name of a character in the movie, an actor acted for that character</p>
<p><strong>Objectives</strong>
Write SQL requests. Simple, and some more complicated ;-)</p>
<p><strong>Submit your work</strong>
For automatic tests purposes, you will write your SQL requests inside a file named: <code>my_allocine.rb</code>.
It will be formatted like this:</p>
<pre class=" language-plain"><code class=" language-plain">requests[REQUEST_DESCRIPTION_1] = "SQL_REQUEST_1"
requests[REQUEST_DESCRIPTION_2] = "SQL_REQUEST_2"
</code></pre>
<p>We are providing the file with all the description, your mission will be to write all the corresponding sql request.</p>
<p>Here is the file:</p>
<pre class=" language-ruby"><code class=" language-ruby">requests<span class="token punctuation">[</span><span class="token string">'Display all actors'</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">"SELECT * FROM actors;"</span>
requests<span class="token punctuation">[</span><span class="token string">'Display all genres'</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">'Display the name and year of the movies'</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">'Display reviewer name from the reviews table'</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>

requests<span class="token punctuation">[</span><span class="token string">"Find the year when the movie American Beauty released"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find the movie which was released in the year 1999"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find the movie which was released before 1998"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find the name of all reviewers who have rated 7 or more stars to their rating order by reviews rev_name (it might have duplicated names :-))"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find the titles of the movies with ID 905, 907, 917"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find the list of those movies with year and ID which include the words Boogie Nights"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find the ID number for the actor whose first name is 'Woody' and the last name is 'Allen'"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>

requests<span class="token punctuation">[</span><span class="token string">"Find the actors with all information who played a role in the movies 'Annie Hall'"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find the first and last names of all the actors who were cast in the movies 'Annie Hall', and the roles they played in that production"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>

requests<span class="token punctuation">[</span><span class="token string">"Find the name of movie and director who directed a movies that casted a role as Sean Maguire"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
requests<span class="token punctuation">[</span><span class="token string">"Find all the actors who have not acted in any movie between 1990 and 2000 (select only actor first name, last name, movie title and release year)"</span><span class="token punctuation">]</span> <span class="token operator">=</span> <span class="token string">""</span>
</code></pre>
<p><strong>Tools</strong>
It's the time to improve your skills with Sqlite.</p>
<p>1# Download the database:</p>
<pre class=" language-plain"><code class=" language-plain">wget https://storage.googleapis.com/qwasar-public/track-claris/movies.db
</code></pre>
<p>2# Connect to the database with Sqlite:</p>
<pre class=" language-plain"><code class=" language-plain">$&gt;sqlite3 movies.db
SQLite version 3.32.3 2020-06-18 14:16:19
Enter ".help" for usage hints.
sqlite&gt;
</code></pre>
<p>3# Type in the command line to perform sql queries:</p>
<pre class=" language-plain"><code class=" language-plain">sqlite&gt; SELECT * FROM genres;
1001|Action
1002|Adventure
1003|Animation
1004|Biography
1005|Comedy
1006|Crime
1007|Drama
1008|Horror
1009|Music
1010|Mystery
1011|Romance
1012|Thriller
1013|War
sqlite&gt;
</code></pre>
<p>4# exit with: Ctrl + D</p>
<p><strong>TIPS</strong>
Research keywords SELECT, *, FROM, JOIN, WHERE, ...
SQL requests have a semi colon at the end.</p>

<p></p>
</div>
