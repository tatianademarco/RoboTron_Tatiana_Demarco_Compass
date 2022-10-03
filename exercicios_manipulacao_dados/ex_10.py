import pandas as pd

arquivo = pd.read_csv('arquivo_CSV.csv', encoding='UTF-8', sep=',')

print(arquivo.loc[9, ["Movie"]])