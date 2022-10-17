*** Settings ***
Documentation    Keywords e Variaveis para Ações do endpoint de Login
Library    RequestsLibrary
Resource    ./common.robot

*** Variables ***
${response.json()["message"]}
${response.json()["authorization"]}
&{payload}
${token_auth}

*** Keywords ***
POST Endpoint /login
    &{payload}    Create Dictionary    email=fulano@qa.com    password=teste
    ${response}    POST On Session    Serverest    /login    data=&{payload}
    Log To Console    Response: ${response.content}
    Set Global Variable    ${response}

Validar Ter Logado
    Should Be Equal    ${response.json()["message"]}    Login realizado com sucesso
    Should Not Be Empty    ${response.json()["authorization"]}

Fazer Login e Armazenar Token
   POST Endpoint /login
   Validar ter Logado
   ${token_auth}    Set Variable    ${response.json()["authorization"]}
   Log To Console    Token Salvo: ${token_auth}
   Set Global Variable    ${token_auth}

Logar Usuario Estatico Valido
    ${json}    Importar JSON Estatico    json_login_ex.json
    ${payload}    Set Variable    ${json["user_valido"]}
    Set Global Variable    ${payload}
    POST Endpoint /login