/*Funtions*/


/*Calcular el tiempo total de toda una saga*/


DELIMITER $$
Drop FUNCTION if EXISTS CalTiempoSaga
Create FUNCTION CalTiempoSaga (xidSaga TINYINT UNSIGNED)
                               returns time SQL READS Data
BEGIN
       Declare TiempoTotal Time;


       select SEC_TO_TIME(SUM(TIME_TO_SEC(duracion))) into TiempoTotal
       from `Pelicula`
       join `Saga` USING (`idPelicula`)
       where `idSaga` = xidSaga;


       return TiempoTotal;
END $$


/*Calcular el presupuesto recolectado de toda las pelicualas de un estudio*/


DELIMITER $$
Drop FUNCTION if EXISTS CalPresuEstudio
Create FUNCTION CalPresuEstudio (xidEstudio TINYINT UNSIGNED)
                               returns time SQL READS Data
BEGIN
       SELECT Sum(`Pelicula`.recaudado) into @totalrecaudado
       FROM `Pelicula`
       JOIN `Produccion`using (`idPelicula`)
       join `Estudio` USING (`idEstudio`)
       where idEstudio = xidEstudio;
       RETURN @totalrecaudado;
END $$
