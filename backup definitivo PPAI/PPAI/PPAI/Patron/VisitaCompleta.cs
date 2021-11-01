using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PPAI.Patron
{
    class VisitaCompleta : IEstrategiaCalculoDuracion
    {
        public double calcularDuracionEstimadaVisita(List<Exposicion> exposicionesSelecc)
        {
            double duracion = 0;
            foreach (Exposicion expo in exposicionesSelecc)
            {
                duracion += expo.calcularDuracionObrasExpuestas();
            }
            return duracion;
        }

    }
}
