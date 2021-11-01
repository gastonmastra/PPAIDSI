namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    

    [Table("Empleado")]
    public partial class Empleado
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Empleado()
        {
            AsignacionVisita = new HashSet<AsignacionVisita>();
            Usuario = new HashSet<Usuario>();
            Horarios = new HashSet<HORARIOS>();
        }

        [StringLength(10)]
        public string apellido { get; set; }

        public int? codigoValuacion { get; set; }

        [Key]
        public int cuit { get; set; }

        public int? dni { get; set; }

        [StringLength(10)]
        public string calle { get; set; }

        public int? numeroCalle { get; set; }

        public DateTime? fechaIngreso { get; set; }

        public DateTime? fechaNacimiento { get; set; }

        public string mail { get; set; }

        [StringLength(10)]
        public string nombre { get; set; }

        public int? idSexo { get; set; }

        public int? telefono { get; set; }

        public int? cargo { get; set; }

        public int? idSede { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AsignacionVisita> AsignacionVisita { get; set; }

        public virtual Cargo Cargo { get; set; }

        public virtual Sede Sede { get; set; }

        public virtual Sexos Sexo { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Usuario> Usuario { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
       [ForeignKey("idHorario")]
        public virtual ICollection<HORARIOS> Horarios { get; set; }

        public Empleado getEmpleado()
        {
            return this;
        }

        public Empleado mostrarCargo()
        {
            if (Cargo.esGuia())
                return this;
            return null;
        }

        public bool trabajaDentroDiaYHorario(DateTime fechaYHora)
        {
            foreach (var horario in Horarios)
            {
                if (horario.trabajaDentroDiaYHorario(fechaYHora))
                {
                    return true;
                }
            }
            return false;
        }

        public bool tieneAsignacionParaDiaYHora(DateTime fechaYHora, double duracion)
        {
            foreach (var asignacion in AsignacionVisita)
            {
                if (asignacion.getDatosFechaHora(fechaYHora, this, duracion))
                {
                    return true;
                }
            }
            return false;
        }
    }
}
