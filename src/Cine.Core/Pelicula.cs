namespace Cine.Core;

public class Pelicula
{

    public Pelicula (UInt32 idPelicula, Byte idProduccion, String nombre, DateTime estreno, String descripcion, 
            Byte calificacion, TimeSpan duracion, Byte restrincion, UInt64 recaudado, IEnumerable<Trailer> trailers, IEnumerable<Actor> actores)
    {
        IdPelicula = idPelicula;
        IdProduccion = idProduccion;
        Nombre = nombre;
        Estreno = estreno;
        Descripcion = descripcion;
        Calificacion = calificacion;
        Duracion = duracion;
        Restriccion = restrincion;
        Recaudado = recaudado;
        Trailers = trailers;
        Actores = actores;
    }
    public UInt32 IdPelicula { get ; set ; }
    public Byte IdProduccion { get ; set ; }
    public String Nombre { get ; set ; }
    public DateTime Estreno { get ; set ; }
    public String Descripcion { get ; set ; }
    public Byte Calificacion { get ; set ; }
    public TimeSpan Duracion { get ; set ; }
    public Byte Restriccion { get ; set ; }
    public UInt64 Recaudado { get ; set ; }
    public IEnumerable<Trailer> Trailers { get ; set ; }
    public IEnumerable<Actor> Actores { get; set; }
    
    public Trailer trailer { get ; set ; }
    public Actor actor { get ; set ; }
    public Produccion produccion { get ; set ; }
}
