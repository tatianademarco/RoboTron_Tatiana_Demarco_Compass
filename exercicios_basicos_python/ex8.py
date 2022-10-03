def fatorial(parametro):
    fat = 1
    for i in range(2,parametro+1):
        fat = fat*i
    return fat

def tabuada(parametro):
    for i in range(1,11):
        print(parametro, " X ", i, " = ", parametro*i)

X = int(input("Informe um valor: "))

if X%2==0:
    print("O fatorial de ",X," é: ", fatorial(X))
else:
    tabuada(X)
