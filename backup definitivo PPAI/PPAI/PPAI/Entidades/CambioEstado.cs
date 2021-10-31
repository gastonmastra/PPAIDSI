namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CambioEstado")]
    public partial class CambioEstado
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public CambioEstado()
        {
            ReservaVisita = new HashSet<ReservaVisita>();
        }

        public DateTime? fechaHoraFin { get; set; }

        [Key]
        [Column(Order = 0)]
        public DateTime fechaHoraInicio { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ordId { get; set; }

        public int? idEstado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReservaVisita> ReservaVisita { get; set; }

        public virtual Estado Estado { get; set; }
    }
}
