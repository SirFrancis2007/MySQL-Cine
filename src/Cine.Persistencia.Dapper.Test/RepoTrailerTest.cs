using Cine.Core.Persistencia;
using Cine.Persistencia.Dapper.Test;

namespace Cine.Persistencia.Dapper;

public class RepoTrailerTest : TestBase
{
    readonly IRepoTrailer repo;

    public RepoTrailerTest () : base () => repo = new RepoTrailer (Conexion);
    [Fact]

    public void TraerElementosOK ()
    {
        var repos = repo.TraerElementos();
        Assert.Contains(repos, trai => trai.IdPelicula == 1);
    }

    
}
