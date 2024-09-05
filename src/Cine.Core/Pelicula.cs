namespace Cine.Core;

public class Pelicula
{

    public Pelicula(byte idPelicula, byte idProduccion, string nombre, DateOnly estreno, string descripcion, byte calificacion, TimeOnly duracion, byte restriccion,ulong recaudado, IEnumerable<Trailer> trailers, IEnumerable<Actor> actores)
    {
        IdPelicula = idPelicula;
        IdProduccion = idProduccion;
        Nombre = nombre;
        Estreno = estreno;
        Descripcion = descripcion;
        Calificacion = calificacion;
        Duracion = duracion;
        Restriccion = restriccion;
        Recaudado = recaudado;
        Trailers = trailers;
        Actores = actores;
    }
    public byte IdPelicula { get ; set ; }
    public byte IdProduccion { get ; set ; }
    public string Nombre { get ; set ; }
    public DateOnly Estreno { get ; set ; }
    public string Descripcion { get ; set ; }
    public byte Calificacion { get ; set ; }
    public TimeOnly Duracion { get ; set ; }
    public byte Restriccion { get ; set ; }
    public ulong Recaudado { get ; set ; }
    public IEnumerable<Trailer> Trailers { get ; set ; }
    public IEnumerable<Actor> Actores { get; set; }
    
    public Trailer trailer { get ; set ; }
    public Actor actor { get ; set ; }
    public Produccion produccion { get ; set ; }
}
