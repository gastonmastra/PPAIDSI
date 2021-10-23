namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Escuela")]
    public partial class Escuela
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Escuela()
        {
            ReservaVisita = new HashSet<ReservaVisita>();
        }

        [StringLength(10)]
        public string calle { get; set; }

        public int? numeroCalle { get; set; }

        [StringLength(50)]
        public string mail { get; set; }

        [StringLength(20)]
        public string nombre { get; set; }

        public int? telefCelular { get; set; }

        public int? telefFijo { get; set; }

        [Key]
        public int idEscuela { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReservaVisita> ReservaVisita { get; set; }

        public Escuela getEscuela()
        {
            return this;
        }
    }
}
