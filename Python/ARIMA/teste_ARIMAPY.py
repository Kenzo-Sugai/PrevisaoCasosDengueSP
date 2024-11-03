import pandas as pd
import numpy as np
import pmdarima as pm
from sklearn.metrics import mean_squared_error
from statsmodels.tsa.arima.model import ARIMA
import matplotlib.pyplot as plt

df = pd.read_csv("Python\ARIMA\dataset_casos_mensais_publicacao.csv", 
                    parse_dates=['dt_notificacao'],
                    usecols=['dt_notificacao', 'cd_municipio', 'qntd_casos', 'temp_media_mensal']
                )
df = df.sort_values('dt_notificacao')   

df_sp = df[
          (df['cd_municipio'] == 355030) 
        & (df['dt_notificacao'] >= '2018-03-01') 
        & (df['dt_notificacao'] <= '2023-12-01')
        ]

df_sp.set_index('dt_notificacao', inplace=True)

df_sp.fillna(method='ffill', inplace=True)

train_size = int(len(df_sp) * 0.7)
train = df_sp.iloc[:train_size]
test = df_sp.iloc[train_size:]

y_train = train['qntd_casos']
y_test = test['qntd_casos']
exog_train = train['temp_media_mensal']
exog_test = test['temp_media_mensal']

model = ARIMA(y_train, order=(1, 1, 1), exog=exog_train)
model_fit = model.fit()

# Fazer previsões
y_pred = model_fit.predict()

fig, ax = plt.subplots(figsize=(13, 5))

y_pred.plot(ax=ax, label='ARIMA')
y_train.plot(ax=ax, label='TREINO')
y_test.plot(ax=ax, label='TESTE')

ax.legend()