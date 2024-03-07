Use Pelicula;

START TRANSACTION ;
    SET time_zone ='-03:00';
    
    insert into Genero (idGenero, Genero)
			values	(1, 'Ficcion'),
					(2, 'Fantasia'),
                    (3, 'Familiar'),
                    (4, 'Accion'),
                    (5, 'Aventura infantil')
	;
    
    insert into Estudio (idEstudio, Nombre, fundacion)
			values	(1, 'Disney', '1923-10-23'),
					(2, 'DreamWorld', '1994-10-12'),
					(3, 'Warner Bros', '1923-04-04'),
                    (4, 'Studio Ghibli', '1985-06-15')
	;
    
    insert into Produccion (idProduccion, idEstudio, Director_General, Productor, Vestuario, Guion, Sonido, Musica, Presupuesto)
			values
					(101, 1, 'Chris Buck-Jennifer Lee', ' Peter Del Vecho -  Jhon Lasseter', ' Edith Head - Hubert de Givenchy', 'Jennifer Lee', 'Odin Benitez', 'Christophe Beck - Armando Perez - Kristen Anderson Lopez', 150000000),
                    (102, 1, 'Chris Buck - Jennifer Lee', ' Peter Del Vecho', ' Edith Head - Hubert de Givenchy', 'Jennifer Lee', 'Aurora Aksnes', 'Kristen Anderson Lopez', 150000000),
                    (103, 3, 'Jon Turteltaub', 'Ben Wheatley', 'Amanda Neale', 'Dean Georgaris - Jon Hoeber - Erich Hoeber', null, 'Harry Gregson William', 139000000), -- Megadolon 1
                    (104, 3, 'Ben Wheatley', 'Lorenzo Di Bonaventura - Belle Avery', null, 'John Hoeber - Erich Hoeber - Dean Georgaris', null, 'Harry Gregson William', 139000000), -- Megadolon 2
                    (105, 2, 'Chris Miller', 'Joe Aguilar-Latifa Ouaou', null, 'Tom Wheeler', null, 'henry jackman', 130000000), -- Gato con Botas 1
                    (106, 2, 'Joel Crawford', 'Mark Swift-Chris Meledandri-Andrew Adamson', 'Januel Mercado', 'Januel Mercado', 'Heitor Pereira', null ,90000000),-- Gato con Botas 2
                    (107, 1, 'Henry Selick', 'Tim Burton-Denise Di Novi-Danny Elfman', 'Pete Kozachik', 'Caroline Thompson-Michael McDowell-Tim Burton', '	Stan Webb', 'Danny Elfman', 24000000), -- El extraño mundo de Jack
                    (108, 2, 'Peter Ramse', 'Christina Steinberg-Nancy Bernstein', null, 'David Lindsay-Abaire', 'Joyce Arrastia', 'Alexandre Desplat', 145000000), -- El origen de los guadianes
                    (109, 3, 'Christopher Nolan', 'Emma Thomas-Christopher Nolan-Lynda Obst', 'Mary Zophres', 'Jonathan Nolan-Christopher Nolan', 'Hoyte van Hoytema', 'Hans Zimmer', 165000000),
                    (110, 4, 'Hayao Miyazaki', 'Toshio Suzuki', null, 'Hayao Miyazaki', 'Joe Hisaishi', 'Takatsugu Muramatsu-Yuji Nomi', 19000000)
;        
        
	insert into Pelicula (idPelicula, idProduccion, nombre, estreno, descripcion, calificacion, duracion, restrincion, recaudado)
		values -- Sagas
			(1, 101, 'Frozen una aventura congelada', '2013-11-27', 'Anna y Kristoff desafían la naturaleza en una carrera para salvar a Elsa y al reino', 7.9, '01:42:00', 0, 1284219009),
			(2, 102, 'Frozen 2', '2019-01-02', 'Elsa se aventura en lo desconocido para descubrir verdades del pasado', 8.0, '01:48:00', 0, 1453683476),
			(3, 103, 'Megalodon', '2018-08-23', 'Jason Statham protagoniza este thriller submarino donde un grupo de científicos libera accidentalmente a un tiburón prehistórico gigante. Ahora el equipo debe arriesgar la vida en una carrera a contrarreloj para evitar una masacre masiva', 8.0, '01:53:00', 13, 530243742),
			(4, 104, 'Megalodon II: El gran abismo', '2023-08-03', 'Jason Statham y Wu Jing, el ícono mundial de las artes marciales, se sumergen en aguas desconocidas y lideran un equipo de investigación que explorará las profundidades más abismales del océano', 9.0, '01:55:00', 13, 395000000),
			(5, 105, 'El gato con botas', '2011-12-07', 'El famoso gato tiene la aventura de su vida cuando une fuerzas con Humpty Dumpty y la gata Kitty para robarse al ganso de los huevos de oro', 8.0, '01:30:00', 0, 554000000),
			(6, 106, 'El gato con botas: El último deseo', '2023-01-05', 'El Gato con Botas descubre que, debido a su pasión por la aventura, ha gastado ya 8 de sus 9 vidas. Por tanto, emprende un peligroso viaje en busca del legendario Último Deseo para solicitar que le restauren las vidas que ya perdió', 7.6, '01:40:00', 0, 485000000),
						
			-- Películas comunes 
			(7, 107, 'El extraño mundo de Jack', '1993-10-29', 'El rey de las calabazas, Jack Skellington, intenta apoderarse de la Navidad', 8.1, '01:19:00', 0, 95321981),
			(8, 108, 'El origen de los guardianes', '2012-11-22', 'Generación tras generación, guardianes inmortales como Santa Claus, el Conejo de Pascua y la Hada de los Dientes protegen a los niños del mundo de la oscuridad y la desesperación', 7.3, '01:37:00', 0, 306941670),
			(9, 109, 'Interestelar', '2014-11-06', 'Un equipo de exploradores viaja más allá de esta galaxia a través de un reciente descubierto agujero para descubrir si la humanidad tiene un futuro entre las estrellas', 9.0, '02:49:00', 13, 708000000),
			(10,110, 'El viaje de Chihiro', '2003-07-17', 'Chihiro es una niña caprichosa que debe adentrarse en un mundo de fantasía para poder salvar a sus padres, convertidos en cerdos', 4.8, '02:05:00', 10, 31680000)
;

    
    insert into Actor (idActor, idPelicula, Nombre, Apellido, fecha_nacimiento, sexo, nacionalidad, Rol, Personaje)
	Values  -- Frozen 1
			(1, 1, 'Kristen ', 'Bell', '1980-07-18', 'F', 'Estadounidense', 'Actriz de voz', 'Anna'),
			(2, 1, 'Idina ', 'Menzel', '1971-05-30', 'F', 'Estadounidense', 'Actriz de voz', 'Elsa'),
			(3, 1, 'Jonathan ', 'Groff', '1995-03-26', 'M', 'Estadounidense', 'Actor de voz', 'Kristoff'),
			(4, 1, 'Josh ', 'Gad', '1981-02-23', 'M', 'Estadounidense', 'Actor de voz', 'Olaf'),
			(5, 1, 'Alan ', 'Tudyk', '1971-03-16', 'M', 'Estadounidense', 'Actor de voz', 'Duque Weselton'),
			(6, 1, 'Eva ', 'Bella', '2002-06-04', 'F', 'Estadounidense', 'Actriz de voz', 'Joven Elsa'),
			(7, 1, 'Livvy ', 'Stubenraunch', '2005-04-18', 'F', 'Estadounidense', 'Actriz de voz', 'Joven Anna'),
			(8, 1, 'Santino ', 'Fontana', '1982-03-21', 'M', 'Estadounidense', 'Actor de voz', 'Hans'),
            -- Fronzen 2
			(9, 2, 'Kristen ', 'Bell', '1980-07-18', 'F', 'Estadounidense', 'Actriz de voz', 'Anna'),
			(10, 2, 'Idina ', 'Menzel', '1971-05-30', 'F', 'Estadounidense', 'Actriz de voz', 'Elsa'),
			(11, 2, 'Jonathan ', 'Groff', '1995-03-26', 'M', 'Estadounidense', 'Actor de voz', 'Kristoff'),
			(12, 2, 'Josh ', 'Gad', '1981-02-23', 'M', 'Estadounidense', 'Actor de voz', 'Olaf'),
			(13, 2, 'Sterling ', 'Brown', '1976-04-05', 'M', 'Estadounidense', 'Actor de voz', 'Matthias'),
			(14, 2, 'Evan ', 'Wood', '1987-09-07', 'F', 'Estadounidense', 'Actriz de voz', 'Iduna'),
			(15, 2, 'Martha ', 'Plimpton', '1970-11-16', 'F', 'Estadounidense', 'Actriz de voz', 'Yelana'),
			(16, 2, 'Rachel ', 'Matthews', '1993-10-25', 'F', 'Estadounidense', 'Actriz de voz', 'Honeymaren'),
            -- Interestelar
			(17, 9, 'Matthew ', 'McConaughey', '1969-11-04', 'M', 'Estadounidense', 'Actor Live action', 'Joseph Cooper'),
			(18, 9, 'Anne ', 'Hathaway', '1982-11-12', 'F', 'Estadounidense', 'Actriz Live action', 'Amelia Brand'),
			(19, 9, 'Mackenzie ', 'Foy', '2000-11-10', 'F', 'Estadounidense', 'Actriz Live action', 'Murph joven'),
			(20, 9, 'Jessica ', 'Chastain', '1977-03-24', 'F', 'Estadounidense', 'Actriz Live action', 'Murph adulta'),
			(21, 9, 'Michael ', 'Caine', '1933-03-14', 'M', 'Británico', 'Actor Live Action', 'Profesor Brand'),
			(22, 9, 'Casey', 'Affleck', '1975-08-12', 'M', 'Estadounidense', 'Actor Live Action', 'Tom'),
			(23, 9, 'Matt', 'Damon', '1970-10-08', 'M', 'Estadounidense', 'Actor Live Action', 'Dr. Mann'),
			(24, 9, 'John', 'Lithgow', '1945-10-19', 'M', 'Estadounidense', 'Actor Live Action', 'Donald'),
			(25, 9, 'Ellen', 'Burstyn', '1932-12-07', 'F', 'Estadounidense', 'Actriz Live action', 'Murph anciana'),
			(26, 9, 'David', 'Gyasi', '1980-01-02', 'M', 'Británica', 'Actor Live Action', 'Romilly'),
			(27, 9, 'Topher', 'Grace', '1978-07-12', 'M', 'Estadounidense', 'Actor Live Action', 'Getty'),
			(28, 9, 'Timothée', 'Chalamet', '1995-12-27', 'M', 'Estadounidense', 'Actor Live Action', 'Tom joven'),
			(29, 9, 'Josh', 'Stewart', '1977-02-06', 'M', 'Estadounidense', 'Actor de voz', 'CASE'),
            -- El viaje de Chihiro
		    (30, 10, 'Hiiragi', 'Rumi', '1987-08-01', 'F', 'Japonesa', 'Actriz de voz', 'Chihiro Ogino'),
			(31, 10, 'Hirino', 'Miyu', '1998-02-19', 'M', 'Japonés', 'Actor de voz', 'Haku'),
			(32, 10, 'Yoomi', 'Tamai', '1977-08-06', 'M', 'Japonesa', 'Actor de voz', 'Lin'),
			(33, 10, 'Ryūnosuke', 'Kamiki', '1993-05-19', 'M', 'Japonés', 'Actor de voz', 'Boh'),
			(34, 10, 'Natsuki', 'Mari', '1952-05-02', 'F', 'Japonesa', 'Actriz de voz', 'Yubaba/Zeniba'),
			(35, 10, 'Sugawara', 'Bunta', '1933-08-16', 'M', 'Japonés', 'Actor de voz', 'Kamaji'),
			(36, 10, 'Takashi', 'Naito', '1955-05-28', 'M', 'Japonés', 'Actor de voz', 'Akio Ogino'),
			(37, 10, 'Yasuko', 'Sawaguchi', '1965-06-28', 'F', 'Japonesa', 'Actriz de voz', 'Yugo Ogino'),
			(38, 10, 'Akio', 'Nakamura', '1960-03-03', 'M', 'Japonés', 'Actor de voz', 'Sin Cara'),
			(39, 10, 'Tsunehiko', 'Kamijo', '1940-03-07', 'M', 'Japonés', 'Actor de voz', 'Chichiyaku'),
			(40, 10, 'Koba', 'Hayashi', '1935-07-27', 'M', 'Japonés', 'Actor de voz', 'Espíritu del Río'),
			(41, 10, 'Tatsuya', 'Gashuin', '1950-12-10', 'M', 'Japonés', 'Actor de voz', 'Aoegeru'),
            -- El extraño mundo de jack
            (42, 7,'Chiris', 'Sarandon', '1942-07-24', 'M', 'Estadounidense', 'Actor de voz', 'Jack Skellington'),
            (43, 7,'Catherine', 'O´Hara', '1954-03-04', 'F', 'Estadounidense', 'Actriz de voz', 'Sally'),
            (44, 7,'Glenn', 'Shadix', '1953-04-15', 'M', 'Estadounidense', 'Actor de voz', 'Alcalde'),
            (45, 7,'Ken', 'Page', '1954-01-20', 'M', 'Estadounidense', 'Actor de voz', 'Oogie Boogie'),
            -- El gato con botas 1
			(46, 5, 'Antonio ', 'Bandera', '1960-08-10', 'M', 'Español', 'Actor de voz', 'El gato con botas'),
			(47, 5, 'Salma ', 'Hayek', '1996-09-02', 'F', 'Mexicana', 'Actriz de voz', 'Kitty payitas suave'),
			(48, 5, 'Zacharius', 'Galifianakis', '1969-11-01', 'M', 'Estadounidense', 'Actor de voz', 'Humpty Dumpty'),
			(49, 5, 'Billy Bob', 'Thornton', '1955-08-04', 'M', 'Estadounidense', 'Actor de voz', 'Jack'),
			(50, 5, 'Amy', 'Sedaris', '1961-03-29', 'F', 'Estadounidense', 'Actriz de voz', 'Jill'),
			(51, 5, 'Guillermo', 'Del Toro', '1964-10-09', 'M', 'Mexicano', 'Actor de voz', 'Comandante'),
			(52, 5, 'Constance', 'Marie', '1969-09-09', 'F', 'Estadounidense', 'Actriz de voz', 'Imelda'),
			(53, 5, 'Rich', 'Dietl', '1980-07-21', 'M', 'Estadounidense', 'Actor de voz', 'Bounty hunter'),
            -- El gato con botas: el ultimo deseo
			(54, 6, 'Antonio ', 'Bandera', '1960-08-10', 'M', 'Español', 'Actor de voz', 'El gato con botas'),
			(55, 6, 'Salma ', 'Hayek', '1996-09-02', 'F', 'Mexicana', 'Actriz de voz', 'Kitty payitas suave'),
			(56, 6, 'Harvey', 'Guillen', '1990-05-03', 'M', 'Estadounidense', 'Actor de voz', 'Perro'),
			(57, 6, 'Wagner ', 'Moura', '1976-06-27', 'M', 'Brasileño', 'Actor de voz', 'Lobo'),
			(58, 6, 'Wagner', 'Moura', '1976-06-27', 'M', 'Brasileño', 'Actor de voz', 'Bebe oso'),
			(59, 6, 'Florence', 'Pugh', '1996-01-03', 'F', 'Británica', 'Actriz de voz', 'Ricitos de oro'),
			(60, 6, 'Olivia', 'Colman', '1974-01-30', 'F', 'Británica', 'Actriz de voz', 'Mama oso'),
			(61, 6, 'Ray', 'Winstone', '1957-02-19', 'M', 'Británico', 'Actor de voz', 'Papa oso'),
            -- Megalodon
            (62, 3, 'Jason ', 'Statham', '1967-07-26', 'M', 'Britanico', 'Actor Live Action', 'Jonas Taylor'),
            (63, 3, 'Bingbing', 'Li', '1973-02-27', 'F','China', 'Actriz Live Action', 'Suyin'), 
            (64, 3,'Rainn', 'Wilson', '1968-01-20', 'M', 'Estadounidense', 'Actor Live Action', 'Morris'),
            (65, 3, 'Cliff ', 'Curtis', '1968-07-27', 'M', 'Neozelandes', 'Actor Live Action', 'Mac'),
            (66, 3, 'Winston', 'Chao', '1960-06-09','M', 'Taiwanes', 'Actor Live Action', 'Zhang'),
            (67, 3, 'Ruby', 'Rose', '1986-03-20', 'F', 'Australiana', 'Actriz Live Action', 'Jaxx'),
            (68, 3, 'Page ', 'Kennedy', '1976-11-22', 'M', 'Estadounidense', 'Actor Live Action', 'DJ'),
            (69, 3, 'Robert', 'Taylor II', '1963-11-12', 'M','Australiano', 'Actor Live Action','Heller'),
			-- Megalodon II
            (70, 4, 'Jason ', 'Statham', '1967-07-26', 'M', 'Britanico', 'Actor Live Action', 'Jonas Taylor'),
            (71, 4, 'Jing', 'Wu', '1974-04-03', 'F', 'China', 'Atriz live Action', 'Jiu Ming Zhang'),
            (72, 4, 'Shuya', 'Sophia Cai', '2008-04-22', 'F', 'China', 'Atriz live Action', 'Meiying'),
            (73, 4, 'Page ', 'Kennedy', '1976-11-22', 'M', 'Estadounidense', 'Actor Live Action', 'DJ'),
            (74, 4, 'Segio', 'Peris-Mencheta', '1975-04-07', 'M', 'Español', 'Actor Live Action', 'Montes'),
            (75, 4, 'Skyler', 'Samuels', '1994-04-14', 'F', 'Estadounidense', 'Actor Live Action', 'Jess'),
            (76, 4, 'Cliff ', 'Curtis', '1968-07-27', 'M', 'Neozelandes', 'Actor Live Action', 'Mac'),
            (77, 4, 'Melissanthi', 'Mahut', '1988-09-20', 'F', 'Canadiense', 'Atriz live Action', 'Rigas'),
			-- El origen de los guardianes:
			(78, 8, 'Christopher ', 'Pine', '1980-08-26', 'M', 'Estadouniodense', 'Actor de voz', 'Jack Fros'),
            (79, 8, 'David Jude', 'Law', '1972-12-29', 'M', 'Estadouniodense', 'Actor de voz', 'Pitch Black'),
            (80, 8, 'Michael', 'Jackman', '1968-10-12', 'M', 'Estadouniodense', 'Actor de voz', 'Conejo de pascuas'),
            (81, 8, 'Alexander', 'Baldwin', '1958-04-03', 'M', 'Estadouniodense', 'Actor de voz', 'Santa Claus'),
            (82, 8, 'Isla', 'Fisher', '1976-02-03', 'F', 'Australiana', 'Actor de voz', 'Hada de los dientes'),
            (83, 8, 'Dakota ', 'Goyo', '1999-08-22', 'M', 'Canadiense', 'Actor de voz', 'Jamie Bennet')
    ;
    
    insert into Saga(idSaga, Numero_Saga, idPelicula, Nombre)
    values
		(1, 1 ,1, 'Frozen una aventura congelada'),
        (2, 1 ,2, 'Frozen 2'),
        (3, 2 ,3, 'Megalodon'),
        (4, 2 ,4, 'Megalodon II: El gran abismo'),
        (5, 3 ,5, 'El gato con botas'),
        (6, 3 ,6, 'El gato con botas: el ultimo deseo')
;

    insert into Trailer(idTrailer, idGenero, idPelicula, Nombre, Duracion)
		values 
				(1, 3, 1, 'Frozen una aventura congelada', '00:01:30'), -- trailer 1
                (2, 3, 1, 'Frozen una aventura congelada', '00:02:25'), -- trailer 2
                (3, 3, 2, 'Frozen 2', '00:02:01'),
                (4, 4, 3, 'Megalodon', '00:02:25'),
                (5, 4, 4, 'Megalodon II: El gran abismo', '00:03:04'),
                (6, 5, 5, 'El gato con botas', '00:02.00'),
                (7, 5, 6, 'El gato con botas: el ultimo deseo', '00:02:30'),
                (8, 2, 7, 'El extraño mundo de Jack', '00:01:26'),
                (9, 2, 8, 'El origen de los guardianes', '00:02:25'),
                (10, 2, 8, 'El origen de los guardianes', '00:02:30'),
                (11, 1, 9, 'Interestelar', '00:01:39'), -- trailer 1
				(12, 1, 9, 'Interestelar', '00:02:20'), -- trailer 2
				(13, 1, 9, 'Interestelar', '00:02:26'), -- trailer 3
                (14, 1, 9, 'Interestelar', '00:02:19'), -- tailer 4
                (15, 2, 10, 'El viaje de Chihiro', '00:01:37')
;
    
    
commit;
