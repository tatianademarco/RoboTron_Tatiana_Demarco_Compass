import json

def retornar_json():
    with open ("exercicios_manipulacao_dados/partida.json", encoding="utf-8") as partida:
        json_partida = json.load(partida)
        return json_partida

json_retornado = retornar_json()

estadio = json_retornado["copa-do-brasil"][0]["estadio"]["nome_popular"]
placar = json_retornado["copa-do-brasil"][0]["placar"]
status = json_retornado["copa-do-brasil"][0]["status"]

print(estadio)
print(placar)
print(status)