CREATE VIEW [INMET].[Dados_SP_Mensal] AS

	SELECT
		CONCAT(YEAR(DT_REF), '-', RIGHT('00' + CAST(MONTH(DT_REF) as varchar(2)), 2), '-01') DT_REF,
		MUNICIPIO,
		ROUND(AVG(PRECIPITACAO_TOTAL_DIARIA), 2) PRECIPITAO_TOTAL_MENSAL, 
		ROUND(AVG(TEMP_MEDIA_DIARIA), 2) TEMP_MEDIA_MENSAL,
		ROUND(MAX(TEMP_MAX_DIARIA), 2) TEMP_MAX_MENSAL,
		ROUND(MIN(TEMP_MIN_DIARIA), 2) TEMP_MIN_MENSAL,
		ROUND(MAX(VENTO_RAJADA_MAX_DIARIA), 2) VENTO_RAJADA_MAX_MENSAL,
		ROUND(AVG(VENTO_VLC_MEDIA_DIARIA), 2) VENTO_VLC_MEDIA_MENSAL
	FROM 
		[db_dengue].[INMET].[Dados_SP_Diaria]
	GROUP BY
		CONCAT(YEAR(DT_REF), '-', RIGHT('00' + CAST(MONTH(DT_REF) as varchar(2)), 2), '-01'),
		MUNICIPIO