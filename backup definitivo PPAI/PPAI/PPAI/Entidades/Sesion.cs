namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Sesion")]
    public partial class Sesion
    {
        public DateTime? fechaYHoraFin { get; set; }

        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idUsuario { get; set; }

        [Key]
        [Column(Order = 1)]
        public DateTime fechaYHoraInicio { get; set; }

        public virtual Usuario Usuario { get; set; }

        public Empleado buscarEmpleadoEnSesion()
        {
            return Usuario.buscarEmpleadoEnSesion();
        }
    }
}
