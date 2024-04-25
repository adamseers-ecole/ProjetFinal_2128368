using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using ProjetFinal_2128368.Models;

namespace ProjetFinal_2128368.Data
{
    public partial class BD_ProjetFinalContext : DbContext
    {
        public BD_ProjetFinalContext()
        {
        }

        public BD_ProjetFinalContext(DbContextOptions<BD_ProjetFinalContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Fabricant> Fabricants { get; set; } = null!;
        public virtual DbSet<Instrument> Instruments { get; set; } = null!;
        public virtual DbSet<InstrumentCorde> InstrumentCordes { get; set; } = null!;
        public virtual DbSet<InstrumentVent> InstrumentVents { get; set; } = null!;
        public virtual DbSet<Materiau> Materiaus { get; set; } = null!;
        public virtual DbSet<Percussion> Percussions { get; set; } = null!;

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Name=BD_ProjetFinal");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Instrument>(entity =>
            {
                entity.HasOne(d => d.Fabricant)
                    .WithMany(p => p.Instruments)
                    .HasForeignKey(d => d.FabricantId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("FK_Instrument_FabricantID");

                entity.HasOne(d => d.Materiau)
                    .WithMany(p => p.Instruments)
                    .HasForeignKey(d => d.MateriauId)
                    .OnDelete(DeleteBehavior.Cascade)
                    .HasConstraintName("FK_Instrument_MateriauID");
            });

            modelBuilder.Entity<InstrumentCorde>(entity =>
            {
                entity.HasKey(e => e.InstrumentId)
                    .HasName("PK_InstrumentCorde_InstrumentID");

                entity.Property(e => e.InstrumentId).ValueGeneratedNever();

                entity.HasOne(d => d.Instrument)
                    .WithOne(p => p.InstrumentCorde)
                    .HasForeignKey<InstrumentCorde>(d => d.InstrumentId)
                    .HasConstraintName("FK_InstrumentCorde_InstrumentID");
            });

            modelBuilder.Entity<InstrumentVent>(entity =>
            {
                entity.HasKey(e => e.InstrumentId)
                    .HasName("PK_InstrumentVent_InstrumentID");

                entity.Property(e => e.InstrumentId).ValueGeneratedNever();

                entity.HasOne(d => d.Instrument)
                    .WithOne(p => p.InstrumentVent)
                    .HasForeignKey<InstrumentVent>(d => d.InstrumentId)
                    .HasConstraintName("FK_InstrumentVent_InstrumentID");
            });

            modelBuilder.Entity<Percussion>(entity =>
            {
                entity.HasKey(e => e.InstrumentId)
                    .HasName("PK_Percussion_InstrumentID");

                entity.Property(e => e.InstrumentId).ValueGeneratedNever();

                entity.HasOne(d => d.Instrument)
                    .WithOne(p => p.Percussion)
                    .HasForeignKey<Percussion>(d => d.InstrumentId)
                    .HasConstraintName("FK_Percussion_InstrumentID");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
