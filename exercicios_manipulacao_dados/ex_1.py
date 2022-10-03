import json

def retornar_json():
    with open ("partida.json", encoding="utf-8") as partida:
        json_partida = json.load(partida)
        print(json_partida)
        return json_partida

json_retornado = retornar_json()

