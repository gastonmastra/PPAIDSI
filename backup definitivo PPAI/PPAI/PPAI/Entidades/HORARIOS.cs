namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class HORARIOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public HORARIOS()
        {
            Empleado = new HashSet<Empleado>();
        }

        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idHorario { get; set; }

        public TimeSpan horaSalida { get; set; }

        public TimeSpan horaIngreso { get; set; }

        [StringLength(25)]
        public string diaSemana { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Empleado> Empleado { get; set; }
        public void trabajaDentroDeDiaYHorario()
        {

        }

        public bool trabajaDentroDiaYHorario(DateTime fechaYHora)
        {
            if (horaIngreso.Hours < fechaYHora.Hour && horaSalida.Hours > fechaYHora.Hour && diaSemana.ToString() == fechaYHora.DayOfWeek.ToString())
            {
                return true;
            }
            return false;
        }
    }
    }
}
