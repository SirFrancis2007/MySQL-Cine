namespace Cine.Core;

public class Pelicula
{

    public Pelicula (byte idPelicula, byte idProduccion, string nombre)
    {
        IdPelicula = idPelicula;
        IdProduccion = idProduccion;
        Nombre = nombre;
    }
    public byte IdPelicula { get ; set ; }
    public byte IdProduccion { get ; set ; }
    public string Nombre { get ; set ; }
    public DateTime Estreno { get ; set ; }
    public string Descripcion { get ; set ; }
    public byte Calificacion { get ; set ; }
    public TimeSpan Duracion { get ; set ; }
    public byte Restriccion { get ; set ; }
    public uint Recaudado { get ; set ; }
    public IEnumerable<Trailer> Trailers { get ; set ; }
    public IEnumerable<Actor> Actores { get; set; }
    public Produccion ?Produccion { get ; set ; }
}
