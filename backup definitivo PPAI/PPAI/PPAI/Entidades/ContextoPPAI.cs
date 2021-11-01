using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace PPAI
{
    public partial class ContextoPPAI : DbContext
    {
        public ContextoPPAI()
            : base("name=ContextoPPAI")
        {
        }

        public virtual DbSet<AsignacionVisita> AsignacionVisita { get; set; }
        public virtual DbSet<CambioEstado> CambioEstado { get; set; }
        public virtual DbSet<Cargo> Cargo { get; set; }
        public virtual DbSet<DetalleExposicion> DetalleExposicion { get; set; }
        public virtual DbSet<Empleado> Empleado { get; set; }
        public virtual DbSet<Escuela> Escuela { get; set; }
        public virtual DbSet<Estado> Estado { get; set; }
        public virtual DbSet<Exposicion> Exposicion { get; set; }
        public virtual DbSet<ExposicionesXSede> ExposicionesXSede { get; set; }
        public virtual DbSet<HORARIOS> HORARIOS { get; set; }
        public virtual DbSet<Obra> Obra { get; set; }
        public virtual DbSet<PublicoDestino> PublicoDestino { get; set; }
        public virtual DbSet<ReservasXSede> ReservasXSede { get; set; }
        public virtual DbSet<ReservaVisita> ReservaVisita { get; set; }
        public virtual DbSet<Sede> Sede { get; set; }
        public virtual DbSet<Sesion> Sesion { get; set; }
        public virtual DbSet<Sexos> Sexos { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TipoExposicion> TipoExposicion { get; set; }
        public virtual DbSet<TipoVisita> TipoVisita { get; set; }
        public virtual DbSet<Usuario> Usuario { get; set; }
        public virtual DbSet<Valuaciones> Valuaciones { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CambioEstado>()
                .HasMany(e => e.ReservaVisita)
                .WithOptional(e => e.CambioEstado)
                .HasForeignKey(e => new { e.fechaHoraInicio, e.ordId });

            modelBuilder.Entity<Cargo>()
                .Property(e => e.nombre)
                .IsUnicode(false);

            modelBuilder.Entity<Cargo>()
                .Property(e => e.descripcion)
                .IsUnicode(false);

            modelBuilder.Entity<Cargo>()
                .HasMany(e => e.Empleado)
                .WithOptional(e => e.Cargo)
                .HasForeignKey(e => e.cargo);

            modelBuilder.Entity<DetalleExposicion>()
                .Property(e => e.lugarAsignado)
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.apellido)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.calle)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .Property(e => e.mail)
                .IsUnicode(false);

            modelBuilder.Entity<Empleado>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.AsignacionVisita)
                .WithRequired(e => e.Empleado)
                .HasForeignKey(e => e.guiaAsignado)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Empleado>()
                .HasMany(e => e.Usuario)
                .WithRequired(e => e.Empleado)
                .HasForeignKey(e => e.cuitEmpleado);

            modelBuilder.Entity<Empleado>()
                 .HasMany(e => e.Horarios)
                 .WithMany(e => e.Empleado)
                 .Map(m => m.ToTable("Horario_X_Empleado").MapLeftKey("cuit").MapRightKey("idHorario"));

            modelBuilder.Entity<Escuela>()
                .Property(e => e.calle)
                .IsFixedLength();

            modelBuilder.Entity<Escuela>()
                .Property(e => e.mail)
                .IsUnicode(false);

            modelBuilder.Entity<Escuela>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Estado>()
                .Property(e => e.nombreEstado)
                .IsUnicode(false);

            modelBuilder.Entity<Estado>()
                .Property(e => e.ambitoEstado)
                .IsUnicode(false);

            modelBuilder.Entity<Exposicion>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Exposicion>()
                .HasMany(e => e.DetalleExposicion)
                .WithRequired(e => e.Exposicion)
                .HasForeignKey(e => new { e.idExposicion, e.idSede })
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Exposicion>()
                .HasOptional(e => e.ExposicionesXSede)
                .WithRequired(e => e.Exposicion);

            modelBuilder.Entity<Exposicion>()
                .HasMany(e => e.Obra)
                .WithOptional(e => e.Exposicion)
                .HasForeignKey(e => new { e.idExposicion, e.idSede });

            //modelBuilder.Entity<Exposicion>()
            //    .HasMany(e => e.PublicoDestino2)
            //    .WithMany(e => e.Exposicion1)
            //    .Map(m => m.ToTable("PublicosXExposicion").MapLeftKey(new[] { "Exposicion1_idExposicion", "Exposicion1_idSede" }).MapRightKey("PublicoDestino2_idPublicoDestino"));

            modelBuilder.Entity<PublicoDestino>()
              .HasMany(e => e.Exposicion1)
              .WithMany(e => e.PublicoDestino2)
              .Map(m => m.ToTable("PublicosXExposicion").MapLeftKey("idPublicoDestino").MapRightKey(new[] { "idExposicion", "idSede" }));

            modelBuilder.Entity<HORARIOS>()
                .Property(e => e.diaSemana)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .Property(e => e.descripcion)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .Property(e => e.nombreObra)
                .IsUnicode(false);

            modelBuilder.Entity<Obra>()
                .HasMany(e => e.DetalleExposicion)
                .WithRequired(e => e.Obra)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PublicoDestino>()
                .Property(e => e.caracteristicas)
                .IsFixedLength();

            modelBuilder.Entity<PublicoDestino>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<PublicoDestino>()
                .HasMany(e => e.Exposicion)
                .WithOptional(e => e.PublicoDestino1)
                .HasForeignKey(e => e.publicoDestino);

            modelBuilder.Entity<ReservaVisita>()
                .HasMany(e => e.AsignacionVisita)
                .WithRequired(e => e.ReservaVisita)
                .HasForeignKey(e => new { e.idReserva, e.idSede })
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ReservaVisita>()
                .HasOptional(e => e.ReservasXSede)
                .WithRequired(e => e.ReservaVisita);

            modelBuilder.Entity<Sede>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Sede>()
                .HasMany(e => e.Exposicion)
                .WithRequired(e => e.Sede)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Sede>()
                .HasMany(e => e.ReservaVisita)
                .WithRequired(e => e.Sede)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Sexos>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<TipoExposicion>()
                .Property(e => e.nombreTipoExposicion)
                .IsFixedLength();

            modelBuilder.Entity<TipoVisita>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Usuario>()
                .Property(e => e.contraseña)
                .IsFixedLength();

            modelBuilder.Entity<Usuario>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Usuario>()
                .HasMany(e => e.Sesion)
                .WithRequired(e => e.Usuario)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Valuaciones>()
                .Property(e => e.nombre)
                .IsFixedLength();

            modelBuilder.Entity<Valuaciones>()
                .HasMany(e => e.Obra)
                .WithOptional(e => e.Valuaciones)
                .HasForeignKey(e => e.valuacion);
        }
    }
}
