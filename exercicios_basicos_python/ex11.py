inicio = int(input("Informe a hora inicial do jogo: "))
fim = int(input("Informe a hora final do jogo: "))

if inicio<fim:
    duracao = fim-inicio

elif inicio>fim:
    duracao = 24 - inicio + fim

elif inicio==fim:
    duracao = 24

print("O jogo durou",duracao,"hora(s)")