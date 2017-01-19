-- im using postgre for this file, and my data is stored in a table named celeb

-- question 1
-- insertion for new fan
INSERT INTO celeb(subject,predicate,object) VALUES ('1','fanid','Mohan Zhang');
INSERT INTO celeb(subject,predicate,object) VALUES ('1','fanof','Chris Raab');

-- insertion for celeb datas
INSERT INTO celeb(subject,predicate,object) VALUES ('Chris Raab','starred_in','Hotdog Casserole');
INSERT INTO celeb(subject,predicate,object) VALUES ('Chris Raab','starred_in','Calendar Girl ');
INSERT INTO celeb(subject,predicate,object) VALUES ('Chris Raab','starred_in','The Perfect House');

-- question 2
create or replace view fan_star as
	select object 
	from celeb 
	where subject = '1' and predicate = 'fanof';

-- index creation
create or replace view obj_Chris as 
	select subject
	from celeb
	where object in (select * from fan_star) and predicate = 'with';

select distinct object  
from celeb
where object <> 'Chris Raab' and subject in (select * from obj_Chris);

