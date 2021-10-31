namespace PPAI
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Exposicion")]
    public partial class Exposicion
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Exposicion()
        {
            DetalleExposicion = new HashSet<DetalleExposicion>();
            Obra = new HashSet<Obra>();
            PublicoDestino2 = new HashSet<PublicoDestino>();
        }

        public DateTime? fechaFin { get; set; }

        public DateTime? fechaFinReplanificada { get; set; }

        public DateTime? fechaInicio { get; set; }

        public DateTime? fechaInicioReplanificada { get; set; }

        public TimeSpan? horaApertura { get; set; }

        public TimeSpan? horaCierre { get; set; }

        [StringLength(10)]
        public string nombre { get; set; }

        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idExposicion { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int idSede { get; set; }

        public int? idTipoExposicion { get; set; }

        public int? publicoDestino { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DetalleExposicion> DetalleExposicion { get; set; }

        public virtual PublicoDestino PublicoDestino1 { get; set; }

        public virtual Sede Sede { get; set; }

        public virtual ExposicionesXSede ExposicionesXSede { get; set; }

        public virtual TipoExposicion TipoExposicion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Obra> Obra { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PublicoDestino> PublicoDestino2 { get; set; }

        public string mostrarHorarioApertura()
        {
            return horaApertura.ToString();
        }

        public string mostrarHorarioCierre()
        {
            return horaCierre.ToString();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns>Devuelve una lista con primer elemento idExposicion, segundo elemento nombre y luego nombres de publicos</returns>
        public List<string> buscarExposicionesTemporales()
        {
            List<string> nombresPublicos = new List<string>();
            
            if (TipoExposicion.esTemporal())
            {
                foreach (PublicoDestino publico in PublicoDestino2)
                {
                    string nombre = publico.mostrarNombre().TrimEnd();
                    nombresPublicos.Add(nombre);
                }
            }
            return nombresPublicos;
        }
        public Boolean esVigente()
        {
            if (this.fechaFin is null)
            {
                return true;
            }
            return false;
        }
        /// <summary>
        /// Suma las duraciones de todos los detalles de una exposicion
        /// </summary>
        /// <returns></returns>
        //public TimeSpan calcularDuracionObrasExpuestas()
        //{
        //    TimeSpan duracionExpo = new TimeSpan();
        //    foreach (DetalleExposicion detalle in DetalleExposicion)
        //    {
        //        duracionExpo += detalle.buscarDuracionExtObra();
        //    };
        //    return duracionExpo;
        //}
        public int calcularDuracionObrasExpuestas()
        {
            int duracionObras = 0;
            foreach (var detalle in DetalleExposicion)
            {
                duracionObras += detalle.buscarDuracionExtObra();
            }
            return duracionObras;
        }
    }
}
