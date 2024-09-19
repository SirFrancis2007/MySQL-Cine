namespace Cine.Core;

public class Saga
{
    public Saga( Byte idSaga , Byte Numero_Saga , UInt32 idPelicula ,  String Nombre , IEnumerable<Pelicula> peliculas , Pelicula pelicula  )
{
    IdSaga = idSaga ;
    NSaga = Numero_Saga ;
    IdPelicula = idPelicula ;
    Nombre = Nombre ;
    Peliculas = peliculas ;
    Pelicula = pelicula ;

}

    public byte IdSaga { get ; set ; }
    public UInt32 IdPelicula { get ; set ; }
    public byte NSaga { get ; set ; }
    public string Nombre { get ; set ; } 
    public IEnumerable<Pelicula> Peliculas { get ; set ; }
    public Pelicula Pelicula { get ; set ; }
}
