using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Super.Test;
/// <summary>
/// El objetivo de esta clase es brindar una instancia de Ado para los test
/// </summary>
public class TestAdo
{
    protected readonly IAdo Ado;
    private const string _cadena ="server=localhost;database=5to_Pelicula;user=5to_agbd;password=Trigg3rs!;";

    public TestAdo() => Ado = new AdoDapper(_cadena);
    public TestAdo(string cadena) => Ado = new AdoDapper(cadena);
}