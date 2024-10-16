using Cine.Core;
using Cine.Core.Persistencia;
using Cine.Persistencia.Dapper.Repos;
using Xunit.Sdk;

namespace Cine.Persistencia.Dapper.Test;

public class RepoPeliculaTest : TestBase
{
    readonly IRepoPelicula repo;

    public RepoPeliculaTest () : base () => repo = new RepoPelicula(Conexion);

    [Fact]
    public void TraerPelisOK()
    {
        var repos = repo.TraerElementos();
        Assert.Contains(repos, peli => peli.IdPelicula == 1);
    }

    /*[Fact]
    public void TraerActoresDePelisOK()
    {
        var repos = repo.ActoresPelicula();
        Assert.Contains (repos,  =>  );
    }*/

    public void AltaPeliculaST7 ()
    {
        byte IdPelicula = 4;
        byte idproduccion = 5; 
        string Nombre = "star wars el despertar de la fuerza";
        DateTime Estreno = new DateTime(2015-12-14);
        string Descripcion = "Treinta años después de haber derrotado al Imperio, una nueva amenaza se cierne sobre la República. El terrible y enigmático guerrero Kylo Ren ha reunido un ejército de leales al Imperio, que se hace llamar la Primera Orden y ataca a la Alianza. La única esperanza para la galaxia es que una recogedora de chatarra, un stromtrooper fugado y un androide llamado BB-8 logren encontrar a tiempo al legendario jedi Luke Skywalker.";
        byte Calificacion = 6;
        TimeSpan Duracion = new TimeSpan(2, 16, 00);
        byte Restriccion = 12;
        uint recaudado = 2071310218;
    
        var altaStarWars7 = new Pelicula (IdPelicula, idproduccion, Nombre, Estreno, Descripcion, Calificacion,Duracion, Restriccion, recaudado)
        {
            IdPelicula = IdPelicula,
            IdProduccion = idproduccion,
            Nombre = Nombre,
            Estreno = Estreno,
            Descripcion = Descripcion,
            Calificacion = Calificacion,
            Restriccion = Restriccion,
            Recaudado = recaudado
        };
    }

        public void AltaPeliculaST8 ()
    {
        byte IdPelicula = 5;
        byte idproduccion = 6; 
        string Nombre = "star wars el ultimo jedi";
        DateTime Estreno = new DateTime(2015-12-15);
        string Descripcion = "Los últimos Jedi sigue a Rey mientras busca la ayuda de Luke Skywalker con la esperanza de cambiar el rumbo de la Resistencia en la lucha contra Kylo Ren y la Primera Orden, mientras que la General Leia Organa, Finn y Poe Dameron intentan escapar de un ataque de la Primera Orden a la menguante flota de la Resistencia.";
        byte Calificacion = 5;
        TimeSpan Duracion = new TimeSpan(2, 32, 00);
        byte Restriccion = 12;
        uint recaudado =  1332539889;
    
        var altaStarWars7 = new Pelicula (IdPelicula, idproduccion, Nombre, Estreno, Descripcion, Calificacion,Duracion, Restriccion, recaudado)
        {
            IdPelicula = IdPelicula,
            IdProduccion = idproduccion,
            Nombre = Nombre,
            Estreno = Estreno,
            Descripcion = Descripcion,
            Calificacion = Calificacion,
            Restriccion = Restriccion,
            Recaudado = recaudado
        };
    }
}
