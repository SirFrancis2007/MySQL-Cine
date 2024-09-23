namespace Cine.Core;

public class Saga
{
    public Saga( Byte idSaga , Byte Numero_Saga , 
                UInt32 idPelicula ,  String Nombre , 
                IEnumerable<Pelicula> peliculas , Pelicula pelicula  )
    {
        IdSaga = idSaga ;
        NSaga = Numero_Saga ;
        IdPelicula = idPelicula ;
        NombreSaga = Nombre ;
        Peliculas = peliculas ;
        Pelicula = pelicula ;
    }   

     public Byte IdSaga { get ; set ; }
    public UInt32 IdPelicula { get ; set ; }
    public Byte NSaga { get ; set ; }
    public String NombreSaga { get ; set ; } 
    public IEnumerable<Pelicula> Peliculas { get ; set ; }
    public Pelicula Pelicula { get ; set ; }
}
