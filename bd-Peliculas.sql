drop database if exists Pelicula;
Create database Pelicula;
Use Pelicula;
  
  create table Genero 
  (
   idGenero tinyint unsigned primary key, 
   genero varchar(30) not null
   );
   
   create table Estudio 
   (
    idEstudio tinyint unsigned primary key, 
    nombre varchar (15) not null,
    fundacion date not null,
     CONSTRAINT UQ_Estudio UNIQUE (nombre)
   );
   
      create table Produccion 
   (
    idProduccion tinyint unsigned primary key,
    idPelicula mediumint unsigned,
    idEstudio tinyint unsigned,
    Director_General varchar (50) not null,
    Guion  varchar (100),
    Productor varchar(100),
    Vestuario varchar (100),
    Sonido varchar (100),
    Presupuesto float not null,
    Musica varchar (100),
   CONSTRAINT FK_Produccion_Estudio FOREIGN KEY (idEstudio)
	REFERENCES Estudio (idEstudio)
);
   
   create table Pelicula 
   (
   idPelicula mediumint unsigned primary key, 
   idProduccion tinyint unsigned,
   idGenero tinyint unsigned,
   idActor tinyint unsigned,
   nombre varchar(40) not null,
   estreno date not null,
   descripcion varchar (300),
   calificacion tinyint unsigned,
   duracion Time not null,
   restrincion tinyint unsigned ,
   recaudado bigint unsigned,
   CONSTRAINT FK_Pelicula_Genero FOREIGN KEY (idGenero)
		REFERENCES  Genero (idGenero),
	CONSTRAINT FK_Pelicula_Produccion FOREIGN KEY (idProduccion)
		REFERENCES  produccion (idProduccion)
   );
   
   Create table Actor 
(
  idActor tinyint unsigned primary key, 
  idPelicula mediumint unsigned, 
  Nombre varchar(40) not null, 
  Apellido varchar(40) not null,
  fecha_nacimiento date not null,
  sexo char(1) not null,
  nacionalidad varchar(40) not null,
  rol varchar (40) not null,
  personaje varchar(40) not null,
  CONSTRAINT FK_Pelicula_Actor FOREIGN KEY (idPelicula)
	 REFERENCES  Pelicula (idPelicula)
  );
  
   create table Actor_Pelicula
(
idActor tinyint unsigned,
idPelicula mediumint unsigned,
CONSTRAINT PK_Actor_Pelicula PRIMARY KEY (idActor ,idPelicula),
CONSTRAINT FK_Actor_actor FOREIGN KEY (idActor)
	REFERENCES Actor (idActor) ,
CONSTRAINT FK_Pelicula_Pelicula FOREIGN KEY (idPelicula)
	REFERENCES Pelicula (idPelicula)
);

create table Saga
( 
idSaga tinyint unsigned primary key,
Numero_Saga tinyint unsigned,
idPelicula mediumint unsigned,
Nombre varchar (50) not null,
CONSTRAINT FK_Saga FOREIGN KEY (idPelicula)
 REFERENCES  Pelicula (idPelicula)
);

CREATE TABLE Trailer (
	idTrailer tinyint unsigned primary key,
	idPelicula mediumint unsigned,
	idGenero tinyint unsigned,
	nombre varchar(50) not null,
	duracion time not null,
	CONSTRAINT FK_Trailer_Genero FOREIGN KEY (idGenero) 
		REFERENCES Genero (idGenero),
    CONSTRAINT FK_Trailer_Pelicula FOREIGN KEY (idPelicula) 
		REFERENCES Pelicula (idPelicula)
);