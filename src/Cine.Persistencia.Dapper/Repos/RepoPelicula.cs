

namespace Cine.Persistencia.Dapper.Repos;

public class RepoPelicula : RepoBase, IRepoPelicula
{
    public RepoPelicula(IDbConnection conexion) : base(conexion)
    {

    }

    public void Alta(Pelicula pelicula)
    {
        var parametros = new DynamicParameters();
        parametros.Add("unidPelicula", direction: ParameterDirection.Output);
        parametros.Add("unidProduccion", pelicula.IdProduccion);
        parametros.Add("unnombre", pelicula.Nombre);
        parametros.Add("unestreno", pelicula.Estreno);
        parametros.Add("unadescripcion", pelicula.Descripcion);
        parametros.Add("unacalificacion", pelicula.Calificacion);
        parametros.Add("unaduracion", pelicula.Duracion);
        parametros.Add("unarestrincion", pelicula.Restriccion);
        parametros.Add("unrecaudado", pelicula.Recaudado);

        Conexion.Execute("InsPelicula", parametros);

        pelicula.IdPelicula = parametros.Get<byte>("unidPelicula");
    }

    public IEnumerable<Pelicula> TraerElementos()
    {
        var pelicula = Conexion.Query<Pelicula>(queryProduccion);
        return pelicula;
    }

    private static readonly string queryProduccion
     = @"Select idPelicula, idProduccion, Pelicula.nombre 
        From Pelicula
        join Produccion using (idProduccion)
        ";

    public List<Pelicula> TraerPeliProdu()
    {
        var pelicula = Conexion.Query<Pelicula, Produccion, Pelicula>
           (queryProduccion,
           (pelicula, produccion) =>
           {
               pelicula.Produccion = produccion;
               return pelicula;
           },
           splitOn: "idProduccion")
           .ToList();
        return pelicula;
    }
}
