import pandas as pd

col_age = pd.read_csv('arquivo_CSV.csv', encoding='UTF-8', sep=',', usecols=['Age'])

print(col_age)