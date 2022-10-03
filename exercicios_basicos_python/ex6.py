x = int(input("Informe um número inteiro maior que 2: "))
impares = [ ]

for i in range(0,x):
    if i%2==1:
        impares.append(i)     
       
print("Ímpares entre 0 e",x,": ",impares)