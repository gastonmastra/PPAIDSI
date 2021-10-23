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
        [StringLength(20)]
        public string guiaAsignado { get; set; }

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
    }
}
