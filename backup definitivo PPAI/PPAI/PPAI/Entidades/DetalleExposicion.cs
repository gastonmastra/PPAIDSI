namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DetalleExposicion")]
    public partial class DetalleExposicion
    {
        [StringLength(25)]
        public string lugarAsignado { get; set; }

        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idObra { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idExposicion { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idSede { get; set; }

        public virtual Obra Obra { get; set; }

        public virtual Exposicion Exposicion { get; set; }

        public double buscarDuracionExtObra()
        {
            return Obra.mostrarDuracionExtendida();
        }
    }
}
