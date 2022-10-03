idade = int(input("Idade em dias: "))

print(int(idade/365), "ano(s)")
print(int((idade%365)/30), "mes(es)")
print(int((idade%365)%30), "dia(s)")