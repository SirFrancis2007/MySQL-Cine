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

    [Fact]
    public void AltaActorRey()
    {
        byte idactor = 27;
        string nombre = "Daisy";
        string apellido = "Ridley";
        DateTime Fnacimiento = new DateTime(1992, 04, 10);
        char Sexo = 'F';
        string nacionalidad = "Inglesa";
        string rol = "Rey";

        var altaactorRey = new Actor()
        {
            idActor = idactor,
            Nombre = nombre,
            Apellido = apellido,
            FNacimiento = Fnacimiento,
            sexo = Sexo,
            Nacionalidad = nacionalidad,
            Rol = rol
        };

        repo.Alta(altaactorRey);

        var actores = repo.TraerElementos();
        Assert.Contains(actores, a => a.Nombre == nombre && a.Apellido == apellido);
    }

    [Fact]
    public void AltaActorMark()
    {
        byte idactor = 28;
        string nombre = "Mark";
        string apellido = "Hamill";
        DateTime Fnacimiento = new DateTime(1951, 09, 25);
        char Sexo = 'M';
        string nacionalidad = "Estadounidense";
        string rol = "Luke Skaywalker";

        var altaactorLuke = new Actor()
        {
            idActor = idactor,
            Nombre = nombre,
            Apellido = apellido,
            FNacimiento = Fnacimiento,
            sexo = Sexo,
            Nacionalidad = nacionalidad,
            Rol = rol
        };

        repo.Alta(altaactorLuke);

        var actores = repo.TraerElementos();
        Assert.Contains(actores, a => a.Nombre == nombre && a.Apellido == apellido);
    }

    [Fact]
    public void AltaActorKylo()
    {
        byte idactor = 29;
        string nombre = "Adam";
        string apellido = "Driver";
        DateTime Fnacimiento = new DateTime(1983, 11, 19);
        char Sexo = 'M';
        string nacionalidad = "Estadounidense";
        string rol = "Kylo Ren";

        var altaactorKylo = new Actor()
        {
            idActor = idactor,
            Nombre = nombre,
            Apellido = apellido,
            FNacimiento = Fnacimiento,
            sexo = Sexo,
            Nacionalidad = nacionalidad,
            Rol = rol
        };

        repo.Alta(altaactorKylo);

        var actores = repo.TraerElementos();
        Assert.Contains(actores, a => a.Nombre == nombre && a.Apellido == apellido);
    }
}
