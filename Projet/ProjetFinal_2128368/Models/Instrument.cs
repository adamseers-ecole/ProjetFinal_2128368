using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ProjetFinal_2128368.Models
{
    [Table("Instrument", Schema = "Instruments")]
    public partial class Instrument
    {
        [Key]
        [Column("InstrumentID")]
        public int InstrumentId { get; set; }
        [Column("FabricantID")]
        public int? FabricantId { get; set; }
        [StringLength(20)]
        public string? Modele { get; set; }
        [StringLength(20)]
        public string Nom { get; set; } = null!;
        public int? PrixMoy { get; set; }
        [Column(TypeName = "date")]
        public DateTime? DateInvention { get; set; }
        [Column("MateriauID")]
        public int? MateriauId { get; set; }

        [ForeignKey("FabricantId")]
        [InverseProperty("Instruments")]
        public virtual Fabricant? Fabricant { get; set; }
        [ForeignKey("MateriauId")]
        [InverseProperty("Instruments")]
        public virtual Materiau? Materiau { get; set; }
        [InverseProperty("Instrument")]
        public virtual InstrumentCorde? InstrumentCorde { get; set; }
        [InverseProperty("Instrument")]
        public virtual InstrumentVent? InstrumentVent { get; set; }
        [InverseProperty("Instrument")]
        public virtual Percussion? Percussion { get; set; }
    }
}
