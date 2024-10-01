using Cine.Core;
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

    public void TraerActorOk()
    {
        var repos = repo.TraerElementos();
        Assert.Contains(repos, act => act.Apellido == "Bell" && act.idActor == 1);
    }

    [Fact]
    public void AltaactorOK()
    {
        byte idactor = 26;
        string nombre = "Antonio";
        string apellido = "Bandera";
        DateTime Fnacimiento = new DateTime(1960, 08, 10);
        char Sexo = 'M';
        string nacionalidad = "España";
        string rol = "Gato con botas";

        var altaactorBandera = new Actor()
        {
            idActor = idactor,
            Nombre = nombre,
            Apellido = apellido,
            FNacimiento = Fnacimiento,
            sexo = Sexo,
            Nacionalidad = nacionalidad,
            Rol = rol
        };

        repo.Alta(altaactorBandera);

        var actores = repo.TraerElementos();
        Assert.Contains(actores, a => a.Nombre == nombre && a.Apellido == apellido);
    }
}
