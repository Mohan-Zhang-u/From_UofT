1.  select distinct countrycode as code from (select countrycode as code, count(countrylanguage) as cl from countrylanguage group by countrycode) as al, countrylanguage where cl >( select count(countrylanguage) from countrylanguage where countrycode = 'MEX') and al.code = countrylanguage.countrycode

每个国家说的语言数目select countrycode as code, count(countrylanguage) as cl from countrylanguage group by countrycode

select count(countrylanguage) from countrylanguage where countrycode = 'MEX'  == 6

Charlie and the Chocolate Factory

select celeb1, celeb2 from relationships where started >= all (select started from relationships where started is not null) and started != null

Alfred de Musset	George Sand

select celeb1, celeb2 from relationships where started >= all (select started from relationships where started is not null) and started is not null

select s2.celeb as costars from starredin s1, starredin s2  where s1.celeb = 'Nicolas Cage' and s1.movie = s2.movie and s2.celeb != 'Nicolas Cage'

costars select s2.celeb as costars from starredin s1, starredin s2  where s1.celeb = 'Tom Cruise' and s1.movie = s2.movie and s2.celeb != 'Tom Cruise'

select celeb1, celeb2, ss1.n1, ss2.n2 from enemies, (select celeb as s1 , count(movie) as n1 from starredin group by celeb)  ss1, (select celeb as s2 , count(movie) as n2 from starredin group by celeb) ss2 where celeb1 = ss1.s1, celeb2 = ss2.s2
select celeb1, celeb2, n1, n2 from enemies, (select celeb as s1 , count(movie) as n1 from starredin group by celeb)  ss1, (select celeb as s2 , count(movie) as n2 from starredin group by celeb) ss2 where ss1.s1 = celeb1 and ss2.s2 = celeb2 


select celeb1, celeb2 from enemies, (select celeb as s1 , count(movie) as n1 from starredin group by celeb)  ss1, (select celeb as s2 , count(movie) as n2 from starredin group by celeb) ss2 where ss1.s1 = celeb1 and ss2.s2 = celeb2



select celeb1, celeb2, n1, n2 from enemies,(select celeb as s1 , count(movie) as n1 from starredin group by celeb) as ss1, (select celeb as s2 , count(movie) as n2 from starredin group by celeb) as ss2 where ss1.s1 = celeb1 and ss2.s2 = celeb2 


select celeb, count(movie) as moviecount from starredin group by celeb  having count(movie)>=30 ORDER BY count(movie) desc
select celeb, count(album) as albumcount from releases group by celeb  having count(album)>=10 ORDER BY count(album) desc






