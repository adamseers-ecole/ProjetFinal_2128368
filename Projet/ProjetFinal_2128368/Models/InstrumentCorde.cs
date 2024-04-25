using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ProjetFinal_2128368.Models
{
    [Table("InstrumentCorde", Schema = "Instruments")]
    public partial class InstrumentCorde
    {
        [Key]
        [Column("InstrumentID")]
        public int InstrumentId { get; set; }
        public int? NbCorde { get; set; }
        [StringLength(20)]
        public string? TypeCorde { get; set; }

        [ForeignKey("InstrumentId")]
        [InverseProperty("InstrumentCorde")]
        public virtual Instrument Instrument { get; set; } = null!;
    }
}
