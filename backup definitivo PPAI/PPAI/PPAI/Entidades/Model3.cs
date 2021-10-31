using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace PPAI.Entidades
{
    public partial class Model3 : DbContext
    {
        public Model3()
            : base("name=Model3")
        {
        }

        public virtual DbSet<ReservaVisita> ReservaVisita { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
