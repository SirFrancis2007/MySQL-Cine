using System.Data;
using Microsoft.Extensions.Configuration;
using MySqlConnector;

namespace Cine.Persistencia.Dapper.Test;
public abstract class TestBase
{
    protected readonly IDbConnection Conexion;
    public TestBase()
    {
        IConfiguration config = new ConfigurationBuilder()
            .AddJsonFile("appSettings.json", optional: true, reloadOnChange: true)
            .Build();
        string cadena = config.GetConnectionString("MySQL")!;
        Conexion = new MySqlConnection(cadena);
    }
}
