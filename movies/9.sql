--a SQL query to list the names of all people who starred in a movie released in 2004,
-- ordered by birth year.


--group by usage

select name
from people
join stars on people.id=stars.person_id join movies on stars.movie_id=movies.id
where year=2004 group by name
order by birth;

