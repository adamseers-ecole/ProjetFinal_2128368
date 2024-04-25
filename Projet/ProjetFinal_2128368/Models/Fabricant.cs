using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ProjetFinal_2128368.Models
{
    [Table("Fabricant", Schema = "Fabricants")]
    public partial class Fabricant
    {
        public Fabricant()
        {
            Instruments = new HashSet<Instrument>();
        }

        [Key]
        [Column("FabricantID")]
        public int FabricantId { get; set; }
        [StringLength(20)]
        public string Nom { get; set; } = null!;
        [Column(TypeName = "date")]
        public DateTime? DateFondation { get; set; }

        [InverseProperty("Fabricant")]
        public virtual ICollection<Instrument> Instruments { get; set; }
    }
}
