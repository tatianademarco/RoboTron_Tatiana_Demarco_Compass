import pandas as pd

tabela = pd.read_csv('exercicios_manipulacao_dados/Desafio/tabela_periodica.csv', encoding='UTF-8', sep=',')

simbolo = str(input("Digite o símbolo de um elemento atômico: "))

print(tabela[tabela["Simbolo"] == simbolo])