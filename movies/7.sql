--order by multiple values

select title ,rating
from movies
join ratings on ratings.movie_id=movies.id
where rating!='NULL'
order by rating desc ,title asc;