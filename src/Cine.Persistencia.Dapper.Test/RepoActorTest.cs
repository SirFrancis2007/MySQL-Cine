using Cine.Core.Persistencia;
using Cine.Persistencia.Dapper.Repos;

namespace Cine.Persistencia.Dapper.Test.obj;

public class RepoActorTest : TestBase
{
    readonly IRepoActor repo;

    public RepoActorTest() : base()
    {
        repo = new RepoActor(Conexion);
    }

    [Fact]

    public void TraerActorOk ()
    {
        var repos = repo.TraerElementos();
        Assert.Contains (repos, act => act.Apellido == "Bell" && act.idActor == 1);
    }

    
}
