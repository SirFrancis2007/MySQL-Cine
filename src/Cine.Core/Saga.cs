namespace Cine.Core;

public class Saga
{
    public Saga( byte idSaga , byte idPelicula , byte nsaga , string nombre , IEnumerable<Pelicula> peliculas , Pelicula pelicula  )
{
    IdSaga = idSaga ;
    IdPelicula = idPelicula ;
    NSaga = nsaga ;
    Nombre = nombre ;
    Peliculas = peliculas ;
    Pelicula = pelicula ;

}

    public byte IdSaga { get ; set ; }
    public byte IdPelicula { get ; set ; }
    public byte NSaga { get ; set ; }
    public string Nombre { get ; set ; } 
    public IEnumerable<Pelicula> Peliculas { get ; set ; }
    public Pelicula Pelicula { get ; set ; }
}
