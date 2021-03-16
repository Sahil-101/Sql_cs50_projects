--a SQL query to determine the average rating of all movies released in 2012.

.header on
-- avg usage

--select count(*) ,avg(rating)
--from ratings , movies
--where movie_id=id and year=2012

select avg(rating) from ratings
join movies on ratings.movie_id=movies.id;

--select count(*) where year =2012

