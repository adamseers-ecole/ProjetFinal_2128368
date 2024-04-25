using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ProjetFinal_2128368.Models
{
    [Table("InstrumentVent", Schema = "Instruments")]
    public partial class InstrumentVent
    {
        [Key]
        [Column("InstrumentID")]
        public int InstrumentId { get; set; }
        [StringLength(20)]
        public string? Tonalite { get; set; }

        [ForeignKey("InstrumentId")]
        [InverseProperty("InstrumentVent")]
        public virtual Instrument Instrument { get; set; } = null!;
    }
}
