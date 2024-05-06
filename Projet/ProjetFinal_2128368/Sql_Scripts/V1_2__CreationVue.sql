USE BD_ProjetFinal
GO

CREATE VIEW Instruments.vw_Instruments
AS
	SELECT I.Nom, I.Modele, M.Poids, M.NomMateriau, I.InstrumentID, I.FabricantID, I.MateriauID
	FROM Instruments.Instrument I
	INNER JOIN Fabricants.Fabricant F
	ON I.FabricantID = F.FabricantID
	INNER JOIN Materiaux.Materiau M
	ON I.MateriauID = M.MateriauID
GO