using Cine.Core;
using Cine.Core.Persistencia;
using Cine.Persistencia.Dapper.Repos;

namespace Cine.Persistencia.Dapper.Test;

public class RepoEstudioTest : TestBase
{
    readonly IRepoEstudio repo;
    public RepoEstudioTest() : base() => repo = new RepoEstudio(Conexion);
    [Fact]

    public void TraerEstudiosOK ()
    {
        var repos = repo.TraerElementos();
        Assert.Contains (repos, est => est.Nombre == "Disney" && est.IdEstudio == 1);
    }

    [Fact]
    public void AltaEstudioOK () {
        Byte idestudio = 3;
        string nombre = "Pixar";
        DateTime fundacion = new DateTime(1986,02,13);

        /*var altaestudiopixar = new Estudio ()
        {
            IdEstudio = idestudio,
            Nombre = nombre,
            Fundacion = fundacion
        };

        repo.Alta(altaestudiopixar);*/
    }
}

