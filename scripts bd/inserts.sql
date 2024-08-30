-- Active: 1691412339871@@127.0.0.1@3306@Pelicula

Use Pelicula;

START TRANSACTION ;
 SET time_zone ='-03:00';
 
 insert into Genero (idGenero, Genero)
 values (@idGFiccion, 'Ficcion'),
        (@idGFantasia, 'Fantasia'),
        (@idGFamiliar, 'Familiar'),
        (@idGAccion, 'Accion'),
        (@idGAventura, 'Aventura infantil')
 ;
 
 insert into Estudio (idEstudio, Nombre, fundacion)
 values (@idEstudioDisney, 'Disney', '1923-10-23'),
 (@idEstudioDream, 'DreamWorld', '1994-10-12'),
 (@idEstudioWarner, 'Warner Bros', '1923-04-04'),
 (@idEstudioGhibli, 'Studio Ghibli', '1985-06-15')
 ;
 
 insert into Produccion (idProduccion, idEstudio, Director_General, Productor, Vestuario, Guion, Sonido, Musica, Presupuesto)
 values
 (@idProduFrozen, @idEstudioDisney, 'Chris Buck-Jennifer Lee', ' Peter Del Vecho - Jhon Lasseter', ' Edith Head - Hubert de Givenchy', 'Jennifer Lee', 'Odin Benitez', 'Christophe Beck - Armando Perez - Kristen Anderson Lopez', 150000000),
 (@idProduFrozen2, @idEstudioDisney, 'Chris Buck - Jennifer Lee', ' Peter Del Vecho', ' Edith Head - Hubert de Givenchy', 'Jennifer Lee', 'Aurora Aksnes', 'Kristen Anderson Lopez', 150000000),
 --(@idProduMegalodon, @idEstudioWarner, 'Jon Turteltaub', 'Ben Wheatley', 'Amanda Neale', 'Dean Georgaris - Jon Hoeber - Erich Hoeber', null, 'Harry Gregson William', 139000000), -- Megadolon 1
 -- (@idProduMegalodon2, @idEstudioWarner, 'Ben Wheatley', 'Lorenzo Di Bonaventura - Belle Avery', null, 'John Hoeber - Erich Hoeber - Dean Georgaris', null, 'Harry Gregson William', 139000000), -- Megadolon 2
 -- (@idProduGatoBota, @idEstudioDream, 'Chris Miller', 'Joe Aguilar-Latifa Ouaou', null, 'Tom Wheeler', null, 'henry jackman', 130000000), -- Gato con Botas 1
 -- (@idProduGatoDeseo, @idEstudioDream, 'Joel Crawford', 'Mark Swift-Chris Meledandri-Andrew Adamson', 'Januel Mercado', 'Januel Mercado', 'Heitor Pereira', null ,90000000),-- Gato con Botas 2
 -- (@idProduJack, @idEstudioDisney, 'Henry Selick', 'Tim Burton-Denise Di Novi-Danny Elfman', 'Pete Kozachik', 'Caroline Thompson-Michael McDowell-Tim Burton', ' Stan Webb', 'Danny Elfman', 24000000), -- El extraño mundo de Jack
 -- (@idProduGuardianes, @idEstudioDream, 'Peter Ramse', 'Christina Steinberg-Nancy Bernstein', null, 'David Lindsay-Abaire', 'Joyce Arrastia', 'Alexandre Desplat', 145000000), -- El origen de los guadianes*/
 (@idProduInterestelar, @idEstudioWarner, 'Christopher Nolan', 'Emma Thomas-Christopher Nolan-Lynda Obst', 'Mary Zophres', 'Jonathan Nolan-Christopher Nolan', 'Hoyte van Hoytema', 'Hans Zimmer', 165000000),
 -- (@idProduChihiro, @idEstudioGhibli, 'Hayao Miyazaki', 'Toshio Suzuki', null, 'Hayao Miyazaki', 'Joe Hisaishi', 'Takatsugu Muramatsu-Yuji Nomi', 19000000)
;
 
 insert into Pelicula (idPelicula, idProduccion, nombre, estreno, descripcion, calificacion, duracion, restrincion, recaudado)
 values -- Sagas
 (@idPeliFrozen, @idProduFrozen ,'Frozen una aventura congelada', '2013-11-27', 'Anna y Kristoff desafían la naturaleza en una carrera para salvar a Elsa y al reino', 7.9, '01:42:00', 0, 1284219009),
 (@idPeliFrozen2, @idProduFrozen2 ,'Frozen 2', '2019-01-02', 'Elsa se aventura en lo desconocido para descubrir verdades del pasado', 8.0, '01:48:00', 0, 1453683476),
 -- (@idPeliMegalodon, @idProduMegalodon, 'Megalodon', '2018-08-23', 'Jason Statham protagoniza este thriller submarino donde un grupo de científicos libera accidentalmente a un tiburón prehistórico gigante. Ahora el equipo debe arriesgar la vida en una carrera a contrarreloj para evitar una masacre masiva', 8.0, '01:53:00', 13, 530243742),
 -- (@idPeliMegalodon2, @idProduMegalodon2, 'Megalodon II: El gran abismo', '2023-08-03', 'Jason Statham y Wu Jing, el ícono mundial de las artes marciales, se sumergen en aguas desconocidas y lideran un equipo de investigación que explorará las profundidades más abismales del océano', 9.0, '01:55:00', 13, 395000000),
 -- (@idPeliGatoBotas, @idProduGatoBota, 'El gato con botas', '2011-12-07', 'El famoso gato tiene la aventura de su vida cuando une fuerzas con Humpty Dumpty y la gata Kitty para robarse al ganso de los huevos de oro', 8.0, '01:30:00', 0, 554000000),
 -- (@idPeliGatoDeseo, @idProduGatoDeseo, 'El gato con botas: El último deseo', '2023-01-05', 'El Gato con Botas descubre que, debido a su pasión por la aventura, ha gastado ya 8 de sus 9 vidas. Por tanto, emprende un peligroso viaje en busca del legendario Último Deseo para solicitar que le restauren las vidas que ya perdió', 7.6, '01:40:00', 0, 485000000),
 
 -- Películas comunes
 --(@idPeliJack, @idProduJack, 'El extraño mundo de Jack', '1993-10-29', 'El rey de las calabazas, Jack Skellington, intenta apoderarse de la Navidad', 8.1, '01:19:00', 0, 95321981),
 -- (@idPeliGuardianes, @idProduGuardianes, 'El origen de los guardianes', '2012-11-22', 'Generación tras generación, guardianes inmortales como Santa Claus, el Conejo de Pascua y la Hada de los Dientes protegen a los niños del mundo de la oscuridad y la desesperación', 7.3, '01:37:00', 0, 306941670),*/
 (@idPeliInterestelar, @idProduInterestelar,'Interestelar', '2014-11-06', 'Un equipo de exploradores viaja más allá de esta galaxia a través de un reciente descubierto agujero para descubrir si la humanidad tiene un futuro entre las estrellas', 9.0, '02:49:00', 13, 708000000),
 -- (@idPeliChihiro ,@idProduChihiro, 'El viaje de Chihiro', '2003-07-17', 'Chihiro es una niña caprichosa que debe adentrarse en un mundo de fantasía para poder salvar a sus padres, convertidos en cerdos', 4.8, '02:05:00', 10, 31680000)
;

 
 insert into Actor (idActor, idPelicula, Nombre, Apellido, fecha_nacimiento, sexo, nacionalidad, Rol)
 Values -- Frozen 1
 (@idActorKristen, @idPeliFrozen, 'Kristen ', 'Bell', '1980-07-18', 'F', 'Estadounidense', 'Actriz de voz'),
 (@idActorIdina, @idPeliFrozen, 'Idina ', 'Menzel', '1971-05-30', 'F', 'Estadounidense', 'Actriz de voz'),
 (@idActorJonathan, @idPeliFrozen, 'Jonathan ', 'Groff', '1995-03-26', 'M', 'Estadounidense', 'Actor de voz'),
 (@idActorJosh, @idPeliFrozen, 'Josh ', 'Gad', '1981-02-23', 'M', 'Estadounidense', 'Actor de voz', 'Olaf'),
 (@idActorAlan, @idPeliFrozen, 'Alan ', 'Tudyk', '1971-03-16', 'M', 'Estadounidense', 'Actor de voz'),
 (@idActorEva, @idPeliFrozen, 'Eva ', 'Bella', '2002-06-04', 'F', 'Estadounidense', 'Actriz de voz'),
 (@idActorLivy, @idPeliFrozen, 'Livy ', 'Stubenraunch', '2005-04-18', 'F', 'Estadounidense', 'Actriz de voz'),
 (@idActorSantino, @idPeliFrozen, 'Santino ', 'Fontana', '1982-03-21', 'M', 'Estadounidense', 'Actor de voz'),
 -- Fronzen 2
 (@idActorSterling, @idPeliFrozen2, 'Sterling ', 'Brown', '1976-04-05', 'M', 'Estadounidense', 'Actor de voz'),
 (@idActorEvan, @idPeliFrozen2, 'Evan ', 'Wood', '1987-09-07', 'F', 'Estadounidense', 'Actriz de voz'),
 (@idActorMartha, @idPeliFrozen2, 'Martha ', 'Plimpton', '1970-11-16', 'F', 'Estadounidense', 'Actriz de voz'),
 (@idActorRachel, @idPeliFrozen2, 'Rachel ', 'Matthews', '1993-10-25', 'F', 'Estadounidense', 'Actriz de voz'),
 -- Interestelar
 (@idActorMatthew, @idPeliInterestelar, 'Matthew ', 'McConaughey', '1969-11-04', 'M', 'Estadounidense', 'Actor Live action'),
 (@idActorAnne, @idPeliInterestelar, 'Anne ', 'Hathaway', '1982-11-12', 'F', 'Estadounidense', 'Actriz Live action'),
 (@idActorFoy, @idPeliInterestelar, 'Mackenzie ', 'Foy', '2000-11-10', 'F', 'Estadounidense', 'Actriz Live action'),
 (@idActorJessica, @idPeliInterestelar, 'Jessica ', 'Chastain', '1977-03-24', 'F', 'Estadounidense', 'Actriz Live action'),
 (@idActorMichael, @idPeliInterestelar, 'Michael ', 'Caine', '1933-03-14', 'M', 'Británico', 'Actor Live Action'),
 (@idActorCasey, @idPeliInterestelar, 'Casey', 'Affleck', '1975-08-12', 'M', 'Estadounidense', 'Actor Live Action'),
 (@idActorMatt, @idPeliInterestelar, 'Matt', 'Damon', '1970-10-08', 'M', 'Estadounidense', 'Actor Live Action'),
 (@idActorLithgow, @idPeliInterestelar, 'John', 'Lithgow', '1945-10-19', 'M', 'Estadounidense', 'Actor Live Action'),
 (@idActorEllen, @idPeliInterestelar, 'Ellen', 'Burstyn', '1932-12-07', 'F', 'Estadounidense', 'Actriz Live action'),
 (@idActorDavid, @idPeliInterestelar, 'David', 'Gyasi', '1980-01-02', 'M', 'Británica', 'Actor Live Action'),
 (@idActorTopher, @idPeliInterestelar, 'Topher', 'Grace', '1978-07-12', 'M', 'Estadounidense', 'Actor Live Action'),
 (@idActorChalamet, @idPeliInterestelar, 'Timothée', 'Chalamet', '1995-12-27', 'M', 'Estadounidense', 'Actor Live Action'),
 (@idActorStewart, @idPeliInterestelar, 'Josh', 'Stewart', '1977-02-06', 'M', 'Estadounidense', 'Actor de voz') --Fijarse en ponerle la coma una vez verificado el Full test
 -- El viaje de Chihiro
 /*(@idActorMiyu, @idPeliChihiro, 'Hirino', 'Miyu', '1998-02-19', 'M', 'Japonés', 'Actor de voz', 'Haku'),
 (@idActorTamai, @idPeliChihiro, 'Yoomi', 'Tamai', '1977-08-06', 'M', 'Japonesa', 'Actor de voz', 'Lin'),
 (@idActorKamiki, @idPeliChihiro, 'Ryūnosuke', 'Kamiki', '1993-05-19', 'M', 'Japonés', 'Actor de voz', 'Boh'),
 (@idActorMari, @idPeliChihiro, 'Natsuki', 'Mari', '1952-05-02', 'F', 'Japonesa', 'Actriz de voz', 'Yubaba/Zeniba'),
 (@idActorBunta, @idPeliChihiro, 'Sugawara', 'Bunta', '1933-08-16', 'M', 'Japonés', 'Actor de voz', 'Kamaji'),
 (@idActorNaito, @idPeliChihiro, 'Takashi', 'Naito', '1955-05-28', 'M', 'Japonés', 'Actor de voz', 'Akio Ogino'),
 (@idActorYasuko, @idPeliChihiro, 'Yasuko', 'Sawaguchi','1965-06-28', 'F', 'Japonesa', 'Actriz de voz', 'Yugo Ogino'),
 (@idActorAkio, @idPeliChihiro, 'Akio', 'Nakamura', '1960-03-03', 'M', 'Japonés', 'Actor de voz', 'Sin Cara'),
 (@idActorKamijo, @idPeliChihiro, 'Tsunehiko', 'Kamijo', '1940-03-07', 'M', 'Japonés', 'Actor de voz', 'Chichiyaku'),
 (@idActorKoba, @idPeliChihiro, 'Koba', ' Hayashi', '1935-07-27', 'M', 'Japonés', 'Actor de voz', 'Espíritu del Río'),
 (@idActorGashuin, @idPeliChihiro, 'Tatsuya', 'Gashuin', '1950-12-10', 'M', 'Japonés', 'Actor de voz', 'Aoegeru'),*/
 -- El extraño mundo de jack
 /*(@idActorSarandon, @idPeliJack, 'Chiris', 'Sarandon', '1942-07-24', 'M', 'Estadounidense', 'Actor de voz', 'Jack Skellington'),
 (@idActorCatherine,@idPeliJack, 'Catherine','O´Hara', '1954-03-04', 'F', 'Estadounidense', 'Actriz de voz', 'Sally'),
 (@idActorGlenn, @idPeliJack, 'Glenn', 'Shadix', '1953-04-15', 'M', 'Estadounidense', 'Actor de voz', 'Alcalde'),
 (@idActorPage, @idPeliJack, 'Ken', 'Page', '1954-01-20', 'M', 'Estadounidense', 'Actor de voz', 'Oogie Boogie'),
 -- El gato con botas 1
 (@idActorBandera, @idPeliGatoBotas, 'Antonio ', 'Bandera', '1960-08-10', 'M', 'Español', 'Actor de voz', 'El gato con botas'),
 (@idActorHayek, @idPeliGatoBotas, 'Salma ', 'Hayek', '1996-09-02', 'F', 'Mexicana', 'Actriz de voz', 'Kitty Patitas suave'),
 (@idActorZacharius, @idPeliGatoBotas, 'Zacharius', 'Galifianakis', '1969-11-01', 'M', 'Estadounidense', 'Actor de voz', 'Humpty Dumpty'),
 (@idActorBob, @idPeliGatoBotas, 'Billy Bob', 'Thornton', '1955-08-04', 'M', 'Estadounidense', 'Actor de voz', 'Jack'),
 (@idActorAmy, @idPeliGatoBotas, 'Amy', 'Sedaris', '1961-03-29', 'F', 'Estadounidense', 'Actriz de voz', 'Jill'),
 (@idActorToro, @idPeliGatoBotas, 'Guillermo', 'Del Toro', '1964-10-09', 'M', 'Mexicano', 'Actor de voz', 'Comandante'),
 (@idActorMarie, @idPeliGatoBotas, 'Constance', 'Marie', '1969-09-09', 'F', 'Estadounidense', 'Actriz de voz', 'Imelda'),
 (@idActorRich, @idPeliGatoBotas, 'Rich', 'Dietl', '1980-07-21', 'M', 'Estadounidense', 'Actor de voz', 'Bounty hunter'),
 -- El gato con botas: el ultimo deseo
 (@idActorGuillen, @idPeliGatoDeseo, 'Harvey', 'Guillen', '1990-05-03', 'M', 'Estadounidense', 'Actor de voz', 'Perro'),
 (@idActorMoura, @idPeliGatoDeseo, 'Wagner ', 'Moura', '1976-06-27', 'M', 'Brasileño', 'Actor de voz', 'Lobo'),
 (@idActorWagner, @idPeliGatoDeseo, 'Wagner', 'Moura', '1976-06-27', 'M', 'Brasileño', 'Actor de voz', 'Bebe oso'),
 (@idActorPugh, @idPeliGatoDeseo, 'Florence', 'Pugh', '1996-01-03', 'F', 'Británica', 'Actriz de voz', 'Ricitos de oro'),
 (@idActorColman, @idPeliGatoDeseo, 'Olivia', 'Colman', '1974-01-30', 'F', 'Británica', 'Actriz de voz', 'Mama oso'),
 (@idActorWinstone, @idPeliGatoDeseo, 'Ray', 'Winstone', '1957-02-19', 'M', 'Británico', 'Actor de voz', 'Papa oso'),
 */-- Megalodon
 /*(@idActorStatham, @idPeliMegalodon, 'Jason ', 'Statham', '1967-07-26', 'M', 'Britanico', 'Actor Live Action', 'Jonas Taylor'),
 (@idActorLi, @idPeliMegalodon, 'Bingbing', 'Li', '1973-02-27', 'F','China', 'Actriz Live Action', 'Suyin'),
 (@idActorWilson, @idPeliMegalodon,'Rainn', 'Wilson', '1968-01-20', 'M', 'Estadounidense', 'Actor Live Action', 'Morris'),
 (@idActorCurtis, @idPeliMegalodon, 'Cliff ', 'Curtis', '1968-07-27', 'M', 'Neozelandes', 'Actor Live Action', 'Mac'),
 (@idActorChao, @idPeliMegalodon, 'Winston', 'Chao', '1960-06-09','M', 'Taiwanes', 'Actor Live Action', 'Zhang'),
 (@idActorRose, @idPeliMegalodon, 'Ruby', 'Rose', '1986-03-20', 'F', 'Australiana', 'Actriz Live Action', 'Jaxx'),
 (@idActorKennedy, @idPeliMegalodon, 'Page ', 'Kennedy', '1976-11-22', 'M', 'Estadounidense', 'Actor Live Action', 'DJ'),
 (@idActorTaylor, @idPeliMegalodon, 'Robert', 'Taylor II', '1963-11-12', 'M','Australiano', 'Actor Live Action','Heller'),
 -- Megalodon II
 (@idActorWu, @idPeliMegalodon2, 'Jing', 'Wu', '1974-04-03', 'F', 'China', 'Atriz live Action', 'Jiu Ming Zhang'),
 (@idActorCai, @idPeliMegalodon2, 'Shuya', 'Sophia Cai', '2008-04-22', 'F', 'China', 'Atriz live Action', 'Meiying'),
 (@idActorSegio, @idPeliMegalodon2, 'Segio', 'Peris-Mencheta', '1975-04-07', 'M', 'Español', 'Actor Live Action', 'Montes'),
 (@idActorSamuels, @idPeliMegalodon2, 'Skyler', 'Samuels', '1994-04-14', 'F', 'Estadounidense', 'Actor Live Action', 'Jess'),
 (@idActorMahut, @idPeliMegalodon2, 'Melissanthi', 'Mahut', '1988-09-20', 'F', 'Canadiense', 'Atriz live Action', 'Rigas'),*/
 -- El origen de los guardianes:
 /*(@idActorPine, @idPeliGuardianes, 'Christopher ', 'Pine', '1980-08-26', 'M', 'Estadouniodense', 'Actor de voz', 'Jack Fros'),
 (@idActorLaw, @idPeliGuardianes, 'David Jude', 'Law', '1972-12-29', 'M', 'Estadouniodense', 'Actor de voz', 'Pitch Black'),
 (@idActorJackman, @idPeliGuardianes, 'Michael', 'Jackman', '1968-10-12', 'M', 'Estadouniodense', 'Actor de voz', 'Conejo de pascuas'),
 (@idActorBaldwin, @idPeliGuardianes, 'Alexander', 'Baldwin', '1958-04-03', 'M', 'Estadouniodense', 'Actor de voz', 'Santa Claus'),
 (@idActorFisher, @idPeliGuardianes, 'Isla', 'Fisher', '1976-02-03', 'F', 'Australiana', 'Actor de voz', 'Hada de los dientes'),
 (@idActorGoyo, @idPeliGuardianes, 'Dakota ', 'Goyo', '1999-08-22', 'M', 'Canadiense', 'Actor de voz', 'Jamie Bennet')*/
 ;

 
 insert into Saga(idSaga, Numero_Saga, idPelicula, Nombre)
 values
 (@idSagaFrozen_1, 1 ,@idPeliFrozen, 'Frozen una aventura congelada'),
 (@idSagaFrozen_2, 1 ,@idPeliFrozen2, 'Frozen 2'),
 -- (@idSagaMegalodon_1, 2 ,@idPeliMegalodon, 'Megalodon'),
 -- (@idSagaMegalodon_2, 2 ,@idPeliMegalodon2, 'Megalodon II: El gran abismo'),
 -- (@idSagaGatoBotas, 3 ,@idPeliGatoBotas, 'El gato con botas'),
 -- (@idSagaGatoDeseo, 3 ,@idPeliGatoDeseo, 'El gato con botas: el ultimo deseo')
;

 insert into Trailer(idTrailer, idGenero, idPelicula, Nombre, Duracion)
 values
 (@idTrFrozen1, @idGFamiliar, @idPeliFrozen, 'Frozen una aventura congelada', '00:01:30'), -- trailer 1
 (@idTrFrozen1_2, @idGFamiliar, @idPeliFrozen, 'Frozen una aventura congelada', '00:02:25'), -- trailer 2
 (@idTrFrozen2, @idGFamiliar, @idPeliFrozen2, 'Frozen 2', '00:02:01'),
 -- (@idTrMegalodon, @idGAccion, @idPeliMegalodon, 'Megalodon', '00:02:25'),
 -- (@idTrMegalodonII, @idGAccion, @idPeliMegalodon2, 'Megalodon II: El gran abismo', '00:03:04'),
 -- (@idTrGatoBotas, @idGAventura, @idPeliGatoBotas, 'El gato con botas', '00:02.00'),
 -- (@idTrBotasDeseo, @idGAventura, @idPeliGatoDeseo, 'El gato con botas: el ultimo deseo', '00:02:30'),
 -- (@idTrJack, @idGFantasia, @idPeliJack, 'El extraño mundo de Jack', '00:01:26'),
 -- (@idTrGuardianes_1, @idGFantasia, @idPeliGuardianes, 'El origen de los guardianes', '00:02:25'),
 -- (@idTrGuardianes_2, @idGFantasia, @idPeliGuardianes, 'El origen de los guardianes', '00:02:30'),
 (@idTrInterestelar_1, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:01:39'), -- trailer 1
 (@idTrInterestelar_2, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:20'), -- trailer 2
 (@idTrInterestelar_3, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:26'), -- trailer 3
 (@idTrInterestelar_4, @idGFiccion, @idPeliInterestelar, 'Interestelar', '00:02:19') -- tailer 4 Fijarse en ponerle la coma una vez verificado el Full test
 -- (@idTrChihiro, @idGFantasia, @idPeliChihiro, 'El viaje de Chihiro', '00:01:37')
;
 
 insert into Actor_Pelicula (idActor, idPelicula, Personaje)
 values
 -- Frozen 1
 (@idActorKristen, @idPeliFrozen, "Anna"),
 (@idActorIdina, @idPeliFrozen, "Elsa"),
 (@idActorJonathan, @idPeliFrozen, "Kristoff"),
 (@idActorJosh, @idPeliFrozen, "Olaf"),
 (@idActorAlan, @idPeliFrozen, "Duque Weselton"),
 (@idActorEva, @idPeliFrozen, "Joven Elsa"),
 (@idActorLivy, @idPeliFrozen, "Joven Anna"),
 (@idActorSantino, @idPeliFrozen, "Hans"),
 -- Frozen 2
 (@idActorKristen, @idPeliFrozen2, "Anna"),
 (@idActorIdina, @idPeliFrozen2, "Elsa"),
 (@idActorJonathan, @idPeliFrozen2, "Kristoff"),
 (@idActorJosh, @idPeliFrozen2, "Olaf"),
 (@idActorSterling, @idPeliFrozen2, "Matthias"),
 (@idActorEvan, @idPeliFrozen2, "Iduna"),
 (@idActorMartha, @idPeliFrozen2, "Yelana"),
 (@idActorRachel, @idPeliFrozen2, "Honeymaren"),
 -- Interesellar
 (@idActorMatthew, @idPeliInterestelar, "Joseph Coope"),
 (@idActorAnne, @idPeliInterestelar, "Amelia Brand"),
 (@idActorFoy, @idPeliInterestelar, "Murph joven"),
 (@idActorJessica, @idPeliInterestelar, "Murph adulta"),
 (@idActorMichael, @idPeliInterestelar, "Profesor Brand"),
 (@idActorCasey, @idPeliInterestelar, "Tom"),
 (@idActorMatt, @idPeliInterestelar, "Dr. Mann"),
 (@idActorLithgow, @idPeliInterestelar, "Donald"),
 (@idActorEllen, @idPeliInterestelar, "Murph anciana"),
 (@idActorDavid, @idPeliInterestelar, "Romilly"),
 (@idActorTopher, @idPeliInterestelar, "Getty"),
 (@idActorChalamet, @idPeliInterestelar, "Tom joven"),
 (@idActorStewart, @idPeliInterestelar, "CASE"),
 /* El viaje de Chihiro
 (@idActorRumi, @idPeliChihiro),
 (@idActorMiyu, @idPeliChihiro),
 (@idActorTamai, @idPeliChihiro),
 (@idActorKamiki, @idPeliChihiro),
 (@idActorMari, @idPeliChihiro),
 (@idActorBunta, @idPeliChihiro),
 (@idActorNaito, @idPeliChihiro),
 (@idActorYasuko, @idPeliChihiro),
 (@idActorAkio, @idPeliChihiro),
 (@idActorKamijo, @idPeliChihiro),
 (@idActorKoba, @idPeliChihiro),
 (@idActorGashuin, @idPeliChihiro),*/
 -- El extraño mundo de Jack
 /*(@idActorSarandon, @idPeliJack),
 (@idActorCatherine, @idPeliJack),
 (@idActorGlenn, @idPeliJack),
 (@idActorPage, @idPeliJack),
 -- El gato con botas
 (@idActorBandera, @idPeliGatoBotas),
 (@idActorHayek, @idPeliGatoBotas),
 (@idActorZacharius, @idPeliGatoBotas),
 (@idActorBob, @idPeliGatoBotas),
 (@idActorAmy, @idPeliGatoBotas),
 (@idActorToro, @idPeliGatoBotas),
 (@idActorMarie, @idPeliGatoBotas),
 (@idActorRich, @idPeliGatoBotas),
 -- EL gato con botas: El ultimo deseo
 (@idActorBandera, @idPeliGatoDeseo),
 (@idActorHayek, @idPeliGatoDeseo),
 (@idActorGuillen, @idPeliGatoDeseo),
 (@idActorMoura, @idPeliGatoDeseo),
 (@idActorWagner, @idPeliGatoDeseo),
 (@idActorPugh, @idPeliGatoDeseo),
 (@idActorColman, @idPeliGatoDeseo),
 (@idActorWinstone, @idPeliGatoDeseo)
 /*-- Megalodon 1
 (@idActorStatham, @idPeliMegalodon),
 (@idActorLi, @idPeliMegalodon),
 (@idActorWilson, @idPeliMegalodon),
 (@idActorCurtis, @idPeliMegalodon),
 (@idActorChao, @idPeliMegalodon),
 (@idActorRose, @idPeliMegalodon),
 (@idActorKennedy, @idPeliMegalodon),
 (@idActorTaylor, @idPeliMegalodon),
 -- Megalodon 2
 (@idActorWilson, @idPeliMegalodon2),
 (@idActorRose, @idPeliMegalodon2),
 (@idActorWu, @idPeliMegalodon2),
 (@idActorCai, @idPeliMegalodon2),
 (@idActorSegio, @idPeliMegalodon2),
 (@idActorSamuels, @idPeliMegalodon2),
 (@idActorMahut, @idPeliMegalodon2),
 -- El origen de los guardianes
 (@idActorPine, @idPeliGuardianes),
 (@idActorLaw, @idPeliGuardianes),
 (@idActorJackman, @idPeliGuardianes),
 (@idActorBaldwin, @idPeliGuardianes),
 (@idActorFisher, @idPeliGuardianes),
 (@idActorGoyo, @idPeliGuardianes)*/
;

commit;
