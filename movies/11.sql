--a SQL query to list the titles of the five highest rated movies (in order) that Chadwick Boseman starred in,
--starting with the highest rated.

select title
from movies
join ratings on ratings.movie_id=movies.id 
join stars on stars.movie_id = movies.id 
join people on people.id=stars.person_id
where name="Chadwick Boseman"
order by rating desc
limit 0,5;