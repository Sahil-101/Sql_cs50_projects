--group by usage

select name
from people
join stars on people.id=stars.person_id join movies on stars.movie_id=movies.id
where year=2004 group by name
order by birth;

