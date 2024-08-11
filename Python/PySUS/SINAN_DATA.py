from pysus.ftp.databases.sinan import SINAN
import pandas as pd

anos = []

for i in range(2014, 2024): # Anos para capturar dados no for loop
    anos.append(i)

sinan = SINAN().load() # Carregar dados SINAN

files = sinan.get_files(dis_code=["DENG"], year=anos) # Extração dos dados SINAN a partir do ano

ano = 15 # hard code pq sim

# Transformação de arquivos, afinal o DATASUS é GENTE BOA e envia os dados em .DBC QUE GENIALIDADE!!!

for dbc in range(0, len(files)):
    print("Baixando ano: ", ano)
    parquet = files[dbc].download()

    print("Tranformando para parquet")

    parquet = pd.read_parquet(f'DENGBR{ano}.parquet')

    df = parquet[ # Filtrando apenas colunas necessarias usando o pandas
        [
    'ID_AGRAVO',
    'DT_INVEST',
    'ID_OCUPA_N',
    'FEBRE',
    'HOSPITALIZ',
    'UF',
    'MUNICIPIO',
    'COUFINF',
    'COPAISINF',
    'COMUNINF',
    'CLASSI_FIN',
    'CRITERIO',
    'DT_OBITO',
    'DT_ALRM',
    'DT_GRAV'
        ]
    ]

    print("Tranformando para csv")

    df.to_csv(f'DENGBR{ano}.csv', sep=';') # Isso aqui funcionou nao sei como porque o .parquet é horrivel de mexer.

    ano += 1
