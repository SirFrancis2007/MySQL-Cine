

namespace Cine.Persistencia.Dapper.Repos;

public class RepoProduccion : RepoBase, IRepoProduccion
{
    public RepoProduccion(IDbConnection conexion) : base(conexion)
    {
    }

    public void Alta(Produccion produccion)
    {
        var parametros = new DynamicParameters();
        parametros.Add("unidProduccion", ParameterDirection.Output);
        parametros.Add("unidEstudio", produccion.idestudio);
        parametros.Add("unDirector_General", produccion.director);
        parametros.Add("unGuiom", produccion.guion);
        parametros.Add("unProductor", produccion.Productor);
        parametros.Add("unVestuario", produccion.vestuario);
        parametros.Add("unSonido", produccion.sonido);
        parametros.Add("unaMusica", produccion.Musica);
        parametros.Add("unPresupuesto", produccion.presupuesto);

        Conexion.Execute("InsProduccion", parametros);

        produccion.idproduccion= parametros.Get<byte>("unidProduccion");
    }

    public IEnumerable<Produccion> TraerElementos()
    {
         var query = @"SELECT * FROM Produccion";
        var Produccion = Conexion.Query<Produccion>(query);
        return Produccion;
    }
}
