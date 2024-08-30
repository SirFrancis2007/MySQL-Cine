

namespace Cine.Persistencia.Dapper.Repos;

public class RepoPelicula : RepoBase, IRepoPelicula
{
    public RepoPelicula(IDbConnection conexion) : base(conexion)
    {
    }

    public void Alta(Pelicula elemento)
    {
        throw new NotImplementedException();
    }

    public IEnumerable<Pelicula> TraerElementos()
    {
        throw new NotImplementedException();
    }
}
