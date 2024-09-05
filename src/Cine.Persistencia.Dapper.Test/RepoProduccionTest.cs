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
        Assert.Contains(repos, prod => prod.Director == "Christopher Nolan");
    }
}
