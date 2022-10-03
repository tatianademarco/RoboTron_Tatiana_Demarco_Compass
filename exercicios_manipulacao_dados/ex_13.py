import pandas as pd

arquivo = pd.read_csv('arquivo_CSV.csv', encoding='UTF-8', sep=',')

arquivo["MovieAndYear"] = + arquivo["Movie"] + " " + arquivo['Year'].astype(str)
print(arquivo["MovieAndYear"])