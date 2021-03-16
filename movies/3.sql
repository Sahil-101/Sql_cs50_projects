-- a SQL query to list the titles of 
-- all movies with a release date on or after 2018, in alphabetical order.
.header on
select count(*) title from movies where year>=2018;