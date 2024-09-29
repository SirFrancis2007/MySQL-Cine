

namespace Cine.Persistencia.Dapper.Repos;

public class RepoProduccion : RepoBase, IRepoProduccion
{
    public RepoProduccion(IDbConnection conexion) : base(conexion)
    {
    }

    public void Alta(Produccion produccion)
    {
        var parametros = new DynamicParameters();
        parametros.Add("unidProduccion", direction: ParameterDirection.Output);
        parametros.Add("unidEstudio", produccion.IdEstudio);
        parametros.Add("unDirector_General", produccion.Director);
        parametros.Add("unGuion", produccion.Guion);
        parametros.Add("unProductor", produccion.Productor);
        parametros.Add("unVestuario", produccion.Vestuario);
        parametros.Add("unSonido", produccion.Sonido);
        parametros.Add("unPresupuesto", produccion.Presupuesto);
        parametros.Add("unaMusica", produccion.Musica);

        Conexion.Execute("InsProduccion", parametros);

        produccion.IdProduccion = parametros.Get<byte>("unidProduccion");
    }

    public IEnumerable<Produccion> TraerElementos()
    {
        var query = @"SELECT * FROM Produccion";
        var producciones = Conexion.Query<Produccion>(query);
        return producciones;
    }
}
