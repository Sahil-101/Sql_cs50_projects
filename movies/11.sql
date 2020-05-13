select title
from movies
join ratings on ratings.movie_id=movies.id 
join stars on stars.movie_id = movies.id 
join people on people.id=stars.person_id
where name="Chadwick Boseman"
order by rating desc
limit 0,5;