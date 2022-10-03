import json

def retornar_json():
    with open ("campeonato.json", encoding="utf-8") as campeonato:
        json_partida = json.load(campeonato)
        return json_partida

json_retornado = retornar_json()

print(json_retornado)