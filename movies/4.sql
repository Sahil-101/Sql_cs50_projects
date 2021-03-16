-- a SQL query to determine the number of movies with an IMDb rating of 10.0.

.header on

--count func.

SELECT count(*) from ratings where rating=10;