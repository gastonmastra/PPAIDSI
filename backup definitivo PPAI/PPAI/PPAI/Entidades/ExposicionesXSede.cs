namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ExposicionesXSede")]
    public partial class ExposicionesXSede
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idSede { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idExposicion { get; set; }

        public DateTime? fechaHoraInicio { get; set; }

        public DateTime? fechaHoraFin { get; set; }

        public virtual Exposicion Exposicion { get; set; }
    }
}
