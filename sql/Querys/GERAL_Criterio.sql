DROP TABLE [db_dengue].[Geral].[Criterio]

CREATE TABLE [db_dengue].[Geral].[Criterio] (
	SK_CRITERIO INT IDENTITY(1,1),
	NM_COLUNA VARCHAR(50),
	ID_CRITERIO INT,
	NM_CRITERIO VARCHAR(50)
)

INSERT INTO [db_dengue].[Geral].[Criterio]
(NM_COLUNA, ID_CRITERIO, NM_CRITERIO)
VALUES
('HOSPITALIZACAO', 0, 'Não ocorreu Hospitalização'),
('HOSPITALIZACAO', 1, 'Ocorreu Hospitalização'),
('CLASSIFICADOR',  0, 'Descartado'),
('CLASSIFICADOR',  1, 'Dengue com sinais de alarme'),
('CLASSIFICADOR',  3, 'Dengue Grave'),
('CLASSIFICADOR',  4, 'Chikungunya'),
('CRITERIO',       0, 'Descartado'),
('CRITERIO',       1, 'Laboratorial'),
('CRITERIO',       2, 'Clinico-Epidemiologico'),
('CRITERIO',       3, 'Em Investigação'),
('RESULTADO_SORO', 0, 'Não Reagente'),
('RESULTADO_SORO', 1, 'Reagente'),
('RESULTADO_SORO', 2, 'Inconclusivo'),
('RESULTADO_SORO', 3, 'Não Realizado'),
('RESULTADO_SORO', 4, 'Descartado'),
('RESULTADO_NS1',  0, 'Negativo'),
('RESULTADO_NS1',  1, 'Positivo'),
('RESULTADO_NS1',  2, 'Inconclusivo'),
('RESULTADO_NS1',  3, 'Não Realizado'),
('RESULTADO_NS1',  4, 'Descartado'),
('RESULTADO_PCR',  0, 'Negativo'),
('RESULTADO_PCR',  1, 'Positivo'),
('RESULTADO_PCR',  2, 'Inconclusivo'),
('RESULTADO_PCR',  3, 'Não Realizado'),
('RESULTADO_PCR',  4, 'Descartado'),
('AUTOCTONE',      0, 'Não'),
('AUTOCTONE',      1, 'Sim'),
('AUTOCTONE',      2, 'Indeterminado'),
('AUTOCTONE',      3, 'Descartado'),
('FEBRE',          0, 'Não'),
('FEBRE',          1, 'Sim'),
('VOMITO',         0, 'Não'),
('VOMITO',         1, 'Sim'),
('NAUSEA',         0, 'Não'),
('NAUSEA',         1, 'Sim'),
('SANGRAMENTO',    0, 'Não'),
('SANGRAMENTO',    1, 'Sim')
