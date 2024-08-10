
CREATE TABLE [Dengue].[Dataset](
	[DT_REF] [varchar](18) NOT NULL,
	[CD_MUNICIPIO] [int] NULL,
	[NM_MUNICIPIO] [nvarchar](50) NULL,
	[UF] [varchar](50) NULL,
	[ID_OCUPA_N] [varchar](50) NULL,
	[FEBRE] [varchar](8) NOT NULL,
	[HOSPITALIZACAO] [varchar](26) NOT NULL,
	[CLASSI_FIN] [varchar](27) NOT NULL,
	[CRITERIO] [varchar](22) NOT NULL,
	[DT_OBITO] [varchar](50) NULL,
	[DT_ALRM] [varchar](50) NULL,
	[DT_GRAV] [varchar](50) NULL,
	[PRECIPITAO_TOTAL_MENSAL] [decimal](38, 6) NULL,
	[TEMP_MEDIA_MENSAL] [decimal](38, 6) NULL,
	[TEMP_MAX_MENSAL] [decimal](20, 2) NULL,
	[TEMP_MIN_MENSAL] [decimal](20, 2) NULL,
	[VENTO_RAJADA_MAX_MENSAL] [decimal](20, 2) NULL,
	[VENTO_VLC_MEDIA_MENSAL] [decimal](38, 6) NULL
) ON [PRIMARY]
