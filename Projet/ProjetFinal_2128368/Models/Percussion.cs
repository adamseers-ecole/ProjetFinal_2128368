using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ProjetFinal_2128368.Models
{
    [Table("Percussion", Schema = "Instruments")]
    public partial class Percussion
    {
        [Key]
        [Column("InstrumentID")]
        public int InstrumentId { get; set; }
        [StringLength(20)]
        public string? TypePercussion { get; set; }

        [ForeignKey("InstrumentId")]
        [InverseProperty("Percussion")]
        public virtual Instrument Instrument { get; set; } = null!;
    }
}
