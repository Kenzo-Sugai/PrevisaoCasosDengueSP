TRUNCATE TABLE db_dengue.dengue.Codificada

INSERT INTO db_dengue.dengue.Codificada (
	DT_NOTIFICACAO,
	DT_INTERNACAO,
	DT_OBITO,
	DT_ALARME,
	DT_GRAVE,
	DT_SORO,
	DT_NS1,
	DT_PCR,
	DT_ENCERRAMENTO,
	CD_MUNICIPIO,
	PROFISSAO,
	HOSPITALIZACAO,
	CLASSIFICADOR,
	CRITERIO,
	RESULTADO_SORO,	
	RESULTADO_NS1,	
	RESULTADO_PCR,	
	AUTOCTONE,	
	FEBRE,	
	VOMITO,	
	NAUSEA,
	SANGRAMENTO,	
	PRECIPITACAO_TOTAL_MENSAL,	
	TEMP_MEDIA_MENSAL,	
	TEMP_MAX_MENSAL,	
	TEMP_MIN_MENSAL,	
	VENTO_RAJADA_MAX_MENSAL,	
	VENTO_VLC_MEDIA_MENSAL
)
SELECT 
	TO_CHAR(SINAN.DT_NOTIFIC, 'yyyy-MM-01')::date AS DT_NOTIFICACAO,
	TO_CHAR(SINAN.DT_INTERNA, 'yyyy-MM-01')::date AS DT_INTERNACAO,
	TO_CHAR(SINAN.DT_OBITO, 'yyyy-MM-01')::date AS DT_OBITO,
	TO_CHAR(SINAN.DT_ALRM, 'yyyy-MM-01')::date AS DT_ALARME,
	TO_CHAR(SINAN.DT_GRAV, 'yyyy-MM-01')::date  AS DT_GRAVE,
	TO_CHAR(SINAN.DT_SORO, 'yyyy-MM-01')::date  AS DT_SORO,
	TO_CHAR(SINAN.DT_NS1, 'yyyy-MM-01')::date  AS DT_NS1,
	TO_CHAR(SINAN.DT_PCR, 'yyyy-MM-01')::date  AS DT_PCR,
	TO_CHAR(SINAN.DT_ENCERRA, 'yyyy-MM-01')::date  AS DT_ENCERRAMENTO,
	SINAN.ID_MUNICIP AS CD_MUNICIPIO,
	COALESCE(SINAN.ID_OCUPA_N, '') AS PROFISSAO,
	CASE 
		WHEN SINAN.HOSPITALIZ = 2 THEN 0 
		WHEN SINAN.HOSPITALIZ = 1 THEN 1 
		WHEN SINAN.HOSPITALIZ = 9 THEN 2 
		ELSE 0 
	END AS HOSPITALIZACAO,
	CASE 
		WHEN SINAN.CLASSI_FIN = 5 THEN 0
		WHEN SINAN.CLASSI_FIN = 10 THEN 1
		WHEN SINAN.CLASSI_FIN = 11 THEN 2
		WHEN SINAN.CLASSI_FIN = 12 THEN 3
		WHEN SINAN.CLASSI_FIN = 13 THEN 4
		ELSE 0
	END AS CLASSIFICADOR,
	CASE
		WHEN SINAN.CRITERIO = 1 THEN 1 
		WHEN SINAN.CRITERIO = 2 THEN 2
		WHEN SINAN.CRITERIO = 3 THEN 3
		ELSE 0
	END AS CRITERIO,
	CASE
		WHEN SINAN.RESUL_SORO = 2 THEN 0
		WHEN SINAN.RESUL_SORO = 1 then 1
		WHEN SINAN.RESUL_SORO = 3 THEN 2
		WHEN SINAN.RESUL_SORO = 4 THEN 3
		ELSE 4
	END AS RESULTADO_SORO,	
	CASE
		WHEN SINAN.RESUL_NS1 = 2 THEN 0	 
		WHEN SINAN.RESUL_NS1 = 1 THEN 1
		WHEN SINAN.RESUL_NS1 = 3 THEN 2
		WHEN SINAN.RESUL_NS1 = 4 THEN 3
		ELSE 4
	END AS RESULTADO_NS1,	
	CASE
		WHEN SINAN.RESUL_PCR_ = 2 THEN 0	 
		WHEN SINAN.RESUL_PCR_ = 1 THEN 1
		WHEN SINAN.RESUL_PCR_ = 3 THEN 2
		WHEN SINAN.RESUL_PCR_ = 4 THEN 3
		ELSE 4
	END AS RESULTADO_PCR,
	CASE 
		WHEN SINAN.TPAUTOCTO = 2 THEN 0
		WHEN SINAN.TPAUTOCTO = 1 THEN 1
		WHEN SINAN.TPAUTOCTO = 3 THEN 2
		ELSE 3
	END AS AUTOCTONE,	
	CASE
		WHEN SINAN.FEBRE = 2 THEN 0
		WHEN SINAN.FEBRE = 1 THEN 1
		ELSE 0
	END AS FEBRE,
	CASE
		WHEN SINAN.VOMITO = 2 THEN 0
		WHEN SINAN.VOMITO = 1 THEN 1
		ELSE 0
	END AS VOMITO,
	CASE
		WHEN SINAN.NAUSEA = 2 THEN 0
		WHEN SINAN.NAUSEA = 1 THEN 1
		ELSE 0
	END AS NAUSEA,
	CASE
		WHEN SINAN.SANGRAM = 2 THEN 0
		WHEN SINAN.SANGRAM = 1 THEN 1
		ELSE 0
	END AS SANGRAMENTO,	
	INMET.PRECIPITACAO_TOTAL_MENSAL AS PRECIPITACAO_TOTAL_MENSAL,	
	INMET.TEMP_MEDIA_MENSAL AS TEMP_MEDIA_MENSAL,	
	INMET.TEMP_MAX_MENSAL AS TEMP_MAX_MENSAL,	
	INMET.TEMP_MIN_MENSAL AS TEMP_MIN_MENSAL,	
	INMET.VENTO_RAJADA_MAX_MENSAL AS VENTO_RAJADA_MAX_MENSAL,	
	INMET.VENTO_VLC_MEDIA_MENSAL AS VENTO_VLC_MEDIA_MENSAL
FROM db_dengue.SINAN.Dados SINAN
LEFT JOIN db_dengue.ibge.DeParaMunicipio DEPARA ON SINAN.ID_MUNICIP = LEFT(DEPARA.DE_CD_MUNICIPIO::varchar(6), 6)
LEFT JOIN db_dengue.INMET.Dados_SP_Mensal INMET ON INMET.MUNICIPIO = DEPARA.PARA_NM_MUNICIPIO AND TO_CHAR(SINAN.DT_NOTIFIC, 'yyyy-MM-01')::date = INMET.DT_REF
INNER JOIN db_dengue.ibge.MUNICIPIOs MUN ON SINAN.ID_MUNICIP = MUN.CD_MUNICIPIO
WHERE MUN.UF = 35
ORDER BY SINAN.DT_NOTIFIC, SINAN.ID_MUNICIP
