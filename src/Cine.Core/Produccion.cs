namespace Cine.Core;

public class Produccion
{
    public Produccion( byte idProduccion , byte idEstudio , string productor , string director , string guion , string vestuario , string sonido , string musica , float presupuesto)
    {
        IdProduccion = idProduccion;
        IdEstudio = idEstudio ;
        Productor = productor ;
        Director = director ;
        Guion = guion ;
        Vestuario = vestuario ;
        Sonido = sonido ;
        Musica = musica ;
        Presupuesto = presupuesto ;
 
    }
    public byte IdProduccion { get ; set ;}
    public byte IdEstudio { get ; set ; }
    public string Productor { get ; set ; }
    public string Director { get ; set ;}
    public string Guion { get ; set ; }
    public string Vestuario { get ; set ; }
    public string Sonido { get ; set ; }
    public string Musica { get ; set ; }
    public float Presupuesto { get ; set ; }

}
