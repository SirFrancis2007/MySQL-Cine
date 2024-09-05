namespace Cine.Persistencia.Dapper.Repos;

public class RepoEstudio:RepoBase, IRepoEstudio
{
    public RepoEstudio(IDbConnection conexion)
        : base(conexion) { }

    public void Alta(Estudio estudio)
    {
        var parametros = new DynamicParameters();
        parametros.Add("xidEstudio", ParameterDirection.Output);
        parametros.Add("xnombre", estudio.Nombre);
        parametros.Add("xfundacion", estudio.Fundacion);

        estudio.IdEstudio = parametros.Get<byte>("xidEstudio");    
    }

    public IEnumerable<Estudio> TraerElementos()
    {
        var query = @"SELECT * FROM Estudio";
        var estudio = Conexion.Query<Estudio>(query);
        return estudio;    
    }
}


