using Cine.Core;
using Cine.Core.Persistencia;
using Cine.Persistencia.Dapper.Repos;

namespace Cine.Persistencia.Dapper.Test;
public class RepoProduccionTest : TestBase
{
    readonly IRepoProduccion repo;
    public RepoProduccionTest() : base () 
       => repo = new RepoProduccion (Conexion);
       [Fact]
    public void TraerProduccionOK()
    {
        var repos = repo.TraerElementos();
        Assert.Contains(repos, prod => prod.IdProduccion == 1);
    }
    
    [Fact]
    public void AltaProduccionOK () {
        byte idproduccion = 5;
        byte idestudio = 1;
        string productor = "Kathleen Kennedy";
        string director = "J.J. Abrams";
        string guion = "Lawrence Kasdan, J.J. Abrams, Michael Arndt";
        string vestuario = "Michael Kaplan";
        string sonido = "David Acord, Matthew Wood";
        string musica = "John Williams";
        decimal presupuesto = 245000000;

        var altaproStarwars7 = new Produccion (idproduccion, idestudio, productor, director, guion, vestuario, sonido, presupuesto, musica) 
        {
            IdProduccion = idproduccion,
            IdEstudio = idestudio,
            Productor = productor,
            Director = director,
            Guion = guion,
            Vestuario = vestuario,
            Sonido = sonido,
            Musica = musica
        };        
    }
}
