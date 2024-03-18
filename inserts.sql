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
			(9, 2, 'Sterling ', 'Brown', '1976-04-05', 'M', 'Estadounidense', 'Actor de voz', 'Matthias'),
			(10, 2, 'Evan ', 'Wood', '1987-09-07', 'F', 'Estadounidense', 'Actriz de voz', 'Iduna'),
			(11, 2, 'Martha ', 'Plimpton', '1970-11-16', 'F', 'Estadounidense', 'Actriz de voz', 'Yelana'),
			(12, 2, 'Rachel ', 'Matthews', '1993-10-25', 'F', 'Estadounidense', 'Actriz de voz', 'Honeymaren'),
			-- Interestelar
			(13, 9, 'Matthew ', 'McConaughey', '1969-11-04', 'M', 'Estadounidense', 'Actor Live action', 'Joseph Cooper'),
			(14, 9, 'Anne ', 'Hathaway', '1982-11-12', 'F', 'Estadounidense', 'Actriz Live action', 'Amelia Brand'),
			(15, 9, 'Mackenzie ', 'Foy', '2000-11-10', 'F', 'Estadounidense', 'Actriz Live action', 'Murph joven'),
			(16, 9, 'Jessica ', 'Chastain', '1977-03-24', 'F', 'Estadounidense', 'Actriz Live action', 'Murph adulta'),
			(17, 9, 'Michael ', 'Caine', '1933-03-14', 'M', 'Británico', 'Actor Live Action', 'Profesor Brand'),
			(18, 9, 'Casey', 'Affleck', '1975-08-12', 'M', 'Estadounidense', 'Actor Live Action', 'Tom'),
			(19, 9, 'Matt', 'Damon', '1970-10-08', 'M', 'Estadounidense', 'Actor Live Action', 'Dr. Mann'),
			(20, 9, 'John', 'Lithgow', '1945-10-19', 'M', 'Estadounidense', 'Actor Live Action', 'Donald'),
			(21, 9, 'Ellen', 'Burstyn', '1932-12-07', 'F', 'Estadounidense', 'Actriz Live action', 'Murph anciana'),
			(22, 9, 'David', 'Gyasi', '1980-01-02', 'M', 'Británica', 'Actor Live Action', 'Romilly'),
			(23, 9, 'Topher', 'Grace', '1978-07-12', 'M', 'Estadounidense', 'Actor Live Action', 'Getty'),
			(24, 9, 'Timothée', 'Chalamet', '1995-12-27', 'M', 'Estadounidense', 'Actor Live Action', 'Tom joven'),
			(25, 9, 'Josh', 'Stewart', '1977-02-06', 'M', 'Estadounidense', 'Actor de voz', 'CASE'),
			-- El viaje de Chihiro
			(26, 10, 'Hiiragi', 'Rumi', '1987-08-01', 'F', 'Japonesa', 'Actriz de voz', 'Chihiro Ogino'),
			(27, 10, 'Hirino', 'Miyu', '1998-02-19', 'M', 'Japonés', 'Actor de voz', 'Haku'),
			(28, 10, 'Yoomi', 'Tamai', '1977-08-06', 'M', 'Japonesa', 'Actor de voz', 'Lin'),
			(29, 10, 'Ryūnosuke', 'Kamiki', '1993-05-19', 'M', 'Japonés', 'Actor de voz', 'Boh'),
			(30, 10, 'Natsuki', 'Mari', '1952-05-02', 'F', 'Japonesa', 'Actriz de voz', 'Yubaba/Zeniba'),
			(31, 10, 'Sugawara', 'Bunta', '1933-08-16', 'M', 'Japonés', 'Actor de voz', 'Kamaji'),
			(32, 10, 'Takashi', 'Naito', '1955-05-28', 'M', 'Japonés', 'Actor de voz', 'Akio Ogino'),
			(33, 10, 'Yasuko', 'Sawaguchi', '1965-06-28', 'F', 'Japonesa', 'Actriz de voz', 'Yugo Ogino'),
			(34, 10, 'Akio', 'Nakamura', '1960-03-03', 'M', 'Japonés', 'Actor de voz', 'Sin Cara'),
			(35, 10, 'Tsunehiko', 'Kamijo', '1940-03-07', 'M', 'Japonés', 'Actor de voz', 'Chichiyaku'),
			(36, 10, 'Koba', 'Hayashi', '1935-07-27', 'M', 'Japonés', 'Actor de voz', 'Espíritu del Río'),
			(37, 10, 'Tatsuya', 'Gashuin', '1950-12-10', 'M', 'Japonés', 'Actor de voz', 'Aoegeru'),
			-- El extraño mundo de jack
			(38, 7,'Chiris', 'Sarandon', '1942-07-24', 'M', 'Estadounidense', 'Actor de voz', 'Jack Skellington'),
			(39, 7,'Catherine', 'O´Hara', '1954-03-04', 'F', 'Estadounidense', 'Actriz de voz', 'Sally'),
			(40, 7,'Glenn', 'Shadix', '1953-04-15', 'M', 'Estadounidense', 'Actor de voz', 'Alcalde'),
			(41, 7,'Ken', 'Page', '1954-01-20', 'M', 'Estadounidense', 'Actor de voz', 'Oogie Boogie'),
			-- El gato con botas 1
			(42, 5, 'Antonio ', 'Bandera', '1960-08-10', 'M', 'Español', 'Actor de voz', 'El gato con botas'),
			(43, 5, 'Salma ', 'Hayek', '1996-09-02', 'F', 'Mexicana', 'Actriz de voz', 'Kitty payitas suave'),
			(43, 5, 'Zacharius', 'Galifianakis', '1969-11-01', 'M', 'Estadounidense', 'Actor de voz', 'Humpty Dumpty'),
			(44, 5, 'Billy Bob', 'Thornton', '1955-08-04', 'M', 'Estadounidense', 'Actor de voz', 'Jack'),
			(45, 5, 'Amy', 'Sedaris', '1961-03-29', 'F', 'Estadounidense', 'Actriz de voz', 'Jill'),
			(46, 5, 'Guillermo', 'Del Toro', '1964-10-09', 'M', 'Mexicano', 'Actor de voz', 'Comandante'),
			(47, 5, 'Constance', 'Marie', '1969-09-09', 'F', 'Estadounidense', 'Actriz de voz', 'Imelda'),
			(48, 5, 'Rich', 'Dietl', '1980-07-21', 'M', 'Estadounidense', 'Actor de voz', 'Bounty hunter'),
			-- El gato con botas: el ultimo deseo
			(49, 6, 'Harvey', 'Guillen', '1990-05-03', 'M', 'Estadounidense', 'Actor de voz', 'Perro'),
			(50, 6, 'Wagner ', 'Moura', '1976-06-27', 'M', 'Brasileño', 'Actor de voz', 'Lobo'),
			(51, 6, 'Wagner', 'Moura', '1976-06-27', 'M', 'Brasileño', 'Actor de voz', 'Bebe oso'),
			(52, 6, 'Florence', 'Pugh', '1996-01-03', 'F', 'Británica', 'Actriz de voz', 'Ricitos de oro'),
			(53, 6, 'Olivia', 'Colman', '1974-01-30', 'F', 'Británica', 'Actriz de voz', 'Mama oso'),
			(54, 6, 'Ray', 'Winstone', '1957-02-19', 'M', 'Británico', 'Actor de voz', 'Papa oso'),
			-- Megalodon
			(55, 3, 'Jason ', 'Statham', '1967-07-26', 'M', 'Britanico', 'Actor Live Action', 'Jonas Taylor'),
			(56, 3, 'Bingbing', 'Li', '1973-02-27', 'F','China', 'Actriz Live Action', 'Suyin'),
			(57, 3,'Rainn', 'Wilson', '1968-01-20', 'M', 'Estadounidense', 'Actor Live Action', 'Morris'),
			(58, 3, 'Cliff ', 'Curtis', '1968-07-27', 'M', 'Neozelandes', 'Actor Live Action', 'Mac'),
			(59, 3, 'Winston', 'Chao', '1960-06-09','M', 'Taiwanes', 'Actor Live Action', 'Zhang'),
			(60, 3, 'Ruby', 'Rose', '1986-03-20', 'F', 'Australiana', 'Actriz Live Action', 'Jaxx'),
			(61, 3, 'Page ', 'Kennedy', '1976-11-22', 'M', 'Estadounidense', 'Actor Live Action', 'DJ'),
			(62, 3, 'Robert', 'Taylor II', '1963-11-12', 'M','Australiano', 'Actor Live Action','Heller'),
			-- Megalodon II
			(63, 4, 'Jing', 'Wu', '1974-04-03', 'F', 'China', 'Atriz live Action', 'Jiu Ming Zhang'),
			(65, 4, 'Shuya', 'Sophia Cai', '2008-04-22', 'F', 'China', 'Atriz live Action', 'Meiying'),
			(66, 4, 'Segio', 'Peris-Mencheta', '1975-04-07', 'M', 'Español', 'Actor Live Action', 'Montes'),
			(67, 4, 'Skyler', 'Samuels', '1994-04-14', 'F', 'Estadounidense', 'Actor Live Action', 'Jess'),
			(68, 4, 'Melissanthi', 'Mahut', '1988-09-20', 'F', 'Canadiense', 'Atriz live Action', 'Rigas'),
			-- El origen de los guardianes:
			(69, 8, 'Christopher ', 'Pine', '1980-08-26', 'M', 'Estadouniodense', 'Actor de voz', 'Jack Fros'),
			(70, 8, 'David Jude', 'Law', '1972-12-29', 'M', 'Estadouniodense', 'Actor de voz', 'Pitch Black'),
			(71, 8, 'Michael', 'Jackman', '1968-10-12', 'M', 'Estadouniodense', 'Actor de voz', 'Conejo de pascuas'),
			(72, 8, 'Alexander', 'Baldwin', '1958-04-03', 'M', 'Estadouniodense', 'Actor de voz', 'Santa Claus'),
			(73, 8, 'Isla', 'Fisher', '1976-02-03', 'F', 'Australiana', 'Actor de voz', 'Hada de los dientes'),
			(74, 8, 'Dakota ', 'Goyo', '1999-08-22', 'M', 'Canadiense', 'Actor de voz', 'Jamie Bennet')
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
    
	insert into Actor_Pelicula (idActor, idPelicula)
        values
		-- Frozen 1
			(1,1)
			(2,1)
			(3,1)
			(4,1)
			(5,1)
			(6,1)
			(7,1)
			(8,1)
		-- Frozen 2
			(1,2)
			(2,2)
			(3,2)
			(4,2)
			(9,2)
			(10,2)
			(11,2)
			(12,2)
		-- Interesellar
			(13, 9)
			(14, 9)
			(15, 9)
			(16, 9)
			(17, 9)
			(18, 9)
			(19, 9)
			(20, 9)
			(21, 9)
			(22, 9)
			(23, 9)
			(24, 9)
			(25, 9)
		-- El viaje de Chihiro
			(26, 10)
			(27, 10)
			(28, 10)
			(29, 10)
			(30, 10)
			(31, 10)
			(32, 10)
			(33, 10)
			(34, 10)
			(35, 10)
			(36, 10)
			(37, 10)
		-- El extraño mundo de Jack
			(38, 7)
			(39, 7)
			(40, 7)
			(41, 7)
		-- El gato con botas
			(42, 5)
			(43, 5)
			(43, 5)
			(44, 5)
			(45, 5)
			(46, 5)
			(47, 5)
			(48, 5)
		-- EL gato con botas: El ultimo deseo
			(42, 6)
			(43, 6)
			(49, 6)
			(50, 6)
			(51, 6)
			(52, 6)
			(53, 6)
			(54, 6)
		-- Megalodon 1
			(55, 3)
			(56, 3)
			(57, 3)
			(58, 3)
			(59, 3)
			(60, 3)
			(61, 3)
			(62, 3)
		-- Megalodon 2
			(55, 4)
			(58, 4)
			(61, 4)
			(63, 4)
			(65, 4)
			(66, 4)
			(67, 4)
			(68, 4)
		-- El origen de los guardianes
			(69, 8)
			(70, 8)
			(71, 8)
			(72, 8)
			(73, 8)
			(74, 8)
;

commit;
