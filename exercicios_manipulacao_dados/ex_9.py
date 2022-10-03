import pandas as pd

col_age = pd.read_csv('exercicios_manipulacao_dados/arquivo_CSV.csv', encoding='UTF-8', sep=',', usecols=['Age'])

print(col_age)