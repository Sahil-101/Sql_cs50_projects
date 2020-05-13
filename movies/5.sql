.header on

--like functiones

--(one question pattern which i thought)
--select title , year from movies where title != "Harry Potter and the Untold Stories of Hogwarts" and lower(title) like "harry potter and the%"

--(other one)
select title,year from movies where lower(title) like "%harry potter%" order by year;