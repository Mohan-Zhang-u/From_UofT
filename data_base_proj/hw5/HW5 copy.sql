right from wrong
select code from country, countrylanguage where countrylanguage = 'French' and isofficial = true and country.code = countrylanguage.countrycode;
select countrycode from country, countrylanguage where countrylanguage = 'French' and isofficial = true and country.code = countrylanguage.countrycode;

why! why!
select countrylanguage from countrylanguage where countrycode in (select countrycode from countrylanguage where continent = 'North America') as aa;

select * from a(select * from  country, countrylanguage where code = countrycode);

select code from country where name = 'Canada';

select countrycode from countrylanguage where countrylanguage = 'French' and isofficial is true;

select distinct code from country, countrylanguage where countrylanguage = 'French' and isofficial = true and country.code = countrylanguage.countrycode;


right from wrong
select code from country, countrylanguage where countrylanguage = 'French' and isofficial = true and country.code = countrylanguage.countrycode;
select countrycode from country, countrylanguage where countrylanguage = 'French' and isofficial = true and country.code = countrylanguage.countrycode;

select from country, countrylanguage where code = countrycode


select distinct countrylanguage as language, country from country, countrylanguage where code = countrycode and continent = 'North America';
select distinct continent, count(name) from country, countrylanguage where code = countrycode and countrylanguage = 'English';
select continent, count(name) from country, countrylanguage where code = countrycode and countrylanguage = 'English' group by continent;
select name, asc population from country
select from country, countrylanguage where code = countrycode
select from country, countrylanguage where code = countrycode

SELECT COUNT(DISTINCT column_name)

select name,countrylanguage from  country, countrylanguage where code = countrycode and continent = 'North America';



select c1.countrycode from countrylanguage c1, countrylanguage c2 where c1.countrycode = c2.countrycode and c1.countrylanguage != c2.countrylanguage;

select from country, countrylanguage where code = countrycode


select from country, countrylanguage where code = countrycode


select from country, countrylanguage where code = countrycode

(select code from country where continent = 'North America') as coinAmer;

all language: select distinct countrylanguage from countrylanguage where countrycode in (select code from country where continent = 'North America');

select code, countrylanguage from country, (select distinct countrylanguage from countrylanguage where countrycode in (select code from country where continent = 'North America')) as alllanginAmer;

select countrycode, countrylanguage from countrylanguage where countrycode in (select code from country where continent = 'North America');





select distinct countrylanguage as language from countrylanguage where countrycode in (select code from country where continent = 'North America')
except
select distinct countrylanguage from (
select code, countrylanguage from country, (select distinct countrylanguage from countrylanguage where countrycode in (select code from country where continent = 'North America')) as alllanginAmer
except
select countrycode, countrylanguage from countrylanguage where countrycode in (select code from country where continent = 'North America')) as nn;











