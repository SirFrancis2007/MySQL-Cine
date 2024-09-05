namespace Cine.Core;

public class Trailer
{
    public Trailer( byte idTrailer , byte idPelicula , byte idGenero , Genero genero , string nombre , TimeOnly duracion )
    {
        IdTrailer = IdTrailer;
        IdPelicula = idPelicula;
        IdGenero = idGenero ;
        Genero = genero ;
        Nombre = nombre ;
        Duracion = duracion ;
    }

    public byte IdTrailer { get ; set ; }
    public byte IdPelicula { get ; set ; }
    public byte IdGenero { get ; set ; }
    public Genero Genero { get ; set ; }
    public string Nombre { get ; set ; }
    public TimeOnly Duracion { get ; set ; }
}
