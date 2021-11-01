using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PPAI.Patron
{
    class VisitaPorExposicion : IEstrategiaCalculoDuracion
    {
        public double calcularDuracionEstimadaVisita(List<Exposicion> exposiciones)
        {
            double duracionTotal = 0;
            foreach (Exposicion expo in exposiciones)
            {
                duracionTotal += expo.calcularDuracionObrasExpuestas();
            }
            return duracionTotal;
        }
    }
}
