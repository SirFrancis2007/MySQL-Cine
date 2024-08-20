USe Pelicula;

/*Store procedure*/


DELIMITER $$


/*Procedure de alta actor*/

drop procedure if exists InsActor $$
Create procedure InsActor (out xidActor tinyint unsigned,
 xidPelicula mediumint unsigned,
 xNombre varchar(40),
 xApellido varchar(40),
 xfecha_nacimiento DATE,
 xsexo char(1),
 xnacionalidad varchar(40),
 xrol varchar (40),
 xpersonaje varchar(40))
begin
 insert into Actor (idPelicula, Nombre, Apellido, fecha_nacimiento, sexo, nacionalidad, rol, personaje)
 VALUES(xidPelicula, xNombre, xApellido, xfecha_nacimiento, xsexo, xnacionalidad, xrol, xpersonaje);
 SET xidActor = LAST_INSERT_ID();
END $$

--Frozen 1
CALL InsActor (@idActorKristen, @idPeliFrozen, 'Kristen ', 'Bell', '1980-07-18', 'F', 'Estadounidense', 'Actriz de voz', 'Anna') $$
CALL InsActor (@idActorIdina, @idPeliFrozen, 'Idina ', 'Menzel', '1971-05-30', 'F', 'Estadounidense', 'Actriz de voz', 'Elsa') $$
CALL InsActor (@idActorJonathan, @idPeliFrozen, 'Jonathan ', 'Groff', '1995-03-26', 'M', 'Estadounidense', 'Actor de voz', 'Kristoff') $$
CALL InsActor (@idActorJosh, @idPeliFrozen, 'Josh ', 'Gad', '1981-02-23', 'M', 'Estadounidense', 'Actor de voz', 'Olaf') $$
CALL InsActor (@idActorAlan, @idPeliFrozen, 'Alan ', 'Tudyk', '1971-03-16', 'M', 'Estadounidense', 'Actor de voz', 'Duque Weselton') $$
CALL InsActor (@idActorEva, @idPeliFrozen, 'Eva ', 'Bella', '2002-06-04', 'F', 'Estadounidense', 'Actriz de voz', 'Joven Elsa') $$
CALL InsActor (@idActorLivy, @idPeliFrozen, 'Livy ', 'Stubenraunch', '2005-04-18', 'F', 'Estadounidense', 'Actriz de voz', 'Joven Anna') $$
CALL InsActor (@idActorSantino, @idPeliFrozen, 'Santino ', 'Fontana', '1982-03-21', 'M', 'Estadounidense', 'Actor de voz', 'Hans') $$
 -- Fronzen 2
 CALL InsActor(@idActorSterling, @idPeliFrozen2, 'Sterling ', 'Brown', '1976-04-05', 'M', 'Estadounidense', 'Actor de voz', 'Matthias' ) $$
 CALL InsActor(@idActorEvan, @idPeliFrozen2, 'Evan ', 'Wood', '1987-09-07', 'F', 'Estadounidense', 'Actriz de voz', 'Iduna' ) $$
 CALL InsActor(@idActorMartha, @idPeliFrozen2, 'Martha ', 'Plimpton', '1970-11-16', 'F', 'Estadounidense', 'Actriz de voz', 'Yelana' ) $$
 CALL InsActor(@idActorRachel, @idPeliFrozen2, 'Rachel ', 'Matthews', '1993-10-25', 'F', 'Estadounidense', 'Actriz de voz', 'Honeymaren' ) $$
 -- Interestelar
 CALL InsActor(@idActorMatthew, @idPeliInterestelar, 'Matthew ', 'McConaughey', '1969-11-04', 'M', 'Estadounidense', 'Actor Live action', 'Joseph Cooper') $$
 CALL InsActor(@idActorAnne, @idPeliInterestelar, 'Anne ', 'Hathaway', '1982-11-12', 'F', 'Estadounidense', 'Actriz Live action', 'Amelia Brand') $$
 CALL InsActor(@idActorFoy, @idPeliInterestelar, 'Mackenzie ', 'Foy', '2000-11-10', 'F', 'Estadounidense', 'Actriz Live action', 'Murph joven') $$
 CALL InsActor(@idActorJessica, @idPeliInterestelar, 'Jessica ', 'Chastain', '1977-03-24', 'F', 'Estadounidense', 'Actriz Live action', 'Murph adulta') $$
 CALL InsActor(@idActorMichael, @idPeliInterestelar, 'Michael ', 'Caine', '1933-03-14', 'M', 'Británico', 'Actor Live Action', 'Profesor Brand') $$
 CALL InsActor(@idActorCasey, @idPeliInterestelar, 'Casey', 'Affleck', '1975-08-12', 'M', 'Estadounidense', 'Actor Live Action', 'Tom') $$
 CALL InsActor(@idActorMatt, @idPeliInterestelar, 'Matt', 'Damon', '1970-10-08', 'M', 'Estadounidense', 'Actor Live Action', 'Dr. Mann') $$
 CALL InsActor(@idActorLithgow, @idPeliInterestelar, 'John', 'Lithgow', '1945-10-19', 'M', 'Estadounidense', 'Actor Live Action', 'Donald') $$
 CALL InsActor(@idActorEllen, @idPeliInterestelar, 'Ellen', 'Burstyn', '1932-12-07', 'F', 'Estadounidense', 'Actriz Live action', 'Murph anciana') $$
 CALL InsActor(@idActorDavid, @idPeliInterestelar, 'David', 'Gyasi', '1980-01-02', 'M', 'Británica', 'Actor Live Action', 'Romilly') $$
 CALL InsActor(@idActorTopher, @idPeliInterestelar, 'Topher', 'Grace', '1978-07-12', 'M', 'Estadounidense', 'Actor Live Action', 'Getty') $$
 CALL InsActor(@idActorChalamet, @idPeliInterestelar, 'Timothée', 'Chalamet', '1995-12-27', 'M', 'Estadounidense', 'Actor Live Action', 'Tom joven') $$
 CALL InsActor(@idActorStewart, @idPeliInterestelar, 'Josh', 'Stewart', '1977-02-06', 'M', 'Estadounidense', 'Actor de voz', 'CASE') $$

DELIMITER $$
/*procedure de saga */
 drop procedure if exits insSaga $$
 Create procedure insSaga(out unidactor TINYINT UNSIGNED,
 unNumero_Saga TINYINT UNSIGNED,
 unidpelicula MEDIUMINT unsigned,
 unnombre varchar (50) )
begin
 insert into Saga(idactor,unNumero_Saga,idpelicula,nombre)
 VALUES(unidactor,unNumero_Saga,unidpelicula,unnombre);
 set unidActor = LAST_INSERT_ID();

END $$

CALL insSaga (@idSagaFrozen_1, 1 ,@idPeliFrozen, 'Frozen una aventura congelada') $$
CALL insSAga (@idSagaFrozen_2, 1 ,@idPeliFrozen2, 'Frozen 2') $$


--Insert en Produccion:
drop procedure if exists InsProduccion $$
create procedure InsProduccion (OUT unidProduccion tinyint unsigned,
                                unidPelicula mediumint unsigned,
                                unidEstudio tinyint unsigned,
                                unDirector_General varchar (50),
                                unGuion varchar (100),
                                unProductor varchar(100),
                                unVestuario varchar (100),
                                unSonido varchar (100),
                                unPresupuesto decimal,
                                unaMusica varchar (100))
begin
 insert into Produccion(idPelicula,idEstudio, Director_General, Guion, Productor, Vestuario, Sonido, Presupuesto, Musica)
 values (unidPelicula, unidEstudio, unDirector_General, unGuion, unProductor, unVestuario, unSonido, unPresupuesto, unaMusica);
 SET unidProduccion = LAST_INSERT_ID();
end $$



call InsProduccion

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
end$$

 CALL insTraieler (@idTrFrozen1, @idGFamiliar, @idPeliFrozen, 'Frozen una aventura congelada', '00:01:30') $$ -- trailer 1
 CALL insTraieler (@idTrFrozen1_2, @idGFamiliar, @idPeliFrozen, 'Frozen una aventura congelada', '00:02:25') $$ -- trailer 2
 CALL insTraieler (@idTrFrozen2, @idGFamiliar, @idPeliFrozen2, 'Frozen 2', '00:02:01') $$
  CALL insTraieler (@idTrInterestelar_1, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:01:39') $$ -- trailer 1
 CALL insTraieler (@idTrInterestelar_2, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:20') $$ -- trailer 2
 CALL insTraieler (@idTrInterestelar_3, @idGFiccion1, @idPeliInterestelar, 'Interestelar', '00:02:26') $$-- trailer 3
 CALL insTraieler (@idTrInterestelar_4, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:19') $$ -- tailer 4

-- Insert en Genero:
delimiter $$
drop procedure if exists InsGenero $$
create procedure InsGenero (out unidGenero tinyint unsigned,
 ungenero varchar(30))
begin
 insert into Genero(Genero)
 values(ungenero);

 SET unidGenero = LAST_INSERT_ID();
end$$

call InsGenero (@idGFiccion, 'Ficcion') $$
call InsGenero (@idGFantasia, 'Fantasia') $$
call InsGenero (@idGFamiliar, 'Familiar') $$
call InsGenero (@idGAccion, 'Accion') $$
call InsGenero (@idGAventura, 'Aventura infantil') $$

DELIMITER $$

Drop Procedure if EXISTS `InsPelicula` $$
Create Procedure InsPelicula ( out unidPelicula mediumint unsigned,
 unidProduccion tinyint unsigned,
 unidGenero tinyint unsigned,
 unidActor tinyint unsigned,
 unnombre varchar(40),
 unestreno date,
 unadescripcion varchar (300),
 unacalificacion tinyint unsigned,
 unaduracion Time,
 unarestrincion tinyint unsigned ,
 unrecaudado bigint unsigned)
Begin
 insert into Pelicula (idProduccion, idGenero, idActor, nombre, estreno, descripcion,
 calificacion, duracion, restrincion, recaudado)

 VALUES (unidProduccion, unidGenero, unidActor, unnombre, unestreno, unadescripcion,
 unacalificacion, unaduracion, unarestrincion, unrecaudado) ;
 SET unidPelicula = LAST_INSERT_ID();
END $$

call InsPelicula(@idPeliFrozen, @idProduFrozen, 'Frozen una aventura congelada', '2013-11-27', 'Anna y Kristoff desafían la naturaleza en una carrera para salvar a Elsa y al reino', 7.9, '01:42:00', 0, 1284219009) $$
 call InsPelicula(@idPeliFrozen2, @idProduFrozen2, 'Frozen 2', '2019-01-02', 'Elsa se aventura en lo desconocido para descubrir verdades del pasado', 8.0, '01:48:00', 0, 1453683476) $$
 call InsPelicula(@idPeliMegalodon, @idProduMegalodon, 'Megalodon', '2018-08-23', 'Jason Statham protagoniza este thriller submarino donde un grupo de científicos libera accidentalmente a un tiburón prehistórico gigante. Ahora el equipo debe arriesgar la vida en una carrera a contrarreloj para evitar una masacre masiva', 8.0, '01:53:00', 13, 530243742) $$
 call InsPelicula(@idPeliMegalodon2, @idProduMegalodon2, 'Megalodon II: El gran abismo', '2023-08-03', 'Jason Statham y Wu Jing, el ícono mundial de las artes marciales, se sumergen en aguas desconocidas y lideran un equipo de investigación que explorará las profundidades más abismales del océano', 9.0, '01:55:00', 13, 395000000) $$
 call InsPelicula(@idPeliGatoBotas, @idProduGatoBota, 'El gato con botas', '2011-12-07', 'El famoso gato tiene la aventura de su vida cuando une fuerzas con Humpty Dumpty y la gata Kitty para robarse al ganso de los huevos de oro', 8.0, '01:30:00', 0, 554000000) $$
 call InsPelicula(@idPeliGatoDeseo, @idProduGatoDeseo, 'El gato con botas: El último deseo', '2023-01-05', 'El Gato con Botas descubre que, debido a su pasión por la aventura, ha gastado ya 8 de sus 9 vidas. Por tanto, emprende un peligroso viaje en busca del legendario Último Deseo para solicitar que le restauren las vidas que ya perdió', 7.6, '01:40:00', 0, 485000000) $$
 
 -- Películas comunes
 call InsPelicula(@idPeliJack, @idProduJack, 'El extraño mundo de Jack', '1993-10-29', 'El rey de las calabazas, Jack Skellington, intenta apoderarse de la Navidad', 8.1, '01:19:00', 0, 95321981) $$
 call InsPelicula(@idPeliGuardianes, @idProduGuardianes, 'El origen de los guardianes', '2012-11-22', 'Generación tras generación, guardianes inmortales como Santa Claus, el Conejo de Pascua y la Hada de los Dientes protegen a los niños del mundo de la oscuridad y la desesperación', 7.3, '01:37:00', 0, 306941670) $$
 call InsPelicula(@idPeliInterestelar, @idProduInterestelar, 'Interestelar', '2014-11-06', 'Un equipo de exploradores viaja más allá de esta galaxia a través de un reciente descubierto agujero para descubrir si la humanidad tiene un futuro entre las estrellas', 9.0, '02:49:00', 13, 708000000) $$
 call InsPelicula(@idPeliChihiro ,@idProduChihiro, 'El viaje de Chihiro', '2003-07-17', 'Chihiro es una niña caprichosa que debe adentrarse en un mundo de fantasía para poder salvar a sus padres, convertidos en cerdos', 4.8, '02:05:00', 10, 31680000) $$


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


-- Registar nuevo estudio:


DELIMITER $$
Drop Procedure if EXISTS InsEstudio $$
Create Procedure InsEstudio (out xidEstudio tinyint unsigned, xnombre varchar (15), xfundacion date)
begin
 insert into `Estudio` (nombre, fundacion)
 values (xnombre, xfundacion);
 SET xidEstudio = LAST_INSERT_ID();

end $$

call InsEstudio (@idEstudioDisney, 'Disney', '1923-10-23'           ) $$
call InsEstudio (@idEstudioDream, 'DreamWorld', '1994-10-12'        ) $$
call InsEstudio (@idEstudioWarner, 'Warner Bros', '1923-04-04'      ) $$
call InsEstudio (@idEstudioGhibli, 'Studio Ghibli', '1985-06-15'    ) $$