CREATE TABLE db_dengue.dengue.publicacao AS

WITH datas AS (

	SELECT DISTINCT DT_NOTIFICACAO FROM db_dengue.dengue.codificada

),
datas_por_municipio AS (

	SELECT DISTINCT DT_NOTIFICACAO, CD_MUNICIPIO FROM datas
	CROSS JOIN db_dengue.ibge.municipios
	WHERE uf = 35

)

SELECT 
	b.dt_notificacao,
	extract(year from b.dt_notificacao) as ano_notificacao,
	extract(month from b.dt_notificacao) as mes_notificacao,
	b.cd_municipio, 
	COUNT(a.dt_notificacao) as qntd_casos,
	COUNT(CASE WHEN hospitalizacao = 1 THEN 1 ELSE NULL END) AS qntd_hospitalizacao,
	COUNT(CASE WHEN resultado_soro = 1 THEN 1 ELSE NULL END) AS qntd_resultado_soro,
	COUNT(CASE WHEN resultado_ns1= 1 THEN 1 ELSE NULL END) AS qntd_resultado_ns1,
	COUNT(CASE WHEN resultado_pcr = 1 THEN 1 ELSE NULL END) AS qntd_resultado_pcr,
	COUNT(CASE WHEN autoctone = 1 THEN 1 ELSE NULL END) AS qntd_auctone,
	COUNT(CASE WHEN febre = 1 THEN 1 ELSE NULL END) AS qntd_febre,
	COUNT(CASE WHEN vomito = 1 THEN 1 ELSE NULL END) AS qntd_vomito,
	COUNT(CASE WHEN nausea = 1 THEN 1 ELSE NULL END) AS qntd_nausea,
	COUNT(CASE WHEN sangramento = 1 THEN 1 ELSE NULL END) AS qntd_sangramento,
	AVG(precipitacao_total_mensal) precipitacao_total_mensal, 
	AVG(temp_media_mensal) temp_media_mensal, 
	AVG(vento_vlc_media_mensal) vento_vlc_media_mensal
FROM 
	db_dengue.dengue.codificada a
RIGHT JOIN
	datas_por_municipio b on a.dt_notificacao = b.dt_notificacao and a.cd_municipio = b.cd_municipio
GROUP BY
	b.dt_notificacao,
	b.cd_municipio
ORDER BY
	b.dt_notificacao, 
	b.cd_municipio