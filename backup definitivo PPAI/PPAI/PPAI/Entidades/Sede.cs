namespace PPAI
{
    using PPAI.Patron;
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    using System.Windows.Forms;

    [Table("Sede")]
    public partial class Sede
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Sede()
        {
            Empleado = new HashSet<Empleado>();
            Exposicion = new HashSet<Exposicion>();
            ReservaVisita = new HashSet<ReservaVisita>();
        }

        [Key]
        public int idSede { get; set; }

        public int? cantMaxPorGuia { get; set; }

        [StringLength(25)]
        public string nombre { get; set; }

        public int? cantMaximaVisitantes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Empleado> Empleado { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Exposicion> Exposicion { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ReservaVisita> ReservaVisita { get; set; }
        public IEstrategiaCalculoDuracion estrategia;

        public Sede getSede()
        {
            return this;
        }
        public int getCantidadMaxVisitantes()
        {
            return (int)cantMaximaVisitantes;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns>Deavuelve una lista con listas que contienen id, nombre, hsApertura, hsCierre y publicos de exposiciones</returns>
        public List<List<string>> buscarExposicionesTempVigentes()
        {
            List<List<string>> exposicionesTemporalesVigentes = new List<List<string>>();
            int count = Exposicion.Count;
            foreach (var expo in Exposicion)
            {
                if (expo.esVigente())
                {
                    List<string> publicos = expo.buscarExposicionesTemporales();
                    string id = publicos[0];
                    string nombre = publicos[1];
                    string hsApertura = expo.mostrarHorarioApertura();
                    string hsCierre = expo.mostrarHorarioCierre();
                    string soloPublicos = "";
                    for (int i = 2; i < publicos.Count; i++)
                    {
                        soloPublicos += publicos[i] + " ";
                    };
                    List<string> array = new List<string>
                    {
                        id, nombre, hsApertura, hsCierre, soloPublicos
                    };
                    exposicionesTemporalesVigentes.Add(array);
                }
            }
            return exposicionesTemporalesVigentes;
        }
        /// <summary>
        /// Suma las duraciones de todas las exposiciones seleccionadas
        /// </summary>
        /// <param name="exposicionesSeleccionadas"></param>
        /// <returns></returns>
        public int calcularDuracionEstimadaVisita(List<Exposicion> exposicionesSeleccionadas)
        {
            return estrategia.calcularDuracionEstimadaVisita(exposicionesSeleccionadas);
        }

        public List<Empleado> mostrarEmpleado(DateTime fechaYHora, int duracion)
        {
            List<Empleado> guias = new List<Empleado>();
            foreach (Empleado empleado in Empleado) //esto abarca el esDeSede 
            {
                var emp = empleado.mostrarCargo();
                if (emp != null)
                    guias.Add(empleado);
            };
            List<Empleado> guiasDisponibles = new List<Empleado>();
            foreach (Empleado guia in guias)
            {
                if (guia.trabajaDentroDiaYHorario(fechaYHora) && guia.tieneAsignacionParaDiaYHora(fechaYHora, duracion))
                {
                    guiasDisponibles.Add(guia);
                }
            }
            return guias;
        }

        public void asignarEstrategiaCalculo(IEstrategiaCalculoDuracion estrategiaSeleccionada)
        {
            estrategia = estrategiaSeleccionada;
        }

        public int getIdSede()
        {
            return idSede;
        }
    }
}
