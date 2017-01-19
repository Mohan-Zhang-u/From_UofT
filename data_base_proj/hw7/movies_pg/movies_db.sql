DROP SCHEMA IF EXISTS movies CASCADE;
CREATE SCHEMA movies;
SET SEARCH_PATH TO movies;

DROP TABLE IF EXISTS Movies CASCADE; 
/* Delete table if it already exists */

CREATE TABLE Movies ( 
	title varchar(30), 
	year int, 
	length int, 
	inColor int, 
	studioName varchar(20), 
	producerC varchar(3),
	primary key (title, year)
 );


 DROP TABLE IF EXISTS MovieStar CASCADE; 
/* Delete table if it already exists */ 

CREATE TABLE MovieStar(
        name varchar(30) primary key,
        address varchar(30),
        gender char(1),
        birthdate date
);


DROP TABLE IF EXISTS StarsIn CASCADE; 
/* Delete table if it already exists */



CREATE TABLE StarsIn 
(
 	movieTitle varchar(30), 
	movieYear int, 
	starName varchar(30),
	primary key (movieTitle, movieYear, starName)
);


DROP TABLE IF EXISTS MovieExec CASCADE; 
/* Delete table if it already exists */
create table MovieExec(
        name varchar(30),
        address varchar(30), 
        cert int primary key, 
        netWorth int
);

DROP TABLE IF EXISTS Studio CASCADE;

create table Studio(
 	 studioname varchar(30) primary key,
	 address varchar(30),
     presCert int
);


