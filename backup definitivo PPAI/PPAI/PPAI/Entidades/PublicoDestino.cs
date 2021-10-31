namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PublicoDestino")]
    public partial class PublicoDestino
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PublicoDestino()
        {
            Exposicion = new HashSet<Exposicion>();
            Exposicion1 = new HashSet<Exposicion>();
        }

        [StringLength(50)]
        public string caracteristicas { get; set; }

        [StringLength(25)]
        public string nombre { get; set; }

        [Key]
        public int idPublicoDestino { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Exposicion> Exposicion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Exposicion> Exposicion1 { get; set; }

        public string mostrarNombre()
        {
            return nombre;
        }
    }
}
