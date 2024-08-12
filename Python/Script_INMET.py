import pandas as pd
import os

ano = 2024

def toDataframe(csv):
    
    string_list = csv.split("_")

    municipio = string_list[4]

    columns_alias = {
        'Data': 'DT_REF', 
        'MUNICIPIO': 'MUNICIPIO', 
        'Hora UTC': 'HR_REF_UTC', 
        'PRECIPITAÇÃO TOTAL, HORÁRIO (mm)': 'PRECIPITACAO_TOTAL',
        'TEMPERATURA DO AR - BULBO SECO, HORARIA (°C)': 'TEMPERATURA',
        'TEMPERATURA MÁXIMA NA HORA ANT. (AUT) (°C)': 'TEMP_MAX_HR_ANT', 
        'TEMPERATURA MÍNIMA NA HORA ANT. (AUT) (°C)': 'TEMP_MIN_HR_ANT', 
        'VENTO, RAJADA MAXIMA (m/s)': 'VENTO_RAJADA_MAX',
        'VENTO, VELOCIDADE HORARIA (m/s)': 'VENTO_VLC_HR'
        }

    columns_select = [
        'Data', 
        'MUNICIPIO', 
        'Hora UTC', 
        'PRECIPITAÇÃO TOTAL, HORÁRIO (mm)',
        'TEMPERATURA DO AR - BULBO SECO, HORARIA (°C)',
        'TEMPERATURA MÁXIMA NA HORA ANT. (AUT) (°C)', 
        'TEMPERATURA MÍNIMA NA HORA ANT. (AUT) (°C)', 
        'VENTO, RAJADA MAXIMA (m/s)',
        'VENTO, VELOCIDADE HORARIA (m/s)'
    ]

    df = pd.read_csv(csv, skiprows=8, encoding='latin-1', on_bad_lines='skip', delimiter=';')
    
    df['MUNICIPIO'] = municipio

    df = df[columns_select]

    df = df.rename(columns=columns_alias)

    return df

path = f'__PATH__//{ano}'

files_dir = os.listdir(path)

dataframes_list = []

for i in files_dir:
    if i[:11] == 'INMET_SE_SP':
        print(i)
        df = toDataframe(path + "//" + i)
        dataframes_list.    append(df)
        
inmet_dataframe = pd.concat(dataframes_list)

inmet_dataframe.to_csv(f'INMET_{ano}.csv')