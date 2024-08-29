namespace Cine.Core;

public class Saga
{
    public byte idSaga { get ; set ; }
    public byte idPelicula { get ; set ; }
    public byte NSaga { get ; set ; }
    public string Nombre { get ; set ; } 
    public IEnumerable<Pelicula> peliculas { get ; set ; }
    public Pelicula pelicula { get ; set ; }
}
