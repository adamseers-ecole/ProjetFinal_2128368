USE BD_ProjetFinal
GO

SET IDENTITY_INSERT Fabricants.Fabricant ON
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (1, 'G&L', '06/03/2022');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (2, 'ESP', '11/07/2023');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (3, 'Gibson USA', '04/13/2004');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (4, 'Epiphone', '04/10/2001');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (5, 'Gibson Modern', '06/21/2014');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (6, 'Fender', '08/13/2022');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (7, 'Ibanez', '11/15/2019');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (8, 'Mapex', '10/12/2015');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (9, 'Gibson Custom', '02/13/2016');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (10, 'Gretsch', '04/18/2010');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (11, 'Tama', '08/24/2018');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (12, 'Alvarez', '10/20/2001');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (13, 'Gibson Acoustic', '08/19/2002');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (14, 'Gretsch', '01/15/2019');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (15, 'Squier', '01/23/2014');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (16, 'Gretsch', '11/20/2023');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (17, 'G&L', '08/06/2005');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (18, 'Rickenbacker', '11/09/2003');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (19, 'Ernie Ball', '11/27/2006');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (20, 'Gibson Original', '12/13/2022');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (21, 'Alvarez', '12/18/2002');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (22, 'Cort', '05/14/2002');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (23, 'Gibson Montana', '04/07/2002');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (24, 'Jackson', '10/20/2022');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (25, 'Rickenbacker', '10/06/2009');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (26, 'Alvarez', '08/02/2010');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (27, 'Gibson', '12/31/2018');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (28, 'Gibson USA', '05/28/2014');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (29, 'G&L', '09/19/2006');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (30, 'Cort', '08/01/2010');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (31, 'Ernie Ball', '12/25/2007');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (32, 'Gibson Custom Shop', '12/12/2017');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (33, 'Gibson Historic', '02/24/2005');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (34, 'Peavey', '01/13/2023');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (35, 'Fender Japan', '11/23/2007');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (36, 'Gibson Memphis', '01/11/2016');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (37, 'Fender Japan', '12/04/2020');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (38, 'Pearl', '08/25/2022');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (39, 'Gibson USA', '09/14/2003');
insert into Fabricants.Fabricant (FabricantID, Nom, DateFondation) values (40, 'Ludwig', '09/09/2004');
SET IDENTITY_INSERT Fabricants.Fabricant OFF

SET IDENTITY_INSERT Materiaux.Materiau ON
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (1, 'silk', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (2, 'oak', 4);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (3, 'metal', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (4, 'gold', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (5, 'rubber', 3);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (6, 'velvet', 4);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (7, 'polyester', 0);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (8, 'mahogany', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (9, 'metal', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (10, 'velvet', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (11, 'felt', 0);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (12, 'copper', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (13, 'rubber', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (14, 'nickel', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (15, 'velvet', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (16, 'nylon', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (17, 'felt', 0);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (18, 'silver', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (19, 'poplar', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (20, 'acrylic', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (21, 'silver', 3);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (22, 'carbon fiber', 3);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (23, 'silk', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (24, 'gold', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (25, 'steel', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (26, 'velvet', 3);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (27, 'leather', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (28, 'rubber', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (29, 'bamboo', 3);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (30, 'fiberglass', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (31, 'copper', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (32, 'walnut', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (33, 'brass', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (34, 'plastic', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (35, 'oak', 0);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (36, 'aluminum', 5);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (37, 'ivory', 2);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (38, 'leather', 1);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (39, 'suede', 3);
insert into Materiaux.Materiau (MateriauID, NomMateriau, Poids) values (40, 'ash', 1);
SET IDENTITY_INSERT Materiaux.Materiau OFF

SET IDENTITY_INSERT Instruments.Instrument ON
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (1, 1, 'C-MAX Hybrid', 'castanets', 929, '11/05/2023', 10);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (2, 2, 'T100', 'clarinet', 1351, '09/25/2023', 5);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (3, 3, 'Esprit', 'flute', 3718, '04/30/2023', 6);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (4, 4, '300', 'theremin', 2739, '04/03/2023', 35);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (5, 5, 'F150', 'bagpipes', 2893, '09/08/2023', 6);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (6, 6, 'SLK-Class', 'flute', 4544, '07/12/2023', 40);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (7, 7, 'Laser', 'drums', 4972, '09/19/2023', 10);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (8, 8, 'Safari', 'tabla', 91, '07/11/2023', 29);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (9, 9, 'A8', 'theremin', 207, '01/19/2024', 5);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (10, 10, '5000CS', 'kalimba', 1813, '03/29/2023', 9);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (11, 11, 'Challenger', 'piano', 4070, '01/15/2024', 38);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (12, 12, 'H3', 'bassoon', 696, '03/15/2023', 22);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (13, 13, 'Avenger', 'guitar', 1111, '04/23/2023', 10);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (14, 14, 'Murano', 'koto', 3312, '10/17/2023', 26);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (15, 15, 'ES', 'marimba', 488, '01/18/2024', 32);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (16, 16, 'Safari', 'guitar', 4698, '07/09/2023', 34);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (17, 17, '1500 Club Coupe', 'sitar', 2620, '08/05/2023', 8);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (18, 18, 'Ranger', 'steel drums', 844, '01/24/2024', 18);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (19, 19, 'Grand Vitara', 'tabla', 2189, '06/22/2023', 20);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (20, 20, 'Probe', 'theremin', 2152, '05/24/2023', 33);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (21, 21, 'Land Cruiser', 'clarinet', 4286, '01/07/2024', 36);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (22, 22, 'Ram 1500 Club', 'bassoon', 1490, '07/29/2023', 39);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (23, 23, 'Alliance', 'piano', 597, '01/01/2024', 2);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (24, 24, 'Navigator L', 'dulcimer', 3805, '01/25/2024', 3);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (25, 25, 'Villager', 'guitar', 2687, '12/22/2023', 39);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (26, 26, 'E-Class', 'bagpipes', 3056, '12/29/2023', 8);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (27, 27, 'Sparrow', 'erhu', 4245, '02/26/2023', 9);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (28, 28, 'Riviera', 'violin', 228, '09/15/2023', 21);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (29, 29, 'E150', 'guitar', 4160, '11/18/2023', 27);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (30, 30, 'Integra', 'glockenspiel', 971, '03/28/2023', 26);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (31, 31, 'Villager', 'xylophone', 2360, '01/25/2024', 4);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (32, 32, 'Mountaineer', 'tabla', 1203, '10/07/2023', 19);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (33, 33, 'Range Rover', 'kalimba', 3109, '05/01/2023', 31);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (34, 34, 'Eclipse', 'piano', 1125, '03/25/2023', 3);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (35, 35, 'Golf', 'oboe', 1591, '07/02/2023', 16);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (36, 36, 'Prelude', 'bagpipes', 4370, '01/24/2024', 25);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (37, 37, 'Space', 'sitar', 2180, '07/31/2023', 12);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (38, 38, 'Malibu', 'ukulele', 3999, '09/11/2023', 8);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (39, 39, 'Talon', 'french horn', 3939, '07/11/2023', 5);
insert into Instruments.Instrument (InstrumentID, FabricantID, Modele, Nom, PrixMoy, DateInvention, MateriauID) values (40, 40, 'LS', 'theremin', 3520, '11/14/2023', 28);
SET IDENTITY_INSERT Instruments.Instrument OFF

--SET IDENTITY_INSERT Instruments.InstrumentVent ON
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (7, 'Solb');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (8, 'Reb');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (9, 'Sib');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (5, 'Fa');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (6, 'Solb');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (10, 'Lab');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (2, 'Lab');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (3, 'Mi');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (4, 'Sol');
insert into Instruments.InstrumentVent (InstrumentID, Tonalite) values (1, 'Si');
--SET IDENTITY_INSERT Instruments.InstrumentVent OFF

--SET IDENTITY_INSERT Instruments.InstrumentCorde ON
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (11, 78, 'nylon');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (12, 85, 'bronze');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (13, 6, 'nylon');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (14, 33, 'nickel');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (15, 58, 'nickel');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (16, 20, 'nickel');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (17, 31, 'steel');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (18, 93, 'bronze');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (19, 39, 'brass');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (20, 8, 'nylon');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (23, 72, 'bronze');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (21, 45, 'nickel');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (24, 6, 'nickel');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (22, 92, 'bronze');
insert into Instruments.InstrumentCorde (InstrumentID, NbCorde, TypeCorde) values (25, 92, 'steel');
--SET IDENTITY_INSERT Instruments.InstrumentCorde OFF

--SET IDENTITY_INSERT Instruments.Percussion ON
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (26, 'Chordophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (27, 'Membranophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (28, 'Membranophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (29, 'Idiophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (30, 'Aerophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (31, 'Chordophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (32, 'Aerophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (33, 'Idiophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (34, 'Aerophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (35, 'Idiophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (36, 'Chordophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (37, 'Aerophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (38, 'Idiophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (39, 'Idiophone');
insert into Instruments.Percussion (InstrumentID, TypePercussion) values (40, 'Chordophone');
--SET IDENTITY_INSERT Instruments.Percussion OFF