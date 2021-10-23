namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ReservaVisita")]
    public partial class ReservaVisita
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ReservaVisita()
        {
            AsignacionVisita = new HashSet<AsignacionVisita>();
        }

        public int? cantidadAlumno { get; set; }

        public int? cantidadAlumnoConfirmada { get; set; }

        public int? duracionEstimada { get; set; }

        public DateTime? fechaHoraCreacion { get; set; }

        public DateTime? fechaHoraReserva { get; set; }

        public TimeSpan? horaFinReal { get; set; }

        public TimeSpan? horaInicioReal { get; set; }

        [Key]
        [Column(Order = 0)]
        public int idReserva { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idSede { get; set; }

        public int? idEscuela { get; set; }

        public DateTime? fechaHoraInicio { get; set; }

        public int? ordId { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AsignacionVisita> AsignacionVisita { get; set; }

        public virtual CambioEstado CambioEstado { get; set; }

        public virtual Escuela Escuela { get; set; }

        public virtual ReservasXSede ReservasXSede { get; set; }

        public virtual Sede Sede { get; set; }


    }
}
