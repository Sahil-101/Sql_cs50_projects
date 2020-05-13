select name
from people
join directors on directors.person_id=id join ratings on ratings.movie_id=directors.movie_id
where rating >=9;