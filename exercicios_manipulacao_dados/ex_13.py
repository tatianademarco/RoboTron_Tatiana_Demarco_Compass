import pandas as pd

arquivo = pd.read_csv('exercicios_manipulacao_dados/arquivo_CSV.csv', encoding='UTF-8', sep=',')

arquivo["MovieAndYear"] = + arquivo["Movie"] + " " + arquivo['Year'].astype(str)
print(arquivo["MovieAndYear"])