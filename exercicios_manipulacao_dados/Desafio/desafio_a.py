import pandas as pd

tabela = pd.read_csv('tabela_periodica.csv', encoding='UTF-8', sep=',')

propriedade = input("Informe uma das seguintes propriedade: Simbolo, Nome, NumeroAtomico, Linha, Coluna, EstadoFisico: ")

propriedades = ["Simbolo", "Nome", "NumeroAtomico", "Linha", "Coluna", "EstadoFisico"]

if propriedade in propriedades:
    print(tabela[propriedade])
else:
    print("Propriedade não encontrada")