-- Active: 1700068523370@@127.0.0.1@3306@5to_Pelicula
drop database if exists 5to_Pelicula;
Create database 5to_Pelicula;
Use 5to_Pelicula;
  create table Genero
 (
  idGenero tinyint unsigned AUTO_INCREMENT primary key,
  genero varchar(30) not null
  );
 
  create table Estudio
  (
   idEstudio tinyint unsigned AUTO_INCREMENT primary key,
   nombre varchar (15) not null,
   fundacion date not null,
    CONSTRAINT UQ_Estudio UNIQUE (nombre)
  );
 
     create table Produccion
  (
   idProduccion tinyint unsigned primary key AUTO_INCREMENT,
   idEstudio tinyint unsigned,
   Director_General varchar (50) not null,
   Guion  varchar (100),
   Productor varchar(100),
   Vestuario varchar (100),
   Sonido varchar (100),
   Presupuesto decimal not null,
   Musica varchar (100),
  CONSTRAINT FK_Produccion_Estudio FOREIGN KEY (idEstudio)
   REFERENCES Estudio (idEstudio)
);
 
  create table Pelicula
  (
  idPelicula mediumint unsigned AUTO_INCREMENT primary key,
  idProduccion tinyint unsigned,
  nombre varchar(40) not null,
  estreno date not null,
  descripcion varchar (300),
  calificacion tinyint unsigned,
  duracion Time not null,
  restrincion tinyint unsigned ,
  recaudado bigint unsigned,
   CONSTRAINT FK_Pelicula_Produccion FOREIGN KEY (idProduccion)
       REFERENCES  Produccion (idProduccion)
  );
 
  Create table Actor
(
 idActor tinyint unsigned primary key AUTO_INCREMENT,
 Nombre varchar(40) not null,
 Apellido varchar(40) not null,
 fecha_nacimiento date not null,
 sexo char(1) not null,
 nacionalidad varchar(40) not null,
 rol varchar (40) not null
 );
 
create table Actor_Pelicula
(
idActor tinyint unsigned,
idPelicula mediumint unsigned,
personaje VARCHAR(50) not null,
CONSTRAINT PK_Actor_Pelicula PRIMARY KEY (idActor ,idPelicula, personaje),
CONSTRAINT FK_Actor_actor FOREIGN KEY (idActor)
   REFERENCES Actor (idActor) ,
CONSTRAINT FK_Pelicula_Pelicula FOREIGN KEY (idPelicula)
   REFERENCES Pelicula (idPelicula)
);


create table Saga
(
idSaga tinyint unsigned AUTO_INCREMENT primary key,
Numero_Saga tinyint unsigned,
idPelicula mediumint unsigned,
Nombre varchar (50) not null,
CONSTRAINT FK_Saga FOREIGN KEY (idPelicula)
REFERENCES  Pelicula (idPelicula)
);


CREATE TABLE Trailer (
   idTrailer tinyint unsigned AUTO_INCREMENT primary key,
   idPelicula mediumint unsigned,
   idGenero tinyint unsigned,
   nombre varchar(50) not null,
   duracion time not null,
   CONSTRAINT FK_Trailer_Genero FOREIGN KEY (idGenero)
       REFERENCES Genero (idGenero),
   CONSTRAINT FK_Trailer_Pelicula FOREIGN KEY (idPelicula)
       REFERENCES Pelicula (idPelicula)
);

