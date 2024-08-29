
namespace Cine.Persistencia.Dapper.Repos;

public class RepoActor:RepoBase, IRepoActor
{
    public RepoActor (IDbConnection conexion): base(conexion) {}

    public void Alta(Actor elemento)
    {
        // dar de alta los actores
        throw new NotImplementedException();
    }

    public IEnumerable<Actor> TraerElementos()
    {
        //Hacer la query de select actores.
        throw new NotImplementedException();
    }
}
