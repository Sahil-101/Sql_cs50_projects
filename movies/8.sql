--neseted query
.header on

select name
from people
where id in(select person_id from stars where movie_id in (select id from movies where title = 'Toy Story'));
