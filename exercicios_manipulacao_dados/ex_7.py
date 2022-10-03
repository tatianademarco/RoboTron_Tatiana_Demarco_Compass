import json

def retornar_json():
    with open ("exercicios_manipulacao_dados/campeonato.json", encoding="utf-8") as campeonato:
        json_partida = json.load(campeonato)
        return json_partida

json_retornado = retornar_json()

for chave in json_retornado:
    print(chave)