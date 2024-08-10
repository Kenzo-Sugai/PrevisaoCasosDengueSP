CREATE TABLE [INMET].[Dados_SP](
	[DT_REF] [date] NULL,
	[MUNICIPIO] [varchar](50) NULL,
	[HR_REF_UTC] [varchar](20) NULL,
	[PRECIPITACAO_TOTAL] [decimal](20, 2) NULL,
	[TEMPERATURA] [decimal](20, 2) NULL,
	[TEMP_MAX_HR_ANT] [decimal](20, 2) NULL,
	[TEMP_MIN_HR_ANT] [decimal](20, 2) NULL,
	[VENTO_RAJADA_MAX] [decimal](20, 2) NULL,
	[VENTO_VLC_HR] [decimal](20, 2) NULL
) ON [PRIMARY]
