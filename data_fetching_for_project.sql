use movies_collection;
show tables;
-- data fetching for individual tables
select * from actors;
select * from authors;
select * from directors;
select * from editor;
select * from genres;
select * from movieactors;
select * from movies;
select * from moviestudios;
select * from producer;
select * from soundtracks;
select *from studios;

-- RELATED DATA FETCHING BY USING INNER JOIN
select *
from authors as au inner join movies as m
on au.MovieNUM=m.movieNUM;

select AU.AUthorID,AU.FNAME,AU.LNAME,M.TITLE
from authors as au INNER join movies as M
ON AU.MOVIENUM=M.MOVIENUM;


-- RIGHT JOIN
select AU.AUthorID,AU.FNAME,AU.LNAME,M.TITLE
from authors as au RIGHT join movies as M
ON AU.MOVIENUM=M.MOVIENUM;


-- LEFT JOIN

select AU.AUthorID,AU.FNAME,AU.LNAME,M.TITLE
from authors as au LEFT join movies as M
ON AU.MOVIENUM=M.MOVIENUM;

select * 
from movies as m inner join directors as d
on m.DirectorID=d.DirectorID;

select m.title,m.releaseyear,m.duration,m.rating,
d.directorid,d.fname,d.lname,d.contact
from movies as m inner join directors as d
on m.DirectorID=d.DirectorID
where Duration > "01:35:01";


