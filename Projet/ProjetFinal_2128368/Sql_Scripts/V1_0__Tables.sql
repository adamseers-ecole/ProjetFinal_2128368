USE BD_ProjetFinal;
GO

--Création des shémas
CREATE SCHEMA Instruments;
GO
CREATE SCHEMA Materiaux;
GO
CREATE SCHEMA Fabricants;
GO

--Création des tables
CREATE TABLE Fabricants.Fabricant(
	FabricantID int IDENTITY (1,1),
	Nom nvarchar(20) NOT NULL,
	DateFondation Date,
	CONSTRAINT PK_Fabricant_FabricantID PRIMARY KEY (FabricantID)
);

CREATE TABLE Materiaux.Materiau(
	MateriauID int IDENTITY (1,1),
	NomMateriau nvarchar(20) NOT NULL,
	Poids numeric(3,2) NOT NULL,
	InstrumentID int,
	CONSTRAINT PK_Materiau_MateriauID PRIMARY KEY (MateriauID),
);

CREATE TABLE Instruments.Instrument(
	InstrumentID int IDENTITY (1,1),
	FabricantID int,
	Modele nvarchar(20),
	Nom nvarchar(20) NOT NULL,
	PrixMoy int,
	DateInvention Date,
	MateriauID int,
	CONSTRAINT PK_Instrument_InstrumentID PRIMARY KEY (InstrumentID),
	--CONSTRAINT FK_Instrument_FabricantID FOREIGN KEY (FabricantID) REFERENCES Fabricants.Fabricant(FabricantID) ON DELETE CASCADE,
	--CONSTRAINT FK_Instrument_MateriauID FOREIGN KEY (MateriauID) REFERENCES Materiaux.Materiau(MateriauID) ON DELETE CASCADE
);

CREATE TABLE Instruments.InstrumentVent(
	InstrumentID int NOT NULL,
	Tonalite nvarchar(20),
	CONSTRAINT PK_InstrumentVent_InstrumentID PRIMARY KEY (InstrumentID),
	--CONSTRAINT FK_InstrumentVent_InstrumentID FOREIGN KEY (InstrumentID) REFERENCES Instruments.Instrument(InstrumentID) ON DELETE CASCADE
);

CREATE TABLE Instruments.InstrumentCorde(
	InstrumentID int NOT NULL,
	NbCorde int,
	TypeCorde nvarchar(20),
	CONSTRAINT PK_InstrumentCorde_InstrumentID PRIMARY KEY (InstrumentID),
	--CONSTRAINT FK_InstrumentCorde_InstrumentID FOREIGN KEY (InstrumentID) REFERENCES Instruments.Instrument(InstrumentID) ON DELETE CASCADE
);

CREATE TABLE Instruments.Percussion(
	InstrumentID int NOT NULL,
	TypePercussion nvarchar(20),
	CONSTRAINT PK_Percussion_InstrumentID PRIMARY KEY (InstrumentID),
	--CONSTRAINT FK_Percussion_InstrumentID FOREIGN KEY (InstrumentID) REFERENCES Instruments.Instrument(InstrumentID) ON DELETE CASCADE
);

ALTER TABLE Instruments.Instrument
ADD CONSTRAINT FK_Instrument_FabricantID FOREIGN KEY (FabricantID) REFERENCES Fabricants.Fabricant(FabricantID) ON DELETE CASCADE

ALTER TABLE Instruments.Instrument
ADD CONSTRAINT FK_Instrument_MateriauID FOREIGN KEY (MateriauID) REFERENCES Materiaux.Materiau(MateriauID) ON DELETE CASCADE

ALTER TABLE Instruments.InstrumentVent
ADD CONSTRAINT FK_InstrumentVent_InstrumentID FOREIGN KEY (InstrumentID) REFERENCES Instruments.Instrument(InstrumentID) ON DELETE CASCADE

ALTER TABLE Instruments.InstrumentCorde
ADD CONSTRAINT FK_InstrumentCorde_InstrumentID FOREIGN KEY (InstrumentID) REFERENCES Instruments.Instrument(InstrumentID) ON DELETE CASCADE

ALTER TABLE Instruments.Percussion
ADD CONSTRAINT FK_Percussion_InstrumentID FOREIGN KEY (InstrumentID) REFERENCES Instruments.Instrument(InstrumentID) ON DELETE CASCADE