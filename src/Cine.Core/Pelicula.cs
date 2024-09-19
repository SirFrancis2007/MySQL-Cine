namespace Cine.Core;

public class Pelicula
{

    public Pelicula(UInt32 idPelicula, byte idProduccion, string nombre, DateTime estreno, string descripcion, 
            byte calificacion, TimeSpan duracion, byte restrincion, UInt64 recaudado, IEnumerable<Trailer> trailers, IEnumerable<Actor> actores)
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
    public byte IdProduccion { get ; set ; }
    public string Nombre { get ; set ; }
    public DateTime Estreno { get ; set ; }
    public string Descripcion { get ; set ; }
    public byte Calificacion { get ; set ; }
    public TimeSpan Duracion { get ; set ; }
    public byte Restriccion { get ; set ; }
    public UInt64 Recaudado { get ; set ; }
    public IEnumerable<Trailer> Trailers { get ; set ; }
    public IEnumerable<Actor> Actores { get; set; }
    
    public Trailer trailer { get ; set ; }
    public Actor actor { get ; set ; }
    public Produccion produccion { get ; set ; }
}
