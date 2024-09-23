using Cine.Core.Persistencia;
using Cine.Persistencia.Dapper.Repos;

namespace Cine.Persistencia.Dapper.Test;

public class RepoSagaTest : TestBase
{
    readonly IRepoSaga repo;

    public RepoSagaTest () : base () => repo = new RepoSaga (Conexion);
    [Fact]
    public void TraerElementosOK ()
    {
        var repos = repo.TraerElementos();
        Assert.Contains(repos, sag => sag.IdPelicula == 1 && sag.IdSaga == 1);
    }
}
