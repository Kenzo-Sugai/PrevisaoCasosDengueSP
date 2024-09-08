# Dicionário de Dados

## Tabela Codificada

| COLUNA                    | DATATYPE       | DESCRICAO                                                                                  | CRITERIO                                                                                                       |
|---------------------------|----------------|--------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| SK_DENGUE                 | INT            | ID unico para cada registro da tabela.                                                     | Os registros possuem ordenação DT_REF, CD_MUNICIPIO.                                                           |
| DT_NOTIFICACAO            | DATE           | Data da notificação do registro.                                                           | A data está convertida para uma visão mensal.                                                                  |
| DT_INTERNACAO             | DATE           | Data de internação.                                                                        | A data está convertida para uma visão mensal.                                                                  |
| DT_OBITO                  | DATE           | Data de Óbito.                                                                             | A data está convertida para uma visão mensal.                                                                  |
| DT_ALARME                 | DATE           | Data de Alarme.                                                                            | A data está convertida para uma visão mensal.                                                                  |
| DT_GRAVE                  | DATE           | Data de Gravidade.                                                                         | A data está convertida para uma visão mensal.                                                                  |
| DT_SORO                   | DATE           | Data da coleta do Exame Sorológico.                                                        | A data está convertida para uma visão mensal.                                                                  |
| DT_NS1                    | DATE           | Data da coleta do Exame Sorologia ELISA                                                    | A data está convertida para uma visão mensal.                                                                  |
| DT_PCR                    | DATE           | Data da coleta do Exame RT-PCR.                                                            | A data está convertida para uma visão mensal.                                                                  |
| DT_ENCERRAMENTO           | DATE           | Data do encerramento do caso.                                                              | A data está convertida para uma visão mensal.                                                                  |
| CD_MUNICIPIO              | INT            | Código do Município. Código referente a tabela do IBGE.                                    | Verificar a tabela db_dengue.Geral.Municipio                                                                   |
| PROFISSAO                 | VARCHAR        | Código da Profissão do registro. Código referente a tabela do IBGE.                        | Verificar a tabela db_dengue.Geral.Profissao                                                                   |
| HOSPITALIZACAO            | INT            | Ocorrencia de Hospitalização.                                                              | 0 - Não ocorreu Hospitalização <br> 1 - Ocorreu Hospitalização                                                 |
| CLASSIFICADOR             | INT            | Classificador do tipo de Dengue do registro.                                               | 0 - Descartado <br> 1 - Dengue <br> 2 - Dengue com sinais de alarme <br> 3 - Dengue Grave <br> 4 - Chikungunya |
| CRITERIO                  | INT            | Criterio Clínico do registro.                                                              | 0 - Descartado <br> 1 - Laboratorial <br> 2 - Clinico-Epidemiologico <br> 3 - Em Investigacao                  | 
| RESULTADO_SORO            | INT            | Resultado do Exame Sorológico (IgM) Dengue.                                                | 0 - Não Reagente <br> 1 - Reagente <br> 2 - Inconclusivo <br> 3 - Não Realizado <br> 4 - Descartado            | 
| RESULTADO_NS1             | INT            | Resultado do Exame Sorologia ELISA.                                                        | 0 - Negativo <br> 1 - Positivo <br> 2 - Inconclusivo <br> 3 - Não Realizado <br> 4 - Descardado                | 
| RESULTADO_PCR             | INT            | Resultado do Exame de RT-PCR.                                                              | 0 - Negativo <br> 1 - Positivo <br> 2 - Inconclusivo <br> 3 - Não Realizado <br> 4 - Descartado                | 
| AUTOCTONE                 | INT            | Indica se o caso é autóctone do município de residência.                                   | 0 - Não <br> 1 - Sim <br> 2 - Indeterminado <br> 3 - Descartado                                                |
| FEBRE                     | INT            | Indica sintomas de Dengue no registro.                                                     | 0 - Não <br> 1 - Sim                                                                                           |
| VOMITO                    | INT            | Indica sintomas de Vomito no registro.                                                     | 0 - Não <br> 1 - Sim                                                                                           |
| NAUSEA                    | INT            | Indica sintomas de Nausea no registro.                                                     | 0 - Não <br> 1 - Sim                                                                                           |
| SANGRAMENTO               | INT            | Indica sintomas de Sangramento no registro.                                                | 0 - Não <br> 1 - Sim                                                                                           |
| PRECIPITACAO_TOTAL_MENSAL | DECIMAL (20,4) | Precipitação Total Mensal.                                                                 | Medida em Milímitro (mm)                                                                                       |
| TEMP_MEDIA_MENSAL         | DECIMAL (20,4) | Temperatura Média Mensal.                                                                  | Medida em Graus Celsius (°C)                                                                                   |
| TEMP_MAX_MENSAL           | DECIMAL (20,4) | Temperatura Máxima Mensal.                                                                 | Medida em Graus Celsius (°C)                                                                                   |
| TEMP_MIN_MENSAL           | DECIMAL (20,4) | Temperatura Mínima Mensal.                                                                 | Medida em Graus Celsius (°C)                                                                                   |
| VENTO_RAJADA_MAX_MENSAL   | DECIMAL (20,4) | Vento Rajada Máxima Mensal.                                                                | Medida em Metros por Segundo (m/s)                                                                             |
| VENTO_VLC_MEDIA_MENSAL    | DECIMAL (20,4) | Vento Velocidade Média Mensal.                                                             | Medida em Metros por Segundo (m/s)                                                                             |

## Tabela Analitica

| COLUNA                    | DATATYPE       | DESCRICAO                                                                                  |
|---------------------------|----------------|--------------------------------------------------------------------------------------------|
| SK_DENGUE                 | INT            | ID unico para cada registro da tabela.                                                     |
| DT_NOTIFICACAO            | DATE           | Data da notificação do registro.                                                           |
| DT_INTERNACAO             | DATE           | Data de internação.                                                                        |
| DT_OBITO                  | DATE           | Data de Óbito.                                                                             |
| DT_ALARME                 | DATE           | Data de Alarme.                                                                            |
| DT_GRAVE                  | DATE           | Data de Gravidade.                                                                         |
| DT_SORO                   | DATE           | Data da coleta do Exame Sorológico.                                                        |
| DT_NS1                    | DATE           | Data da coleta do Exame Sorologia ELISA                                                    |
| DT_PCR                    | DATE           | Data da coleta do Exame RT-PCR.                                                            |
| DT_ENCERRAMENTO           | DATE           | Data do encerramento do caso.                                                              |
| CD_MUNICIPIO              | INT            | Código do Município. Código referente a tabela do IBGE.                                    |
| NM_MUNICIPIO              | VARCHAR        | Nome do Município. Código referente a tabela do IBGE.                                      |
| PROFISSAO                 | VARCHAR        | Código da Profissão do registro. Código referente a tabela do IBGE.                        |
| HOSPITALIZACAO            | VARCHAR        | Ocorrencia de Hospitalização.                                                              |
| CLASSIFICADOR             | VARCHAR        | Classificador do tipo de Dengue do registro.                                               |
| CRITERIO                  | VARCHAR        | Criterio Clínico do registro.                                                              | 
| RESULTADO_SORO            | VARCHAR        | Resultado do Exame Sorológico (IgM) Dengue.                                                | 
| RESULTADO_NS1             | VARCHAR        | Resultado do Exame Sorologia ELISA.                                                        | 
| RESULTADO_PCR             | VARCHAR        | Resultado do Exame de RT-PCR.                                                              | 
| AUTOCTONE                 | VARCHAR        | Indica se o caso é autóctone do município de residência.                                   |
| FEBRE                     | VARCHAR        | Indica sintomas de Dengue no registro.                                                     |
| VOMITO                    | VARCHAR        | Indica sintomas de Vomito no registro.                                                     |
| NAUSEA                    | VARCHAR        | Indica sintomas de Nausea no registro.                                                     |
| SANGRAMENTO               | VARCHAR        | Indica sintomas de Sangramento no registro.                                                |
| PRECIPITACAO_TOTAL_MENSAL | DECIMAL (20,4) | Precipitação Total Mensal.                                                                 |
| TEMP_MEDIA_MENSAL         | DECIMAL (20,4) | Temperatura Média Mensal.                                                                  |
| TEMP_MAX_MENSAL           | DECIMAL (20,4) | Temperatura Máxima Mensal.                                                                 |
| TEMP_MIN_MENSAL           | DECIMAL (20,4) | Temperatura Mínima Mensal.                                                                 |
| VENTO_RAJADA_MAX_MENSAL   | DECIMAL (20,4) | Vento Rajada Máxima Mensal.                                                                |
| VENTO_VLC_MEDIA_MENSAL    | DECIMAL (20,4) | Vento Velocidade Média Mensal.                                                             |

## Versionamento

### Dataset V 1.0

- Primeira ingestão de dados no dataset
- Colunas consideradas:
    - DT_REF	
    - CD_MUNICIPIO	
    - NM_MUNICIPIO	
    - UF	
    - ID_OCUPA_N	
    - FEBRE	
    - HOSPITALIZACAO	
    - CLASSI_FIN	
    - CRITERIO	
    - DT_OBITO	
    - DT_ALRM	
    - DT_GRAV	
    - PRECIPITAO_TOTAL_MENSAL	
    - TEMP_MEDIA_MENSAL	
    - TEMP_MAX_MENSAL	
    - TEMP_MIN_MENSAL	
    - VENTO_RAJADA_MAX_MENSAL	
    - VENTO_VLC_MEDIA_MENSAL
- Dados capturado de origem SINAN e INMET.
- Cruzamento por DT_REF e CD_MUNICIPIO

### Dataset V 2.0

- Adicionada a coluna SK_DENGUE para garantir a integridade da tabela
- Tratamento por avg, max e min nos valores capturado mensalmente da origem INMET
- Aumento da volumetria dos dados considerando o histórico 2014-2024

### Dataset V 3.0

- Reprocessamento de 2016
- Ajuste nos calculos de média do INMET

### Dataset V 4.0

- Adicionando header no dataset

### Dataset V 5.0

- Removida coluna UF
- Adicionada colunas:
    - ID_REGIONA
    - ID_UNIDADE
    - RESULTADO_SORO
    - RESULTADO NS1
    - RESULTADO PCR
    - VOMITO
    - NAUSEA
    - SANGRAMENTO
    - DT_SORO
    - DT_NS1
    - DT_PCR
    - DT_ENCERRAMENTO
- Utilização da coluna ID_MUNICIP e DT_NOTIFIC do SINAN para trazer mais volume de dados populados
- Aumento da volumetria: de 1.7Mi para 4.8Mi de registros

### Dataset V 6.0

- Mudança de um único dataset para dois: dataset Codificada e Dataset Analitica
- Mudança no leyout da tabela
- Removida coluna NM_MUNICIPIO
- Transformação das seguintes colunas de string para códigos:
    - HOSPITALIZACAO	
    - CLASSIFICADOR	
    - CRITERIO	
    - RESULTADO_SORO	
    - RESULTADO_NS1	
    - RESULTADO_PCR	
    - AUTOCTONE	
    - FEBRE	
    - VOMITO	
    - NAUSEA	
    - SANGRAMENTO

### Codificada V 1.0

- Escopo final do Dataset V 6.0
- Casting mensal das colunas de data

### Analitica V 2.0

- Primeira ingestão de dados
- Origem Codifica V 1.0
- Adicionada coluna NM_MUNICIPIO
- Trasnformação das flags em strings
    
