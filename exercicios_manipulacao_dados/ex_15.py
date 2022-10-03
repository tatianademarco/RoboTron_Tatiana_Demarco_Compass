import pandas as pd

arquivo = pd.read_csv('exercicios_manipulacao_dados/arquivo_CSV.csv', encoding='UTF-8', sep=',')

arquivo2 = arquivo[arquivo["Movie"] != "The Revenant"]

print(arquivo2["Movie"])