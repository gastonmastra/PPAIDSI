namespace PPAI.Entidades
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Horario_X_Empleado
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(20)]
        public string cuit { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idHorario { get; set; }
    }
}
