lista_valores = [ ]

for i in range(0,15):
    valor = input("Insira um valor: ")
    lista_valores.insert(i,valor)

print(*lista_valores[::-1])
