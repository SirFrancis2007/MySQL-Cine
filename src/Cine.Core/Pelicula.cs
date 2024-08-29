namespace Cine.Core;

public class Pelicula
{
    public string Nombre { get ; set ; }
    public DateOnly Estreno { get ; set ; }
    public string Descripcion { get ; set ; }
    public byte calificacion { get ; set ; }
    public TimeOnly Duracion { get ; set ; }
    public byte restriccion { get ; set ; }
    public ulong recaudado { get ; set ; }
    public IEnumerable<Trailer> Trailers { get ; set ; }
    public IEnumerable<Actor> Actores { get; set; }

    public Trailer trailer { get ; set ; }
    public Actor actor { get ; set ; }
    public Produccion produccion { get ; set ; }
}
