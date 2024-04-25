using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ProjetFinal_2128368.Models
{
    [Table("Materiau", Schema = "Materiaux")]
    public partial class Materiau
    {
        public Materiau()
        {
            Instruments = new HashSet<Instrument>();
        }

        [Key]
        [Column("MateriauID")]
        public int MateriauId { get; set; }
        [StringLength(20)]
        public string NomMateriau { get; set; } = null!;
        [Column(TypeName = "numeric(3, 2)")]
        public decimal Poids { get; set; }
        [Column("InstrumentID")]
        public int? InstrumentId { get; set; }

        [InverseProperty("Materiau")]
        public virtual ICollection<Instrument> Instruments { get; set; }
    }
}
