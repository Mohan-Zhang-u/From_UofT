select EF.number, EF.startDate, EF.endDate,EF.times,EF.numStudents, II.name
FROM ((Editions INNER JOIN offer on offer.editionId = Editions.id)
	as EF INNER JOIN Courses on EF.deptCode = Courses.deptCode
and EF.number = Courses.number) INNER JOIN (Teach INNER JOIN Instructors on Teach.instructorId = Instructors.id) as II on II.editionId=EF.id;














Editions INNER JOIN offer on offer.editionId = Editions.id
1.
select name
from "movie", "MovieExec"
where  movie.producerC="MovieExec".certN and title ='Star Wars';

this query is the name of Star Wars' producers.('note: original Star wars cannot find anything inside.)

     name     
--------------
 George Lucas
(1 row)

2.
select title, name
from movie, "MovieExec"
where movie.producerC="MovieExec".certN;

this query is title and name of producers who has a movie.

          title          |       name        
-------------------------+-------------------
 Titanic                 | James Cameron
 Who Framed Roger Rabbit | Stephen Spielberg
 Star Wars               | George Lucas
 Empire Strikes Back     | George Lucas
(4 rows)

3.
select name, address
into tempstar
from "MovieStar";

select name, address
into tempexec
from "MovieExec";

select tempstar.name, tempexec.name
from tempstar, tempexec
where tempstar.address = tempexec.address and tempstar.name != tempexec.name;

drop table tempexec, tempstar;

this query find all stars and producers that live together but they are not the same person.

    name    |    name    
------------+------------
 Jane Fonda | Ted Turner
(1 row)

4.
select *
into tempmovie
from movie
where title = 'Star Wars';

select name
from tempmovie, "MovieExec"
where tempmovie.producerC != "MovieExec".certN;

drop table tempmovie;

this query find all producers who didn't produce Star Wars.'

       name        
-------------------
 Melanie Griffith
 Ted Turner
 Stephen Spielberg
 Merv Griffin
 Calvin Coolidge
 James Cameron
(6 rows)

5.
select name
into tempdis
from movie, "MovieExec"
where studioName = 'Disney' and movie.producerC = "MovieExec".certN;

select name
into tempmgm
from movie, "MovieExec"
where studioName = 'MGM' and movie.producerC = "MovieExec".certN;

select name from tempdis
union
select name from tempmgm;




drop tempmgm, tempdis;

this query find all producers who produced both MGM and Disney movies.

       name        
-------------------
 Stephen Spielberg
(1 row)

6.
select title from movie
except
select title from movie, "MovieExec" where movie.producerC = "MovieExec".certN;

this query find all movie that does not have a producer recorded.

          title          
-------------------------
 The Usual Suspects
 Pretty Woman
 Gone with the wind
 Star Trek: Nemesis
 Mighty Ducks
 Gone With the Wind
 Godzilla
 Wayne's world
 Star Trek
 Logan's run
 The Man Who Wasnt There
 Wyane
(12 rows)

7.
select *
from
(select movietitle as title1, movieyear as year1, starname as name1
from "StarsIn") as s1,
(select movietitle as title2, movieyear as year2, starname as name2
from "StarsIn") as s2
where name1=name2 and (title1 != title2 or year1 != year2);

find pairs of movies whose title or publish year are different.

       title1        | year1 |     name1     |       title2        | year2 |     name2     
---------------------+-------+---------------+---------------------+-------+---------------
 Star Wars           |  1977 | Harrison Ford | Empire Strikes Back |  1980 | Harrison Ford
 Empire Strikes Back |  1980 | Harrison Ford | Star Wars           |  1977 | Harrison Ford
(2 rows)


this is manager and corresponding thing (select * from employee as m, employee as j, manages where m.eid = manages.manager and j.eid = manages.junior

select emplyee.name as name, department.name as department, salary from employee NATURAL JOIN department where emplyee.dept= department.did;

