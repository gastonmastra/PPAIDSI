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
        public ReservaVisita(List<Empleado> guiasSeleccionados, DateTime fechaHoraFin, DateTime fechaHoraInicio, Estado estado)
        {
            this.AsignacionVisita = new HashSet<AsignacionVisita>();
            foreach (var empleado in guiasSeleccionados)
            {
                crearAsignacionVisita(guiasSeleccionados, fechaHoraFin, fechaHoraInicio, estado);
            }
            crearCambioEstado(estado);
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

        public int getNroReserva()
        {
            return idReserva;
        }

        public void crearAsignacionVisita(List<Empleado> guiasSeleccionados, DateTime fechaHoraFin, DateTime fechaHoraInicio, Estado estado)
        {
            List<AsignacionVisita> coleccion = new List<AsignacionVisita>();
            foreach (Empleado e in guiasSeleccionados)
            {
                AsignacionVisita nueva = new AsignacionVisita(){
                    idSede = this.idSede, fechaHoraFin = fechaHoraFin, fechaHoraInicio = fechaHoraInicio, guiaAsignado = e.cuit, Empleado = e 
                };
                AsignacionVisita.Add(nueva);
            };
        }
        private void crearCambioEstado(Estado estado)
        {
            CambioEstado cambioEstado = new CambioEstado()
            {
                fechaHoraInicio = DateTime.Now,
                fechaHoraFin = null,
                Estado = estado,
                idEstado = estado.idEstado
                //ordId autogenerado
            };
            CambioEstado = cambioEstado;
        }
    }
}
