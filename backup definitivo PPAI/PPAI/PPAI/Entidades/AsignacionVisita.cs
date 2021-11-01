namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("AsignacionVisita")]
    public partial class AsignacionVisita
    {
        public DateTime fechaHoraFin { get; set; }

        [Required]
        public int guiaAsignado { get; set; }

        [Key]
        [Column(Order = 0)]
        public DateTime fechaHoraInicio { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idReserva { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idSede { get; set; }

        public virtual Empleado Empleado { get; set; }

        public virtual ReservaVisita ReservaVisita { get; set; }

        public bool getDatosFechaHora(DateTime fechaYHora, Empleado guia, double duracionIngresada)
        {
            double duracion = duracionIngresada / 60;

            if (guiaAsignado == guia.cuit &&
                fechaYHora.Hour >= fechaHoraFin.Hour &&
                (fechaYHora.Hour + duracion) <= fechaHoraInicio.Hour &&
                fechaHoraInicio.Day == fechaYHora.Day &&
                fechaHoraInicio.Month == fechaYHora.Month &&
                fechaHoraInicio.Year == fechaYHora.Year)
            {
                return false;
            }
            return true;
        }
    }
}