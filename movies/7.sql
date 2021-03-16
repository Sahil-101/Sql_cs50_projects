--a SQL query to list all movies released in 2010 and their ratings,
--in descending order by rating.
--For movies with the same rating, order them alphabetically by title.

--order by multiple values

select title ,rating
from movies
join ratings on ratings.movie_id=movies.id
where rating!='NULL'
order by rating desc ,title asc;