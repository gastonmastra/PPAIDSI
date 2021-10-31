using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace PPAI.Entidades
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Horario_X_Empleado> Horario_X_Empleado { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Horario_X_Empleado>()
                .Property(e => e.cuit)
                .IsUnicode(false);
        }
    }
}
