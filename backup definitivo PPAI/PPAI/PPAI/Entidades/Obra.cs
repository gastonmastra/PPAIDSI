namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Obra")]
    public partial class Obra
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Obra()
        {
            DetalleExposicion = new HashSet<DetalleExposicion>();
        }

        public int? alto { get; set; }

        public int? ancho { get; set; }

        public int? codigoSensor { get; set; }

        public string descripcion { get; set; }

        public int? duracionExtenida { get; set; } //en minutos

        public int? duracionResumida { get; set; }

        public DateTime? fechaCreacion { get; set; }

        public DateTime? fechaPrimerIngreso { get; set; }

        public string nombreObra { get; set; }

        public int? peso { get; set; }

        public TimeSpan mostrarDuracionExtendida()
        {
            double dur = Convert.ToDouble(duracionExtenida);
            TimeSpan duracionObra = TimeSpan.FromMinutes(dur);
            return duracionObra;
        }

        public int? valuacion { get; set; }

        [Key]
        public int idObra { get; set; }

        public int? idExposicion { get; set; }

        public int? idSede { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetalleExposicion> DetalleExposicion { get; set; }

        public virtual Exposicion Exposicion { get; set; }

        public virtual Valuaciones Valuaciones { get; set; }
    }
}
