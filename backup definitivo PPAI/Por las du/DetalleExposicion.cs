//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PPAI
{
    using System;
    using System.Collections.Generic;
    
    public partial class DetalleExposicion
    {
        public string lugarAsignado { get; set; }
        public int idObra { get; set; }
        public int idExposicion { get; set; }
        public int idSede { get; set; }
    
        public virtual Obra Obra { get; set; }
        public virtual Exposicion Exposicion { get; set; }


        public int buscarDuracionExtObra(DetalleExposicion detalle)
        {
            return detalle.Obra.mostrarDuracionExtendida();
        }
    }
}
