namespace Cine.Core;

public class Genero
{
    public Genero(byte idGenero = 0, string genero = "")
    {
        IdGenero = idGenero;
        Nombre = genero;
    }

    public byte IdGenero { get ; set ; }
    public string Nombre { get ; set ; }
    
}
