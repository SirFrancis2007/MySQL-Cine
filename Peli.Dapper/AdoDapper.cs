using System.Data;
using Dapper;
using MySqlConnector;
using Super.Core;
using Super.Core.Product;

namespace Super.Dapper;

namespace Peli.Dapper
{
    public class AdoDapper: IAdo
    {
        private readonly IDbConnection _conexion;

        public AdoDapper(IDbConnection conexion) => this._conexion = conexion;

        public AdoDapper(string cadena) => _conexion = new MySqlConnection(cadena);
        {
            private static readonly string _queryAltaEstudio
            = @"INSERT INTO Estudio VALUES (@idEstudio, @Nombre, @Fundacion)";
            public void AltaEstudio(Estudio estudio)
                => _conexion.Execute(
                        _queryAltaEstudio,
                        new
                        {
                            idestudio = estudio.idEstudio;
                            nombre = estudio.Nombre;
                            fundacion = estudio.Fundacion;
                        }
                    );         

            private static readonly string _queryAltaEstudio
            = @"INSERT INTO Genero VALUES (@idGenero, @Genero)";
            public void AltageneroOK(Genero genero)
                => _conexion.Execute(
                        _queryAltaEstudio,
                        new
                        {
                            idgenero = genero.idGenero;
                            nombre = genero.genero;
                        }
                    );        

            private static readonly string _queryAltaEstudio
            = @"INSERT INTO Actor VALUES (@idActor, @Nombre, @Apellido, @fecha_nacimiento, @sexo, @nacionalidad, @rol)";
            public void AltaEstudio(Estudio estudio)
                => _conexion.Execute(
                        _queryAltaEstudio,
                        new
                        {
                            idactor = actor.idActor;
                            nombre = actor.Nombre;
                            apellido = actor.Apellido;
                            fecha_nacimiento = actor.fecha_nacimiento;
                            sexo = actor.sexo;
                            nacionalidad = actor.Nacionalidad;
                            rol = actor.Rol;
                        }
                    );           
        }
    }
}