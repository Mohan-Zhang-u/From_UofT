--insert into movie

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Godzilla', 1998, 120, 1 , 'Paramount', 123);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Pretty Woman', 1990, 120, 1 , 'Disney', 999);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Titanic', 1998, 340, 1 , 'Paramount', 123);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Mighty Ducks', 1991, 104, 1, 'Paramount', 123);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Gone with the wind', 1972, 104, 1, 'Paramount', 300);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Wyane', 1973, 134, 0, 'Disney', 234);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('%AAAA%', 1973, 134, 0, 'Disney', 234);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Wayne''s world', 1972, 134, 0, 'Disney', 234);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('The Man Who Wasnt There', 2001, 116, 0, 'USA Entertainm.', 777);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Logan''s run', 1976, NULL, 1 , '', 888);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Star Wars', 1977, 124, 1 , 'Fox', 555);


INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Empire Strikes Back', 1980, 111, 1, 'Fox', 555);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Star Trek', 1979, 132, 1, 'Paramount', 444);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Star Trek: Nemesis', 2002, 116, 1, 'Paramount', 321);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('The Usual Suspects', 1995, 106, 1, 'MGM', 999);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Gone With the Wind', 1938, 238, 1, 'MGM', 123);

INSERT INTO Movies(title, year, length, inColor, studioName, producerC)
VALUES('Mirror Mirror', 2012, 180, 1, 'Disney', 123);


--insert into movie_star
INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Julia Roberts', '123 Billings Rd.', 'F', '23-Feb-1963');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Alec Baldwin', '12 Temple Street', 'M', '2-Aug-1960');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Kim Basinger', '12 Temple Street', 'F', '12-Jul-1970');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Robert de Niro', '34 Cambridge Blvd', 'M', '3-Jan-1950');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Jane Fonda', '22 Turner Av.', 'F', '21-Dec-1937');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Melanie Griffith', '34 Boston Blvd', 'F', '9-Aug-1957');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Harrison Ford', '34 Prefect Blvd', 'M', '13-Jul-1942');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Debra Winger', '344 A way', 'F', '16-May-1955');

INSERT INTO MovieStar(name, address, gender, birthdate)
VALUES('Jack Nicholson', '434 X path', 'M', '22-Apr-1937');


--insert into stars_in
INSERT INTO StarsIn VALUES ('Star Wars', 1977, 'Carrie Fisher');

INSERT INTO StarsIn VALUES ('Star Wars', 1977, 'Mark Hamill');

INSERT INTO StarsIn VALUES ('Star Wars', 1977, 'Harrison Ford');

INSERT INTO StarsIn VALUES ('Empire Strikes Back', 1980, 'Harrison Ford');

INSERT INTO StarsIn VALUES ('The Usual Suspects', 1995, 'Kevin Spacey');

INSERT INTO StarsIn VALUES ('Terms of Endearment', 1983, 'Debra Winger');

INSERT INTO StarsIn VALUES ('Terms of Endearment', 1983, 'Jack Nicholson');

INSERT INTO StarsIn VALUES ('Pretty Woman', 1990, 'Julia Roberts');

INSERT INTO StarsIn VALUES ('Mirror Mirror', 2012, 'Julia Roberts');

--insert into movie_exec

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES('Melanie Griffith', '34 Boston Blvd', 700, 3000000);

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES ('George Lucas', 'Oak Rd.', 555, 200000000);

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES('Ted Turner', '22 Turner Av.', 345, 125000000);

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES ('Stephen Spielberg', '123 ET road', 222, 100000000);

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES ('Merv Griffin', 'Riot Rd.', 199, 112000000);

INSERT INTO MovieExec(name, address, cert, netWorth)
VALUES ('Calvin Coolidge', 'Fast Lane', 129, 20000000);



--insert into studio
INSERT INTO Studio (studioname, address, presCert)
VALUES ('Disney', 'Buena Vista Bairbank', 1);

INSERT INTO Studio (studioname, address, presCert)
VALUES ('Paramount', '5555 Melrose Hollywood', 2);

INSERT INTO Studio (studioname, address, presCert)
VALUES ('MGM', 'Beverly Hills', 123);
