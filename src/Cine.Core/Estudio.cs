namespace Cine.Core;
public class Estudio
{
    public Estudio(byte idEstudio, string nombre, ushort fundacion, IEnumerable<Produccion> producciones, Produccion produccion)
    {
        IdEstudio = idEstudio;
        Nombre = nombre;
        Fundacion = fundacion;
        Producciones = producciones;
        Produccion = produccion;
    }

    public byte IdEstudio { get ; set ; }
    public string Nombre { get ; set ; } = string.Empty;
    public ushort Fundacion { get ; set ; }
    public IEnumerable<Produccion> Producciones { get; set; }
    public Produccion Produccion { get ; set ; }
}
