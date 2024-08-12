CREATE VIEW [SINAN].[DENGBR_TOTAL]  AS

SELECT 
		SINAN.ID_AGRAVO,
		CAST((SUBSTRING(LTRIM(SINAN.DT_INVEST),0, 5) + '-' + SUBSTRING(LTRIM(SINAN.DT_INVEST),5,2) + '-01') AS DATE) DT_INVEST,
		SINAN.ID_OCUPA_N,	
		CASE 
			WHEN SINAN.FEBRE = 1 THEN 'Sim'
			WHEN SINAN.FEBRE = 2 THEN 'Não'
			ELSE 'Ignorado'
		END FEBRE,
		CASE
			WHEN SINAN.HOSPITALIZ = 1 THEN 'Ocorreu Hospitalizacao'
			WHEN SINAN.HOSPITALIZ = 2 THEN 'Nao Ocorreu Hospitalizacao'
			ELSE 'Ignorado'
		END HOSPITALIZ,	
		iif(SINAN.UF IS NOT NULL, SINAN.UF, SINAN.COUFINF) UF,
		MUN.CD_MUNICIPIO,
		MUN.NM_MUNICIPIO,	
		iif(SINAN.COPAISINF = 1 or SINAN.COPAISINF IS NULL, 'Brasil', SINAN.COPAISINF) COPAISINF,	
		CASE
			WHEN SINAN.CLASSI_FIN = 5 THEN 'Descartado'
			WHEN SINAN.CLASSI_FIN = 10 THEN 'Dengue'
			WHEN SINAN.CLASSI_FIN = 11 THEN 'Dengue com sinais de alarme'
			WHEN SINAN.CLASSI_FIN = 12 THEN 'Dengue Grave'
			WHEN SINAN.CLASSI_FIN = 13 THEN 'Chikungunya'
			ELSE 'Outro'
		END CLASSI_FIN,
		CASE
			WHEN SINAN.CRITERIO = 1 THEN 'Laboratorial'
			WHEN SINAN.CRITERIO = 2 THEN 'Clinico-Epidemiologico'
			WHEN SINAN.CRITERIO = 3 THEN 'Em Investigacao'
			ELSE 'Outro'
		END CRITERIO,
		CAST((SUBSTRING(LTRIM(SINAN.DT_OBITO),0, 5) + '-' + SUBSTRING(LTRIM(SINAN.DT_OBITO),5,2) + '-01') AS DATE) DT_OBITO,	
		CAST((SUBSTRING(LTRIM(SINAN.DT_ALRM),0, 5) + '-' + SUBSTRING(LTRIM(SINAN.DT_ALRM),5,2) + '-01') AS DATE) DT_ALRM,	
		CAST((SUBSTRING(LTRIM(SINAN.DT_GRAV),0, 5) + '-' + SUBSTRING(LTRIM(SINAN.DT_GRAV),5,2) + '-01') AS DATE) DT_GRAV

FROM (
	SELECT
		ID_AGRAVO,
		DT_INVEST,	
		ID_OCUPA_N,	
		FEBRE,	
		HOSPITALIZ,	
		UF,	
		MUNICIPIO,	
		COUFINF,	
		COPAISINF,	
		COMUNINF,	
		CLASSI_FIN,	
		CRITERIO,	
		DT_OBITO,	
		DT_ALRM,	
		DT_GRAV
	FROM 
		[db_dengue].[SINAN].[DENGBR]
	) SINAN
	INNER JOIN [db_dengue].[Geral].[MUNICIPIO] MUN ON 
		CD_MUNICIPIO = (CASE WHEN SINAN.MUNICIPIO IS NULL THEN SINAN.COMUNINF ELSE SINAN.MUNICIPIO END)
	WHERE SINAN.UF = 35 or SINAN.COUFINF = 35
