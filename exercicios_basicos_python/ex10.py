lista_frutas = ["maça", "banana", "pera"]
lista2_frutas = [ ]

for i in range(0,3):
    fruta = input("Digite uma fruta: ")
    lista2_frutas.insert(i,fruta)

if set(lista_frutas)==set(lista2_frutas):
    print("As listas são iguais")
else:
    print("As listas são diferentes")
