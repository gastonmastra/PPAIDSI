using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PPAI.Patron
{
    public interface IEstrategiaCalculoDuracion
    {
        int calcularDuracionEstimadaVisita(List<Exposicion> exposiciones);
    }
}
