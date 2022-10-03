import pandas as pd

arquivo = pd.read_csv('arquivo_CSV.csv', encoding='UTF-8', sep=',')

arquivo2 = arquivo[arquivo["Movie"] != "The Revenant"]

print(arquivo2["Movie"])