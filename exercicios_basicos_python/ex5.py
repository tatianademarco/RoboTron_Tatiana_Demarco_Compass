soma = 0
cont = 0

for i in range(0,20):
    X = int(input("Informe um valor: "))

    if X%2==0:
        soma = soma + X
        cont = cont + 1

media = soma/cont

print("Média aritmética dos valores pares: ",media)