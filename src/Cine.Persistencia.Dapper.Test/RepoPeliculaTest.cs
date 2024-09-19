using Cine.Core.Persistencia;
using Cine.Persistencia.Dapper.Repos;

namespace Cine.Persistencia.Dapper.Test;

public class RepoPeliculaTest : TestBase
{
    readonly IRepoPelicula repo;

    public RepoPeliculaTest () : base () => repo = new RepoPelicula(Conexion);

    [Fact]
    public void TraerGenerosOK()
    {
        var repos = repo.TraerElementos();
        Assert.Contains(repos, peli => peli.IdPelicula == 1);
    }
}
