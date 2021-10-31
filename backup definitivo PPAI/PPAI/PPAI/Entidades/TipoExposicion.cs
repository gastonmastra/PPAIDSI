namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoExposicion")]
    public partial class TipoExposicion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TipoExposicion()
        {
            Exposicion = new HashSet<Exposicion>();
        }

        [Key]
        public int idTipoExposicion { get; set; }

        [StringLength(25)]
        public string nombreTipoExposicion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Exposicion> Exposicion { get; set; }

        public bool esTemporal()
        {
            if ((nombreTipoExposicion).TrimEnd() == "Temporal")
                return true;
            return false;
        }
    }
}
