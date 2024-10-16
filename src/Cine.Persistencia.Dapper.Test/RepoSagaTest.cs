using Cine.Core;
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

    [Fact]
    public void AltaSagaStarWars ()
    {
        byte idSaga = 3;
        byte idPelicula = 4 ;
        byte numero_saga = 2;
        string nombre = "star wars saga";

        var altaSagaStarWars = new Saga (idSaga, numero_saga,idPelicula,nombre) 
        {
            IdSaga = idSaga,
            NSaga = numero_saga,
            IdPelicula = idPelicula,
            NombreSaga = nombre
        };
        
    }

    [Fact]
    public void AltaSagaStarWars8 ()
    {
        byte idSaga = 4;
        byte idPelicula = 5 ;
        byte numero_saga = 2;
        string nombre = "star wars saga";

        var altaSagaStarWars = new Saga (idSaga, numero_saga,idPelicula,nombre) 
        {
            IdSaga = idSaga,
            NSaga = numero_saga,
            IdPelicula = idPelicula,
            NombreSaga = nombre
        };
    }

}
