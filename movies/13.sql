select name
from people
join stars on people.id = stars.person_id
-- join movies on movies.id= stars.movie_id
where movie_id in (select movie_id from stars where person_id in
                    (select id from people where name ="Kevin Bacon" and birth=1958)
                  )
and name!="Kevin Bacon"