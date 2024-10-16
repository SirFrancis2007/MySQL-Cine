using Cine.Core;
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

    [Fact]
    public void AltaTrailersw7 ()
    {
        byte idTrailer = 4 ;
        byte idPelicula = 4 ;
        byte idGenero = 1 ;
        string nombre = "Trailer Star Wars el despertar de la fuerza" ;
        TimeSpan duracion = new TimeSpan (00,01,38) ;

        var AltaTrailersw7 = new Trailer ( idTrailer,idPelicula,idGenero,nombre,duracion)
        {
            IdTrailer = idTrailer,
            IdPelicula = idPelicula,
            IdGenero = idGenero,
            Nombre = nombre,
            Duracion = duracion
        };
    }

    [Fact]
    public void AltaTrailersw8 ()
    {
        byte idTrailer = 5 ;
        byte idPelicula = 5 ;
        byte idGenero = 1 ;
        string nombre = "Trailer Star Wars: Los ultimos jedi" ;
        TimeSpan duracion = new TimeSpan (00,02,28) ;

        var AltaTrailersw7 = new Trailer ( idTrailer,idPelicula,idGenero,nombre,duracion)
        {
            IdTrailer = idTrailer,
            IdPelicula = idPelicula,
            IdGenero = idGenero,
            Nombre = nombre,
            Duracion = duracion
        };
    }
}
