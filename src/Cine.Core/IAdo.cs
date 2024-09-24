using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Cine.Core;

public interface IAdo
{
    void AltaEstudio(Estudio estudio);
    List<Estudio> ObtenerEstudio();
    void AltaActor(Actor actor);
    List<Actor> ObtenerActor();
    void AltaGenero(Genero genero);
    List<Genero> ObtenerGenero();
}