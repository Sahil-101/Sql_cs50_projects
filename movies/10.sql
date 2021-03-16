--a SQL query to list the names of all people who have directed a movie that received a rating of at least 9.0.

select name
from people
join directors on directors.person_id=id join ratings on ratings.movie_id=directors.movie_id
where rating >=9;