namespace Cine.Persistencia.Dapper.Repos;
public class RepoGenero : RepoBase, IRepoGenero
{
    public RepoGenero(IDbConnection conexion)
        : base(conexion) { }

    public void Alta(Genero genero)
    {
        //Vamos a declara la lista de params
        var parametros = new DynamicParameters();
        parametros.Add("unidGenero", direction: ParameterDirection.Output);
        parametros.Add("ungenero", genero.Nombre);

        Conexion.Execute("InsGenero", parametros);

        //Voy a tomar el valor output
        genero.IdGenero = parametros.Get<byte>("unidGenero");
    }

    public IEnumerable<Genero> TraerElementos()
    {
        var query = @"SELECT * FROM Genero";
        var generos = Conexion.Query<Genero>(query);
        return generos;
    }
}
