# Dicionário de Dados

## Tabela Codificada

| COLUNA                  | DATATYPE       | DESCRICAO                                                                                  | CRITERIO                                                                                                       |
|-------------------------|----------------|--------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
|SK_DENGUE                | INT            | ID unico para cada registro da tabela.                                                     | Os registros possuem ordenação DT_REF, CD_MUNICIPIO.                                                           |
|DT_REF                   | DATE           | Data da notificação do registro. A data está convertida para uma visão mensal.             | A data está convertida para uma visão mensal.                                                                  |
|DT_INTERNACAO            | DATE           | Data de internação.                                                                        | A data está convertida para uma visão mensal.                                                                  |
|DT_OBITO                 | DATE           | Data de Óbito. A data está convertida para uma visão mensal.                               | A data está convertida para uma visão mensal.                                                                  |
|DT_ALARME                | DATE           | Data de Alarme. A data está convertida para uma visão mensal.                              | A data está convertida para uma visão mensal.                                                                  |
|DT_GRAVE                 | DATE           | Data de Gravidade. A data está convertida para uma visão mensal.                           | A data está convertida para uma visão mensal.                                                                  |
|DT_SORO                  | DATE           | Data da aplicação do Soro. A data está convertida para uma visão mensal.                   | A data está convertida para uma visão mensal.                                                                  |
|DT_NS1                   | DATE           | Data da aplicação do NS1. A data está convertida para uma visão mensal.                    | A data está convertida para uma visão mensal.                                                                  |
|DT_PCR                   | DATE           | Data da aplicação do PCR. A data está convertida para uma visão mensal.                    | A data está convertida para uma visão mensal.                                                                  |
|DT_ENCERRAMENTO          | DATE           | Data do encerramento do caso. A data está convertida para uma visão mensal.                | A data está convertida para uma visão mensal.                                                                  |
|CD_MUNICIPIO             | INT            | Código do Município. Código referente a tabela do IBGE.                                    | Verificar a tabela db_dengue.Geral.Municipio                                                                   |
|PROFISSAO                | INT            | Código da Profissão do registro. Código referente a tabela do IBGE.                        | Verificar a tabela db_dengue.Geral.Profissao                                                                   |
|HOSPITALIZACAO           | INT            | Ocorrencia de Hospitalização.                                                              | 0 - Não ocorreu Hospitalização <br> 1 - Ocorreu Hospitalização                                                 |
|CLASSIFICADOR            | INT            | Classificador do tipo de Dengue do registro.                                               | 0 - Descartado <br> 1 - Dengue <br> 2 - Dengue com sinais de alarme <br> 3 - Dengue Grave <br> 4 - Chikungunya |
|CRITERIO                 | INT            | Criterio Clínico do registro                                                               | 0 - Laboratorial <br> 1 - Clinico-Epidemiologico <br> 2 - Em Investigacao                                      | 
|RESULTADO_SORO           | INT            |
|RESULTADO_NS1            | INT            |
|RESULTADO_PCR            | INT            |
|AUTOCTONE                | INT            |
|FEBRE                    | INT            |
|VOMITO                   | INT            |
|NAUSEA                   | INT            |
|SANGRAMENTO              | INT            |
|PRECIPITACAO_TOTAL_MENSAL| DECIMAL (20,4) |
|TEMP_MEDIA_MENSAL        | DECIMAL (20,4) |
|TEMP_MAX_MENSAL          | DECIMAL (20,4) |
|TEMP_MIN_MENSAL          | DECIMAL (20,4) |
|VENTO_RAJADA_MAX_MENSAL  | DECIMAL (20,4) |
|VENTO_VLC_MEDIA_MENSAL   | DECIMAL (20,4) |
