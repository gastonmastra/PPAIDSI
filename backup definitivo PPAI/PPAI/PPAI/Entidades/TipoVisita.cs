namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TipoVisita")]
    public partial class TipoVisita
    {
        [StringLength(25)]
        public string nombre { get; set; }

        [Key]
        public int idTipoVisita { get; set; }

        public TipoVisita getTipoVisita()
        {
            return this;
        }
    }
}
