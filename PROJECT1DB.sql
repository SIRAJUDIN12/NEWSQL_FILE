create database MOVIES_COLLECTION;
use MOVIES_COLLECTION;

DROP TABLE IF EXISTS Editors;
DROP TABLE IF EXISTS Actors ;
DROP TABLE IF EXISTS Studios;
DROP TABLE IF EXISTS MovieActors;
DROP TABLE IF EXISTS Studios; 
DROP TABLE IF EXISTS MovieStudios;
DROP TABLE IF EXISTS Soundtracks;
DROP TABLE IF EXISTS Producers;
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Directors ;
DROP TABLE IF EXISTS Authors;

create table Genres(
GenreNUM int  auto_increment primary key,
GenreName varchar(255)
);

create table Directors (
DirectorID int auto_increment primary key,
Fname varchar(255) ,
Lname varchar (255),
contact varchar (255),
birthDate date,
country varchar(255)
);

 create table Movies(
 movieNUM int auto_increment primary key,
 Title varchar(255) not null,
 ReleaseYear year,
 GenreNUM int ,
 DirectorID int ,
 Duration time,
 Rating varchar(5),
 foreign key (GenreNUM) references Genres (GenreNUM),
 foreign key (DirectorID) references Directors (DirectorID)
 );
alter table Movies add column EditorID int;

 
create table Authors (
AUthorID int auto_increment primary key ,
fname varchar (255) ,
lname varchar (255) ,
MovieNUM int  ,
foreign key (movieNUM)  references Movies (movienum)
); 

create table Editor (
EditorID int auto_increment primary key,
FirstName varchar(255),
LastName varchar (255),
phone varchar(10)
);
alter table Editor
drop column movieNUM;

ALTER TABLE Movies
ADD CONSTRAINT fk_editor
FOREIGN KEY (EditorID)
REFERENCES Editor (EditorID);


create table Producer(
producerID int auto_increment primary key,
MovieNUM int,
FirstName varchar (255),
LastName varchar(255),
email varchar(20),
AddressCity varchar(255),
foreign key (movienum) references Movies (movienum)

);

CREATE TABLE Studios (
    StudioID INT AUTO_INCREMENT PRIMARY KEY,
    StudioName VARCHAR(255),
    Location VARCHAR(255)
);

CREATE TABLE Actors (
    ActorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    DateOfBirth DATE
);

CREATE TABLE MovieActors (
    MovieActorID INT AUTO_INCREMENT PRIMARY KEY,
    MovieNUM INT,
    ActorID INT,
    Role VARCHAR(255),
    FOREIGN KEY (MovieNUM) REFERENCES Movies(MovieNUM),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);

CREATE TABLE MovieStudios (
    MovieStudioID INT AUTO_INCREMENT PRIMARY KEY,
    MovieNUM INT,
    StudioID INT,
    FOREIGN KEY (MovieNUM) REFERENCES Movies(MovieNUM),
    FOREIGN KEY (StudioID) REFERENCES Studios(StudioID)
);

CREATE TABLE Soundtracks (
    SoundtrackID INT AUTO_INCREMENT PRIMARY KEY,
    MovieNUM INT,
    Title VARCHAR(255),
    Artist VARCHAR(255),
    Duration INT,
    FOREIGN KEY (MovieNUM) REFERENCES Movies(MovieNUM)
);

 