

namespace Cine.Persistencia.Dapper.Repos;

public class RepoPelicula : RepoBase, IRepoPelicula
{
    public RepoPelicula(IDbConnection conexion) : base(conexion)
    {
        
    }

    public void Alta(Pelicula pelicula)
    {
        var parametros = new DynamicParameters();
        parametros.Add ("unidPelicula", ParameterDirection.Output);
        parametros.Add ("unidProduccion", pelicula.IdProduccion);
        parametros.Add ("unnombre", pelicula.Nombre);
        parametros.Add ("unestreno", pelicula.Estreno);
        parametros.Add ("unadescripcion", pelicula.Descripcion);
        parametros.Add ("unacalificacion", pelicula.Calificacion);
        parametros.Add ("unaduracion", pelicula.Duracion);
        parametros.Add ("unarestrincion", pelicula.Restriccion);
        parametros.Add ("unrecaudado", pelicula.Recaudado);

         Conexion.Execute("InsPelicula", parametros);

         pelicula.IdPelicula= parametros.Get<byte>("unidPelicula");
    }

    public IEnumerable<Pelicula> TraerElementos()
    {
        var query = @"SELECT * FROM Pelicula";
        var pelicula = Conexion.Query<Pelicula>(query);
        return pelicula;
    }
}
