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
    
    public partial class CambioEstado
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CambioEstado()
        {
            this.ReservaVisita = new HashSet<ReservaVisita>();
        }
    
        public Nullable<System.DateTime> fechaHoraFin { get; set; }
        public System.DateTime fechaHoraInicio { get; set; }
        public int ordId { get; set; }
        public Nullable<int> idEstado { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReservaVisita> ReservaVisita { get; set; }
        public virtual Estado Estado { get; set; }
    }
}