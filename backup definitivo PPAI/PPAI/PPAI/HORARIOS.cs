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
    
    public partial class HORARIOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HORARIOS()
        {
            this.Empleado = new HashSet<Empleado>();
        }
    
        public int idHorario { get; set; }
        public System.TimeSpan horaSalida { get; set; }
        public System.TimeSpan horaIngreso { get; set; }
        public string diaSemana { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Empleado> Empleado { get; set; }

        public bool trabajaDentroDiaYHorario(int horaReserva, DateTime fechaReserva)
        {
            if (this.horaIngreso.Hours < horaReserva &&
                this.horaSalida.Hours > horaReserva &&
                this.diaSemana.ToString() == fechaReserva.DayOfWeek.ToString())
            {
                return true;
            }
            return false;
        }
    }
}
