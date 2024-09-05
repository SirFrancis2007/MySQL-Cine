-- Active: 1700068523370@@127.0.0.1@3306@5to_Pelicula
/*Store procedure*/

-- Registar nuevo estudio
DELIMITER $$
Drop Procedure if EXISTS InsEstudio $$
Create Procedure InsEstudio (out xidEstudio tinyint unsigned, xnombre varchar (15), xfundacion date)
begin
insert into `Estudio` (nombre, fundacion)
values (xnombre, xfundacion);
SET xidEstudio = LAST_INSERT_ID();
end $$

call InsEstudio  (@idEstudioDisney, 'Disney', '1923-10-23') $$
call InsEstudio  (@idEstudioDream, 'DreamWorld', '1994-10-12') $$
call InsEstudio  (@idEstudioWarner, 'Warner Bros', '1923-04-04') $$
call InsEstudio  (@idEstudioGhibli, 'Studio Ghibli', '1985-06-15') $$

-- Insert en Genero:
delimiter $$
drop procedure if exists InsGenero $$
create procedure InsGenero (out unidGenero tinyint unsigned,
ungenero varchar(30))
begin
 insert into Genero(Genero)
 values(ungenero);

 SET unidGenero = LAST_INSERT_ID();
end $$

call InsGenero  (@idGFiccion, 'Ficcion') $$
call InsGenero  (@idGFantasia, 'Fantasia') $$
call InsGenero  (@idGFamiliar, 'Familiar') $$
call InsGenero  (@idGAccion, 'Accion') $$
call InsGenero  (@idGAventura, 'Aventura infantil') $$

-- Insert en Trailer:
delimiter $$
drop procedure if exists InsTrailer $$
create procedure InsTrailer ( out unidTrailer tinyint unsigned,
                                unidPelicula tinyint unsigned,
                                unidGenero tinyint unsigned,
                                unnombre varchar(50),
                                unaduracion time)
begin
 insert into Trailer( idPelicula, idGenero, nombre, duracion)
 values(unidPelicula, unidGenero, unnombre, unaduracion);
 SET unidTrailer = LAST_INSERT_ID();
end $$

 CALL InsTrailer (@idTrFrozen1, @idGFamiliar, @idPeliFrozen, 'Frozen una aventura congelada', '00:01:30') $$
 CALL InsTrailer (@idTrFrozen1_2, @idGFamiliar, @idPeliFrozen, 'Frozen una aventura congelada', '00:02:25') $$
 CALL InsTrailer (@idTrFrozen2, @idGFamiliar, @idPeliFrozen2, 'Frozen 2', '00:02:01') $$
 CALL InsTrailer (@idTrInterestelar_1, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:01:39') $$ -- trailer 1
 CALL InsTrailer (@idTrInterestelar_2, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:20') $$ -- trailer 2
 CALL InsTrailer (@idTrInterestelar_3, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:26') $$-- trailer 3
 CALL InsTrailer (@idTrInterestelar_4, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:19') $$ -- tailer 4

-- Insert en Produccion:
Delimiter $$
drop procedure if exists InsProduccion $$
create procedure InsProduccion (OUT     unidProduccion tinyint unsigned,
                                        unidEstudio tinyint unsigned,
                                        unDirector_General varchar (50),
                                        unGuion varchar (100),
                                        unProductor varchar(100),
                                        unVestuario varchar (100),
                                        unSonido varchar (100),
                                        unaMusica varchar (100),
                                        unPresupuesto decimal)
begin
    insert into Produccion(idEstudio, Director_General, Guion, Productor, Vestuario, Sonido, Presupuesto, Musica)
    values (unidEstudio, unDirector_General, unGuion, unProductor, unVestuario, unSonido, unPresupuesto, unaMusica);
    SET unidProduccion = LAST_INSERT_ID();
end $$

Call InsProduccion (@idProduFrozen, @idEstudioDisney, 'Chris Buck-Jennifer Lee', ' Peter Del Vecho - Jhon Lasseter', ' Edith Head - Hubert de Givenchy', 'Jennifer Lee', 'Odin Benitez', 'Christophe Beck - Armando Perez - Kristen Anderson Lopez', 150000000) $$
Call InsProduccion  (@idProduFrozen2, @idEstudioDisney, 'Chris Buck - Jennifer Lee', ' Peter Del Vecho', ' Edith Head - Hubert de Givenchy', 'Jennifer Lee', 'Aurora Aksnes', 'Kristen Anderson Lopez', 150000000) $$
Call InsProduccion  (@idProduInterestelar, @idEstudioWarner, 'Christopher Nolan', 'Emma Thomas-Christopher Nolan-Lynda Obst', 'Mary Zophres', 'Jonathan Nolan-Christopher Nolan', 'Hoyte van Hoytema', 'Hans Zimmer', 165000000) $$

DELIMITER $$
drop procedure if exists InsActor $$
Create procedure InsActor (out xidActor tinyint unsigned,
                            xNombre varchar(40),
                            xApellido varchar(40),
                            xfecha_nacimiento DATE,
                            xsexo char(1),
                            xnacionalidad varchar(40),
                            xrol varchar (40))
begin
 insert into Actor (Nombre, Apellido, fecha_nacimiento, sexo, nacionalidad, rol)
 VALUES(xNombre, xApellido, xfecha_nacimiento, xsexo, xnacionalidad, xrol);
 SET xidActor = LAST_INSERT_ID();
END $$

-- Frozen 1
CALL InsActor (@idActorKristen,   'Kristen ', 'Bell', '1980-07-18', 'F', 'Estadounidense', 'Actriz de voz') $$
CALL InsActor (@idActorIdina, 'Idina ', 'Menzel', '1971-05-30', 'F', 'Estadounidense', 'Actriz de voz') $$
CALL InsActor (@idActorJonathan, 'Jonathan ', 'Groff', '1995-03-26', 'M', 'Estadounidense', 'Actor de voz') $$
CALL InsActor (@idActorJosh, 'Josh ', 'Gad', '1981-02-23', 'M', 'Estadounidense', 'Actor de voz') $$
CALL InsActor (@idActorAlan, 'Alan ', 'Tudyk', '1971-03-16', 'M', 'Estadounidense', 'Actor de voz') $$
CALL InsActor (@idActorEva, 'Eva ', 'Bella', '2002-06-04', 'F', 'Estadounidense', 'Actriz de voz') $$
CALL InsActor (@idActorLivy, 'Livy ', 'Stubenraunch', '2005-04-18', 'F', 'Estadounidense', 'Actriz de voz') $$
CALL InsActor (@idActorSantino, 'Santino ', 'Fontana', '1982-03-21', 'M', 'Estadounidense', 'Actor de voz') $$
 -- Fronzen 2
 CALL InsActor(@idActorSterling, 'Sterling ', 'Brown', '1976-04-05', 'M', 'Estadounidense', 'Actor de voz') $$
 CALL InsActor(@idActorEvan, 'Evan ', 'Wood', '1987-09-07', 'F', 'Estadounidense', 'Actriz de voz') $$
 CALL InsActor(@idActorMartha, 'Martha ', 'Plimpton', '1970-11-16', 'F', 'Estadounidense', 'Actriz de voz') $$
 CALL InsActor(@idActorRachel, 'Rachel ', 'Matthews', '1993-10-25', 'F', 'Estadounidense', 'Actriz de voz') $$
 -- Interestelar
 CALL InsActor(@idActorMatthew, 'Matthew ', 'McConaughey', '1969-11-04', 'M', 'Estadounidense', 'Actor Live action') $$
 CALL InsActor(@idActorAnne, 'Anne ', 'Hathaway', '1982-11-12', 'F', 'Estadounidense', 'Actriz Live action') $$
 CALL InsActor(@idActorFoy, 'Mackenzie ', 'Foy', '2000-11-10', 'F', 'Estadounidense', 'Actriz Live action') $$
 CALL InsActor(@idActorJessica, 'Jessica ', 'Chastain', '1977-03-24', 'F', 'Estadounidense', 'Actriz Live action') $$
 CALL InsActor(@idActorMichael, 'Michael ', 'Caine', '1933-03-14', 'M', 'Británico', 'Actor Live Action') $$
 CALL InsActor(@idActorCasey, 'Casey', 'Affleck', '1975-08-12', 'M', 'Estadounidense', 'Actor Live Action') $$
 CALL InsActor(@idActorMatt, 'Matt', 'Damon', '1970-10-08', 'M', 'Estadounidense', 'Actor Live Action') $$
 CALL InsActor(@idActorLithgow, 'John', 'Lithgow', '1945-10-19', 'M', 'Estadounidense', 'Actor Live Action') $$
 CALL InsActor(@idActorEllen, 'Ellen', 'Burstyn', '1932-12-07', 'F', 'Estadounidense', 'Actriz Live action') $$
 CALL InsActor(@idActorDavid, 'David', 'Gyasi', '1980-01-02', 'M', 'Británica', 'Actor Live Action') $$
 CALL InsActor(@idActorTopher, 'Topher', 'Grace', '1978-07-12', 'M', 'Estadounidense', 'Actor Live Action') $$
 CALL InsActor(@idActorChalamet,'Timothée', 'Chalamet', '1995-12-27', 'M', 'Estadounidense', 'Actor Live Action') $$
 CALL InsActor(@idActorStewart, 'Josh', 'Stewart', '1977-02-06', 'M', 'Estadounidense', 'Actor de voz') $$

DELIMITER $$

Drop Procedure if EXISTS `InsPelicula` $$
Create Procedure InsPelicula ( out unidPelicula mediumint unsigned,
unidProduccion tinyint unsigned,
unnombre varchar(40),
unestreno date,
unadescripcion varchar (300),
unacalificacion tinyint unsigned,
unaduracion Time,
unarestrincion tinyint unsigned ,
unrecaudado bigint unsigned)
Begin
 insert into Pelicula (idProduccion, nombre, estreno, descripcion, calificacion, duracion, restrincion, recaudado)
VALUES (unidProduccion, unnombre, unestreno, unadescripcion,
unacalificacion, unaduracion, unarestrincion, unrecaudado) ;
 SET unidPelicula = LAST_INSERT_ID();
END $$

call InsPelicula(@idPeliFrozen, @idProduFrozen, 'Frozen una aventura congelada', '2013-11-27', 'Anna y Kristoff desafían la naturaleza en una carrera para salvar a Elsa y al reino', 7.9, '01:42:00', 0, 1284219009) $$
 call InsPelicula(@idPeliFrozen2, @idProduFrozen2, 'Frozen 2', '2019-01-02', 'Elsa se aventura en lo desconocido para descubrir verdades del pasado', 8.0, '01:48:00', 0, 1453683476) $$
 
 -- Películas comunes
 call InsPelicula(@idPeliInterestelar, @idProduInterestelar, 'Interestelar', '2014-11-06', 'Un equipo de exploradores viaja más allá de esta galaxia a través de un reciente descubierto agujero para descubrir si la humanidad tiene un futuro entre las estrellas', 9.0, '02:49:00', 13, 708000000) $$

DELIMITER $$
/*procedure de saga */
 drop procedure if exists insSaga $$
 Create procedure insSaga(out   unidsaga TINYINT UNSIGNED,
                                unNumero_Saga TINYINT UNSIGNED,
                                unidpelicula MEDIUMINT unsigned,
                                unnombre varchar (50) )
begin
 insert into Saga(Numero_Saga,idpelicula,nombre)
 VALUES(unNumero_Saga,unidpelicula,unnombre);
 set unidsaga = LAST_INSERT_ID();

END $$

CALL insSaga (@idSagaFrozen_1, 1 ,@idPeliFrozen, 'Frozen una aventura congelada') $$
CALL insSAga (@idSagaFrozen_2, 1 ,@idPeliFrozen2, 'Frozen 2') $$

-- Incrementa el presupuesto
DELIMITER $$
Drop Procedure if EXISTS `IncPresupuesto` $$
Create Procedure IncPresupuesto (unidProduccion tinyint unsigned, Cantidad tinyint unsigned )
begin
 update Produccion
 set Presupuesto = Presupuesto + Cantidad
 where idProduccion = unidProduccion ;


END $$

-- Eliminar Actor
DELIMITER $$
Drop Procedure if EXISTS DelActor $$
CREATE PROCEDURE DelActor (xidActor tinyint unsigned)
begin
 DELETE from `Actor`
 where `idActor` = xidActor;
end $$

	
