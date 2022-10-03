def calcular_media (parametro1, parametro2):
    media = (parametro1 + parametro2)/2
    return media

nota1 = int(input("Digite a primeira nota: "))
nota2 = int(input("Digite a segunda nota: "))

print("A média das notas é: ", calcular_media(nota1, nota2))