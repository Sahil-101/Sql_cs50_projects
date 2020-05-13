.header on
SELECT title
from movies
join stars on stars.movie_id=movies.id join people on people.id=stars.person_id
where movies.id in (SELECT movie_id from stars where person_id in (SELECT id from people where name = "Helena Bonham Carter"))
and name ="Johnny Depp";