namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Usuario")]
    public partial class Usuario
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuario()
        {
            Sesion = new HashSet<Sesion>();
            Empleado = new Empleado();
        }

        public DateTime? caducidad { get; set; }

        [StringLength(25)]
        public string contraseña { get; set; }

        [StringLength(25)]
        public string nombre { get; set; }

        [Key]
        public int idUsuario { get; set; }

        [StringLength(20)]
        public string cuitEmpleado { get; set; }

        public virtual Empleado Empleado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Sesion> Sesion { get; set; }

        public Empleado buscarEmpleadoEnSesion()
        {
            return Empleado.getEmpleado();
        }
    }
}
