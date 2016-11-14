DROP TABLE "attendances";
DROP TABLE "movies";
DROP TABLE "people";

CREATE TABLE movies (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  year INT,
  show_time VARCHAR(255)
);

CREATE TABLE people (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE attendances (
  id SERIAL8 PRIMARY KEY,
  person_id INT REFERENCES people(id) ON DELETE CASCADE,
  movie_id INT REFERENCES movies(id) ON DELETE CASCADE
);

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:40');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '23:45');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '17:45');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '14:40');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '17:05');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '12:30');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '18:00');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '16:30');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:20');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '12:10');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:40');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '18:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '16:30');

INSERT INTO people (name) VALUES ('Chris Bacon');
INSERT INTO people (name) VALUES ('John Campbell');
INSERT INTO people (name) VALUES ('Jane Cargill');
INSERT INTO people (name) VALUES ('Patrick Collins');
INSERT INTO people (name) VALUES ('Stephanie Devine');
INSERT INTO people (name) VALUES ('Ben Faulkner');
INSERT INTO people (name) VALUES ('Cameron Fulton');
INSERT INTO people (name) VALUES ('Tegan Gallacher');
INSERT INTO people (name) VALUES ('Gregor Gilchrist');
INSERT INTO people (name) VALUES ('Claire Hilditch');
INSERT INTO people (name) VALUES ('Graeme Bell');
INSERT INTO people (name) VALUES ('Winnie Ho');
INSERT INTO people (name) VALUES ('Adam Leel');
INSERT INTO people (name) VALUES ('Lewis MacNee');
INSERT INTO people (name) VALUES ('Adam Nattrass');
INSERT INTO people (name) VALUES ('William Robertson');
INSERT INTO people (name) VALUES ('Jordan Said');
INSERT INTO people (name) VALUES ('Logan Smith');
INSERT INTO people (name) VALUES ('Federico Zucca');

--1) SELECT * FROM movies
--2) SELECT name FROM people
--3) SELECT name FROM people WHERE name = 'Adam Leel'
--4) DELETE FROM movies WHERE title = 'Batman Begins'
--5) INSERT INTO people (name) VALUES ('John Harper')
--6) DELETE FROM people WHERE name = "Graeme Bell"
--7) UPDATE people SET name = 'Jeff 3' WHERE name = 'Adam Nattrass';
--UPDATE people SET name = 'The greatest Adam in the world' WHERE name = 'Adam Leel';
--8)INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '00:00');
--9)UPDATE movies SET show_time = '21:30' WHERE title = 'Guardians of the Galaxy';