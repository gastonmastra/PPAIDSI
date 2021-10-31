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
    
    public partial class ReservaVisita
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ReservaVisita()
        {
            this.AsignacionVisita = new HashSet<AsignacionVisita>();
        }
    
        public Nullable<int> cantidadAlumno { get; set; }
        public Nullable<int> cantidadAlumnoConfirmada { get; set; }
        public Nullable<int> duracionEstimada { get; set; }
        public Nullable<System.DateTime> fechaHoraCreacion { get; set; }
        public Nullable<System.DateTime> fechaHoraReserva { get; set; }
        public Nullable<System.TimeSpan> horaFinReal { get; set; }
        public Nullable<System.TimeSpan> horaInicioReal { get; set; }
        public int idReserva { get; set; }
        public int idSede { get; set; }
        public Nullable<int> idEscuela { get; set; }
        public Nullable<System.DateTime> fechaHoraInicio { get; set; }
        public Nullable<int> ordId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<AsignacionVisita> AsignacionVisita { get; set; }
        public virtual CambioEstado CambioEstado { get; set; }
        public virtual Escuela Escuela { get; set; }
        public virtual ReservasXSede ReservasXSede { get; set; }
        public virtual Sede Sede { get; set; }

        public void crearAsignacionVisita(Empleado empleado,DateTime fechaHoraFin,DateTime fechaHoraInicio, Estado estado)
        {
            AsignacionVisita nueva = new AsignacionVisita();
            nueva.idReserva = this.idReserva;
            nueva.idSede = this.idSede;
            nueva.fechaHoraInicio = fechaHoraInicio;
            nueva.fechaHoraFin = fechaHoraFin; 
            nueva.guiaAsignado = empleado.cuit;
            nueva.Empleado = empleado;
            crearCambioEstado(estado);

        }

        public void crearCambioEstado(Estado estado)
        {
            CambioEstado nuevo = new CambioEstado();
            nuevo.fechaHoraInicio = DateTime.Now;
            nuevo.fechaHoraFin = null;
            nuevo.Estado = estado;
            nuevo.idEstado = estado.idEstado;
            //ordId autogenerado
        }

    }
}