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

        public int cantMaxPorGuia { get; set; }

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
                    if (publicos.Count != 0)

                    {
                        string id = "";
                        string nombre = "";
                        string hsApertura = "";
                        string hsCierre = "";
                        string soloPublicos = "";

                        for (int i = 0; i < publicos.Count; i++)
                        {
                            id = (expo.idExposicion).ToString();
                            nombre = (expo.nombre).ToString();
                            hsApertura = expo.mostrarHorarioApertura();
                            hsCierre = expo.mostrarHorarioCierre();
                            soloPublicos = "";


                        }
                        for (int e = 0; e < publicos.Count; e++)
                        {
                            soloPublicos += publicos[e] + " / ";
                        };
                        List<string> array = new List<string>
                        {
                            id, nombre, hsApertura, hsCierre, soloPublicos
                        };
                        exposicionesTemporalesVigentes.Add(array);
                    }
                }
            }
            return exposicionesTemporalesVigentes;
        }
        /// <summary>
        /// Suma las duraciones de todas las exposiciones seleccionadas
        /// </summary>
        /// <param name="exposicionesSeleccionadas"></param>
        /// <returns></returns>
        public double calcularDuracionEstimadaVisita(List<Exposicion> exposicionesSeleccionadas)
        {
            return estrategia.calcularDuracionEstimadaVisita(exposicionesSeleccionadas);
        }

        public List<Empleado> mostrarEmpleado(DateTime fechaYHora, double duracion)
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
                if (guia.trabajaDentroDiaYHorario(fechaYHora) && !guia.tieneAsignacionParaDiaYHora(fechaYHora, duracion))
                {
                    guiasDisponibles.Add(guia);
                }
            }
            return guiasDisponibles;
        }

        public void asignarEstrategiaCalculo(IEstrategiaCalculoDuracion estrategiaSeleccionada)
        {
            estrategia = estrategiaSeleccionada;
        }

        public int getIdSede()
        {
            return idSede;
        }

        public double getCantMaxGuia()
        {
            return cantMaxPorGuia;
        }
    }
}
