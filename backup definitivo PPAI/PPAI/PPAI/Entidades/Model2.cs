using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace PPAI.Entidades
{
    public partial class Model2 : DbContext
    {
        public Model2()
            : base("name=Model2")
        {
        }
        // tuve que agregar esto porque tenia problemas en el metodo para cuano busca las exposiciones temporales
        public virtual DbSet<PublicosXExposicion> PublicosXExposicion { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
