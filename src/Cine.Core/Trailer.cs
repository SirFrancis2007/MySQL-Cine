namespace Cine.Core;

public class Trailer
{
    public Trailer()
    {
        
    }

    public byte IdTrailer { get ; set ; }
    public byte IdPelicula { get ; set ; }
    public byte IdGenero { get ; set ; }
    public Genero Genero { get ; set ; }
    public string Nombre { get ; set ; }
    public TimeOnly Duracion { get ; set ; }
}
