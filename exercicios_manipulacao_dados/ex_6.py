import json

def retornar_json():
    with open ("campeonato.json", encoding="utf-8") as campeonato:
        json_partida = json.load(campeonato)
        return json_partida

json_retornado = retornar_json()

print(json_retornado["edicao_atual"]["edicao_id"])
print(json_retornado["fase_atual"]["fase_id"])
print(json_retornado[ "rodada_atual"]["nome"])